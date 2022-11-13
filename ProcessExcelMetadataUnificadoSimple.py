import openpyxl as xl
from openpyxl.cell.read_only import EmptyCell
import util

iden_file_names = ['1_IDEN2016.txt', '1_IDEN2017.txt', '1_IDEN2018.txt', '1_IDEN2019.txt']
renta_file_names = ['2_Renta2016.txt', '2_Renta2017.txt', '2_Renta2018.txt', '2_Renta2019.txt']
renta_imputacion_file_names = ['3_RentaImputacion2016.txt', '3_RentaImputacion2017.txt', '3_RentaImputacion2018.txt',
                               '3_RentaImputacion2019.txt']
patrimonio_file_names = ['5_Patrimonio2016.txt', '5_Patrimonio2017.txt', '5_Patrimonio2018.txt', '5_Patrimonio2019.txt']
mod190_file_names = ['7_M190_2016.txt', '7_M190_2017.txt', '7_M190_2018.txt', '7_M190_2019.txt']

inputExcel = './doc/00_DiseñoRegistro_v3.xlsx'
output_folder = './out_unificado/'
data_folder = '/media/david/5394E4122138C590/Panel/'
database_name = 'panel_hogares2'

annios = [2016, 2017, 2018, 2019]
file_name_def = output_folder + '/unificado/create_table_as_select.sql'

colores = {'M190': '#4469a6', 'PATRIM': '#0b4d90', 'RENTA': '#3399ff', 'tbl_unificado_hogares': '#4469a6'}
# TODO
dimension_names = {'IDENPER':'Identificador persona', 'IDENHOG':'Identificador hogar',
                    'CCAA':'Comunidad autónoma', 'CPRO':'Provincia', 'CMUN':'Municipio','SECCION': 'Sección censal',
                    'TIPOHOG':'Tipo de hogar', 'TRAMO':'Tramo',
                    'FACTORCAL':'FactorCal', 'FACTORCALNACI':'FactoNaci',
                    'FACTORDIS':'FactorDis', 'FACTORDISNACI':'FactorNaci',
                    'NACIO':'Nacionalidad',
                    'TIPCONTRIB':'Tipo contrib',
                    'IDENPERS_CONY':'Identificador persona cony'
                    }


def getMetadata(file_name, worksheet):
    start_col, start_row = util.getStartColRow(worksheet, file_name)
    if start_col < 0 or start_row < 0:
        return None
    metadata = util.processMetadata(worksheet, start_col, start_row)
    return metadata


def getTableNameAndPrefix(title, num_annio):
    file_name = ''
    prefix = ''

    if title == '1_IDEN':
        file_name = iden_file_names[num_annio]
        prefix = 'i'
    elif title == '2_Renta':
        file_name = renta_file_names[num_annio]
        prefix = 'r'
    elif title == '3_RentaImputación':
        file_name = renta_imputacion_file_names[num_annio]
        prefix = 'ri'
    elif title == '5_Patrimonio':
        file_name = patrimonio_file_names[num_annio]
        prefix = 'p'
    elif title == '7_Mod190':
        file_name = mod190_file_names[num_annio]
        prefix = 'm'
    return file_name, prefix


