import openpyxl as xl
from openpyxl.cell.read_only import EmptyCell
import util


iden_file_names  = ['1_IDEN2016.txt', '1_IDEN2017.txt', '1_IDEN2018.txt', '1_IDEN2019.txt']
renta_file_names = ['2_Renta2016.txt', '2_Renta2017.txt', '2_Renta2018.txt', '2_Renta2019.txt']
renta_imputacion_file_names = ['3_RentaImputacion2016.txt', '3_RentaImputacion2017.txt', '3_RentaImputacion2018.txt', '3_RentaImputacion2019.txt']
patrimonio_file_names = ['5_Patrimonio2016.txt', '5_Patrimonio2017.txt', '5_Patrimonio2018.txt', '5_Patrimonio2019.txt']
mod190_file_names = ['7_M190_2016.txt', '7_M190_2017.txt', '7_M190_2018.txt', '7_M190_2019.txt']

inputExcel = './doc/00_DiseñoRegistro_v3.xlsx'
output_folder = './out_unificado/'



def writeLoadData(metadata, original_file_name, annio):
    file_name_def = output_folder + str(annio) + '/load_' + original_file_name + '.sql'
    tablename = 'tbl_' + file_name

    with open(file_name_def, 'w') as f:
        f.write('USE test;\n\n')
        f.write('LOAD DATA LOCAL INFILE \'' + original_file_name + '\'\n')
        f.write('INTO TABLE ' + tablename + '\n')
        f.write('(@row)\n')
        f.write('SET \n')

        for metadata_item in metadata:
            var_name = metadata_item.get('var_name')
            var_pos_inicial = metadata_item.get('var_pos_inicial')
            var_long = metadata_item.get('var_long')

            if metadata_item == metadata[-1]:
                f.write('\t' + var_name + ' = TRIM(SUBSTR(@row,' + str(var_pos_inicial) + ', ' + str(var_long) + '))\n')
            else:
                f.write('\t' + var_name + ' = TRIM(SUBSTR(@row,' + str(var_pos_inicial) + ', ' + str(var_long) + ')),\n')

        f.write(';')



def writeCreateTable(metadata, original_file_name, annio):
    #file_name = getCanonicalName(original_file_name)
    file_name_def = output_folder + str(annio) + '/create_table_' + original_file_name + '.sql'
    tablename = 'tbl_' + file_name

    with open(file_name_def, 'w') as f:
        f.write('USE test;\n\n')
        f.write('DROP TABLE IF EXISTS ' + tablename + ';\n\n')
        f.write('CREATE TABLE ' + tablename + '(\n')

        for metadata_item in metadata:
            var_name = metadata_item.get('var_name')
            var_tipo = util.getType(metadata_item.get('var_tipo'))
            var_long = metadata_item.get('var_long')
            var_decimales = metadata_item.get('var_decimales')

            strLength = ''
            if var_decimales is not None:
                strLength = str(var_long) + ','+ str(var_decimales)
            else:
                strLength = str(var_long)

            if metadata_item == metadata[-1]:
                f.write('\t' + var_name + ' ' + var_tipo + '(' + strLength + ') DEFAULT NULL\n')
                # TODO var_desc
            else:
                f.write('\t' + var_name + ' ' + var_tipo + '(' + strLength + ') DEFAULT NULL,\n')

        f.write(') engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;')



def getMetadata(file_name, worksheet):
    start_col, start_row = util.getStartColRow(worksheet, file_name)
    if start_col < 0 or start_row < 0:
        return None
    metadata = util.processMetadata(worksheet, start_col, start_row)
    return metadata

def getTableNameAndPrefix(title, num_annio):
    file_name = ''
    prefix = ''
    if worksheet.title == '1_IDEN':
        file_name = iden_file_names[num_annio]
        prefix = 'IDEN'
    elif worksheet.title == '2_Renta':
        file_name = renta_file_names[num_annio]
        prefix = 'RENTA'
    elif worksheet.title == '3_RentaImputación':
        file_name = renta_imputacion_file_names[num_annio]
        prefix = 'RENTA_IMPUT'
    elif worksheet.title == '5_Patrimonio':
        file_name = patrimonio_file_names[num_annio]
        prefix = 'PATRIM'
    elif worksheet.title == '7_Mod190':
        file_name = mod190_file_names[num_annio]
        prefix = 'M190'
    return file_name, prefix




# process worksheets
workbook = xl.load_workbook(inputExcel, keep_links=False, read_only=True, data_only=True)

metadata = []
annios = [2016, 2017, 2018, 2019]
#annios = [2016]
global_offset = 0
processed_file_names = []


