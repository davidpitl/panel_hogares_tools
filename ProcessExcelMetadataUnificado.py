import openpyxl as xl
from openpyxl.cell.read_only import EmptyCell



iden_file_names  = ['11_IDEN2016.TXT', '11_IDEN2017.TXT', '11_IDEN2018.TXT', '11_IDEN2019.TXT']
renta_file_names = ['2_Renta2016.txt', '2_Renta2017.txt', '2_Renta2018.txt', '2_Renta2019.txt']
renta_imputacion_file_names = ['3_RentaImputacion2016.txt', '3_RentaImputacion2017.txt', '3_RentaImputacion2018.txt', '3_RentaImputacion2019.txt']
irpf_file_names = ['4_IRPF2016.txt', '4_IRPF2017.txt', '4_IRPF2018.txt', '4_IRPF2019.txt']
patrimonio_file_names = ['5_Patrimonio2016.txt', '5_Patrimonio2017.txt', '5_Patrimonio2018.txt', '5_Patrimonio2019.txt']
mod714_file_names = ['6_M714_2016.txt', '6_M714_2017.txt', '6_M714_2018.txt', '6_M714_2019.txt']
mod190_file_names = ['7_M190_2016.txt', '7_M190_2017.txt', '7_M190__2019.txt', '7_M190_2019.txt']
irpf_rrii_file_names = ['8_IRPF2016_RRII.txt', '8_IRPF2017_RRII.txt', '8_IRPF2018_RRII.txt', '8_IRPF2019_RRII.txt']
irpf_aaee_ed_file_names = ['9_IRPF2016_AAEE_ED.txt', '9_IRPF2017_AAEE_ED.txt', '9_IRPF2018_AAEE_ED.txt', '9_IRPF2019_AAEE_ED.txt']
irpf_aaee_eobj_file_names = ['9_IRPF2016_AAEE_EOBJ.txt', '9_IRPF2017_AAEE_EOBJ.txt', '9_IRPF2018_AAEE_EOBJ.txt', '9_IRPF2019_AAEE_EOBJ.txt']
irpf_aaee_eobja_file_names = ['9_IRPF2016_AAEE_EOBJA.txt', '9_IRPF2017_AAEE_EOBJA.txt', '9_IRPF2018_AAEE_EOBJA.txt', '9_IRPF2019_AAEE_EOBJA.txt']


inputExcel = './doc/00_DiseñoRegistro.xlsx'
output_folder = './out_unificado/'


def getStartColumn(worksheet, cell_content):
    for current_row in worksheet.iter_rows(min_row=0, max_row=worksheet.max_row):
        # check EmptyRow and EmptyCell
        if current_row is not None and len(current_row) > 0:
            num_col = 0
            for cell in current_row:
                if cell is not None and type(cell) is not EmptyCell:
                    if cell_content in str(cell.value):
                        return num_col
                num_col += 1
    return -1

def getStartRow(worksheet, start_col):
    num_row = 0
    for current_row in worksheet.iter_rows(min_row=0, max_row=worksheet.max_row):
        # check EmptyRow and EmptyCell
        if current_row is not None and len(current_row) > 0:
            num_col = 0
            for cell in current_row:
                if num_col >= start_col:
                    if cell is not None and type(cell) is not EmptyCell:
                        if 'Posición inicial' in str(cell.value):
                            return num_row
                num_col += 1
        num_row += 1
    return -1


def processMetadataRow(current_row, start_col, prefix):
    #{'var_name': 'IDENPER', 'var_pos_inicial': 1, 'var_tipo': 'Num', 'var_long': 11, 'var_decimales': None, 'var_desc': 'Identificador único de persona'}

    metadataMap = {}

    var_name = current_row[start_col + 1]
    metadataMap['var_name'] = var_name.value

    var_pos_inicial = current_row[start_col]
    metadataMap['var_pos_inicial'] = var_pos_inicial.value

    var_tipo = current_row[start_col + 2]
    metadataMap['var_tipo'] = var_tipo.value

    var_long = current_row[start_col + 3]
    metadataMap['var_long'] = var_long.value

    var_decimales = current_row[start_col + 4]
    metadataMap['var_decimales'] = var_decimales.value

    var_desc = current_row[start_col + 5]
    metadataMap['var_desc'] = var_desc.value

    if var_tipo.value is None or var_name.value is None or var_tipo.value is None or var_long.value is None:
        return None

    metadataMap['var_name'] = prefix + '_' + metadataMap['var_name']

    return metadataMap