# escribe create table as select
def writeCreateAsSelect(worksheets, var_comunes):
    with open(file_name_def, 'w') as f:
        f.write('USE ' + database_name + ';\n\n')
        f.write('CREATE TABLE tbl_unificado_hogares \n')
        f.write('AS \n')

        for annio in annios:
            num_annio = annio - 2016
            table_names = []
            prefix_names = []


            if annio == annios[0]:
                strSelect = 'SELECT\n'
            else:
                strSelect = 'UNION ALL\nSELECT\n'

            strSelect += '\t' + str(annio) + ',\n'

            for dimension_name in dimension_names:
                strSelect += '\ti_' + str(annio) + '.' + dimension_name + ',\n'

            for worksheet in worksheets:
                print('Sheet: ' + worksheet.title)
                file_name, prefix = getTableNameAndPrefix(worksheet.title, num_annio)
                if len(file_name) == 0:
                    continue

                table_metadata = getMetadata(file_name, worksheet)
                if table_metadata is None:
                    continue

                for metadata_item in table_metadata:
                    var_name = metadata_item.get('var_name')
                    if 'IDEN' not in file_name and 'IDENPER' not in var_name and 'IDENHOG' not in var_name and var_name in var_comunes:
                        strSelect += '\t' + prefix + '_' + str(annio) + '.' + var_name + ',\n'

                if 'IDEN' not in file_name:
                    table_names.append('tbl_' + util.getCanonicalName(file_name) + ' as ' + prefix + '_' + str(annio))
                    prefix_names.append(prefix)

            f.write(strSelect[:-2] + '\nFROM tbl_IDEM' + str(annio) + ' as i_' + str(annio) + '\n')

            cnt = 0
            for table_name in table_names:
                f.write('LEFT JOIN ' + table_name + '\n')
                prefix_name = prefix_names[cnt]
                f.write('ON i_' + str(annio) + '.IDENPER = ' + prefix_name + '_' + str(annio) + '.IDENPER\n')
                cnt += 1

        f.write(';\n')


# obtiene todos los metadatos y busca las variables comunes
def getAllVarComunes():
    metadata = []
    common_metadata = []
    for annio in annios:
        num_annio = annio - 2016
        for worksheet in workbook.worksheets:
            file_name, prefix = getTableNameAndPrefix(worksheet.title, num_annio)
            if len(file_name) == 0:
                continue
            table_metadata = getMetadata(file_name, worksheet)
            if table_metadata is None:
                continue
            metadata.extend(table_metadata)

    var_comunes = util.getVarComunes(metadata, annios)

    for metadata_item in metadata:
        if metadata_item.get('var_name') in var_comunes:
            common_metadata.append(metadata_item)

    return var_comunes, common_metadata


# generar esquema de Mondrian
def createMondrianSchema(var_comunes, metadata):
    measures = []
    dimensiones = []

    head = """
    <?xml version="1.0" encoding="ISO-8859-1" standalone="yes"?>
    <Schema name="hogares" measuresCaption="Variables de explotaci&#243;n">
    <Cube name="anuarioTotal" visible="true" cache="true" enabled="true" caption="Anuario estad&#237;stico">
    """

    foot = """\n\n	</Cube>
    </Schema>"""

    tabla = 'tbl_unificado_hogares'

    for metadata_item in metadata:

        if metadata_item['var_name'] in dimension_names.keys():
            descripcion = dimension_names.get(metadata_item['var_name'])
            dimension = f'''
            <Dimension name="{metadata_item['var_name']}" caption="{descripcion}" description="{descripcion}">
                <Hierarchy hasAll="false" allMemberName="total">
                    <Level caption="{descripcion}" name="{metadata_item['var_name']}" column="{metadata_item['var_name']}" uniqueMembers="true"/>                    
                </Hierarchy>
            </Dimension>
            '''
            dimensiones.append(dimension)
        else:
            descripcion = util.normalizeName(metadata_item['var_desc'])
            measure = f'''\t\t<Measure name="{metadata_item['var_name']}"  column="{metadata_item['var_name']}"  formatString="#,###;-#,###;0" aggregator="sum" caption="{metadata_item['var_name']}" description="{descripcion}"/>'''
            # TODO decimals
            measures.append(measure)

    esquema = head + "\n".join(dimensiones) + "\n".join(measures) + foot
    return esquema




# process worksheets
workbook = xl.load_workbook(inputExcel, keep_links=False, read_only=True, data_only=True)

# writeCreateAsSelect
var_comunes, common_metadata = getAllVarComunes()
writeCreateAsSelect(workbook.worksheets, var_comunes)


# createMondrianSchema
esquema = createMondrianSchema(var_comunes, common_metadata)
#print(esquema)

with open("out_unificado/hogares.xml", 'w') as f:
    f.write(esquema + "\n")