def writePasteCmd(processed_file_names, annio):
    file_name = output_folder + str(annio) + '/paste_cmd' + str(annio) + '.sh'

    with open(file_name, 'w') as f:
        f.write('# dos2unix *.txt\n')
        f.write('# dos2unix *.TXT\n')
        f.write('paste -d"\\0" ')
        for processed_file_name in processed_file_names:
            f.write(' ' + processed_file_name)
        f.write(' > ' + str(annio) + '_unificado.txt')


var_comunes={}
for annio in annios:
    for worksheet in workbook.worksheets:
        num_annio = annio - 2016

        print('Sheet: ' + worksheet.title)
        file_name, prefix = getTableNameAndPrefix(worksheet.title, num_annio)
        if len(file_name) == 0:
            continue

        table_metadata = getMetadata(file_name, worksheet)
        if table_metadata is None:
            continue
        table_metadata = util.updateOffset(table_metadata, global_offset)
        metadata.extend(table_metadata)

        reg_size = util.getRegSize(table_metadata)
        global_offset += reg_size

        processed_file_names.append(file_name)

    file_name = 'unificado_' + str(annio)
    writeCreateTable(metadata, file_name, annio)
    writeLoadData(metadata, file_name, annio)
    writePasteCmd(processed_file_names, annio)

# ==========================================================
#    Generar tabla Unificada (select union de las anuales)
# ==========================================================

# Contabiliza apariciones de cada variable
for var in metadata:
    key = (var['var_name'],var['var_desc'])
    if key in var_comunes:
        var_comunes[key]['contador'] += 1
    else:
        var_comunes[key]=var
        var_comunes[key]['contador'] = 1

# Imprime las que no son comunes a los n años
print("VARIABLES QUE NO APARECEN LOS N AÑOS:")
for key in var_comunes:
    if var_comunes[key]['contador']!=len(annios):
        print(key, var_comunes[key]['contador'])
print("\n\n")

# Genera consulta SQL para consolidar en una unica tabla los campos comunes a las anuales.
fields = []
for key in var_comunes:
    if var_comunes[key]['contador']==len(annios):
        fields.append(var_comunes[key]['var_name'])

fields = ",".join(sorted(fields))
tablas = [f"tbl_{a}_hogares" for a in annios]
tablas = " UNION ALL ".join([f"SELECT * FROM {t}" for t in tablas ])
sql = f"CREATE TABLE tbl_unificado_hogares AS SELECT {fields} FROM ({tablas});"

# Escribe SQL UNION ALL a fichero
with open("out_unificado/create_global_hogares.sql", 'w') as f:
     f.write(sql+"\n")


# ==========================================================
#                Generar Esquema de Mondrian)
# ==========================================================
colores={'M190': '#4469a6', 'PATRIM': '#0b4d90', 'RENTA': '#3399ff'}

measures=[]
dimensiones=[]
head="""
<?xml version="1.0" encoding="ISO-8859-1" standalone="yes"?>
<Schema name="hogares" measuresCaption="Variables de explotaci&#243;n">
<Cube name="anuarioTotal" visible="true" cache="true" enabled="true" caption="Anuario estad&#237;stico">
"""

foot="""\n\n	</Cube>
</Schema>"""

for var in metadata:
    key = (var['var_name'], var['var_desc'])
    if var_comunes[key]['contador']!=len(annios): continue

    v = var_comunes[key]
    tabla = v['var_name'].split("_")[0]

    if tabla == 'IDEN':
        dimension = f'''
		<Dimension name="{tabla}" caption="{tabla}" description="{tabla}">
		  <Hierarchy hasAll="false" allMemberName="total">
			<Level caption="{tabla}" name="{v['var_name']}" column="{v['var_name']}" uniqueMembers="true"  captionColumn="columnName_es">
			</Level>
		  </Hierarchy>
		</Dimension>
        '''
        dimensiones.append(dimension)

    else:
        measure=f'''
        <Measure name="{v['var_name']}"  column="{v['var_name']}"  formatString="#,###;-#,###;0" aggregator="sum" caption="{var['var_name']}" description="{var['var_desc']}">
                <CalculatedMemberProperty name="DISPLAY_FOLDER" value ="{tabla}|color:{colores[tabla]}"/>
        </Measure>
        '''
        measures.append(measure)
        
esquema = head+"\n"+"\n".join(dimensiones)+"\n".join(measures)+foot
print(esquema)
print(dimension)

# Escribe SQL UNION ALL a fichero
with open("out_unificado/hogares.xml", 'w') as f:
     f.write(esquema+"\n")