def processMetadata(worksheet, start_col, start_row, prefix):
    metadata = []
    num_row = 0
    for current_row in worksheet.iter_rows(min_row=0, max_row=worksheet.max_row):
        cell = current_row[start_col]
        if cell is not None and type(cell) is not EmptyCell and len(str(cell.value)) > 0 and num_row > start_row:
            metadataRow = processMetadataRow(current_row, start_col, prefix)
            if metadataRow is not None:
                metadata.append(metadataRow)
        num_row += 1
    return metadata


def getType(type_name):
    if type_name == 'Num':
        return 'NUMERIC'
    elif type_name == 'Char':
        return 'VARCHAR'
    return 'VARCHAR'

def getCanonicalName(file_name):
    offset = file_name.find('_') + 1
    file_name = file_name[offset:]
    file_name = file_name[:-4]
    return file_name


def writeLoadData(metadata, original_file_name, annio):
    file_name = getCanonicalName(original_file_name)
    file_name_def = output_folder + str(annio) + '/load_' + file_name + '.sql'
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
    file_name = getCanonicalName(original_file_name)
    file_name_def = output_folder + str(annio) + '/create_table_' + file_name + '.sql'
    tablename = 'tbl_' + file_name

    with open(file_name_def, 'w') as f:
        f.write('USE test;\n\n')
        f.write('DROP TABLE IF EXISTS ' + tablename + ';\n\n')
        f.write('CREATE TABLE ' + tablename + '(\n')

        for metadata_item in metadata:
            var_name = metadata_item.get('var_name')
            var_tipo = getType(metadata_item.get('var_tipo'))
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


def getStartColRow(worksheet, file_name):
    start_col = getStartColumn(worksheet, file_name)
    if start_col < 0:
        print('ERROR reading header (start_col): ' + file_name)
    start_row = getStartRow(worksheet, start_col)
    if start_row < 0:
        print('ERROR reading header (start_col): ' + file_name)

    # print(' start col:' + str(start_col))
    # print(' start row:' + str(start_row))

    return start_col, start_row


def getMetadata(file_name, worksheet, prefix):
    start_col, start_row = getStartColRow(worksheet, file_name)
    if start_col < 0 or start_row < 0:
        return None
    metadata = processMetadata(worksheet, start_col, start_row, prefix)
    return metadata

def getRegSize(metadata):
    size = 0
    for metadata_item in metadata:
        size += metadata_item['var_pos_inicial']
    return size

def updateOffset(metadata, global_offset):
    for metadata_item in metadata:
        metadata_item['var_pos_inicial'] = metadata_item['var_pos_inicial'] + global_offset

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
    elif worksheet.title == '4_IRPF':
        file_name = irpf_file_names[num_annio]
        prefix = 'IRPF'
    elif worksheet.title == '5_Patrimonio':
        file_name = patrimonio_file_names[num_annio]
        prefix = 'PATRIM'
    elif worksheet.title == '6_Mod714':
        file_name = mod714_file_names[num_annio]
        prefix = 'M714'
    elif worksheet.title == '7_Mod190':
        file_name = mod190_file_names[num_annio]
        prefix = 'M190'
    elif worksheet.title == '8_IRPF_RRII':
        file_name = irpf_rrii_file_names[num_annio]
        prefix = 'IRPF_RRII'
    elif worksheet.title == '9_IRPF_AAEE_ED':
        file_name = irpf_aaee_ed_file_names[num_annio]
        prefix = 'IRPF_AAEE_ED'
    elif worksheet.title == '9_IRPF_AAEE_EOBJ':
        file_name = irpf_aaee_eobj_file_names[num_annio]
        prefix = 'IRPF_AAEE_EOBJ'
    elif worksheet.title == '9_IRPF_AAEE_EOBJA':
        file_name = irpf_aaee_eobja_file_names[num_annio]
        prefix = 'IRPF_AAEE_EOBJA'
    return file_name, prefix




# process worksheets
workbook = xl.load_workbook(inputExcel, keep_links=False, read_only=True, data_only=True)

metadata = []
#annios = [2016, 2017, 2018, 2019]
annios = [2016]
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



for annio in annios:
    for worksheet in workbook.worksheets:
        num_annio = annio - 2016

        print('Sheet: ' + worksheet.title)
        file_name, prefix = getTableNameAndPrefix(worksheet.title, num_annio)
        if len(file_name) == 0:
            continue

        table_metadata = getMetadata(file_name, worksheet, prefix)
        if table_metadata is None:
            continue
        table_metadata = updateOffset(table_metadata, global_offset)
        metadata.extend(table_metadata)

        reg_size = getRegSize(table_metadata)
        global_offset += reg_size

        processed_file_names.append(file_name)

    file_name = 'unificado_' + str(annio)
    writeCreateTable(metadata, file_name, annio)
    writeLoadData(metadata, file_name, annio)
    writePasteCmd(processed_file_names, annio)













