import openpyxl as xl
from openpyxl.cell.read_only import EmptyCell




iden_file_names  = ['1_IDEN2016.txt', '1_IDEN2017.txt', '1_IDEN2018.txt', '1_IDEN2019.txt']
renta_file_names = ['2_Renta2016.txt', '2_Renta2017.txt', '2_Renta2018.txt', '2_Renta2019.txt']
renta_imputacion_file_names = ['3_RentaImputacion2016.txt', '3_RentaImputacion2017.txt', '3_RentaImputacion2018.txt', '3_RentaImputacion2019.txt']
patrimonio_file_names = ['5_Patrimonio2016.txt', '5_Patrimonio2017.txt', '5_Patrimonio2018.txt', '5_Patrimonio2019.txt']
mod190_file_names = ['7_M190_2016.txt', '7_M190_2017.txt', '7_M190_2018.txt', '7_M190_2019.txt']


inputExcel = './doc/00_DiseñoRegistro_v3.xlsx'
output_folder = './out_unificado/'
data_folder = '/media/david/5394E4122138C590/Panel/'
database_name = 'panel_hogares2'


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

def getStartRow(worksheet, start_col, start_row):
    num_row = 0
    for current_row in worksheet.iter_rows(min_row=0, max_row=worksheet.max_row):
        # check EmptyRow and EmptyCell
        if current_row is not None and len(current_row) > 0:
            num_col = 0
            for cell in current_row:
                if num_col >= start_col and num_row >= start_row:
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
    #file_name = getCanonicalName(original_file_name)
    file_name_def = output_folder + str(annio) + '/load_' + file_name + '.sql'
    tablename = 'tbl_' + file_name

    with open(file_name_def, 'w') as f:
        original_file_name = data_folder + str(annio) + '/' + original_file_name
        f.write('USE ' + database_name + ';\n\n')
        f.write('LOAD DATA LOCAL INFILE \'' + original_file_name + '\'\n')
        f.write('INTO TABLE ' + tablename + ' FIELDS TERMINATED BY \'\';\n')




def writeCreateTable(metadata, original_file_name, annio):
    file_name_def = output_folder + str(annio) + '/create_table_' + original_file_name + '.sql'
    tablename = 'tbl_' + original_file_name

    with open(file_name_def, 'w') as f:
        f.write('USE ' + database_name + ';\n\n')
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


def getStartPoint(worksheet, cell_content):
    num_row = 0
    for current_row in worksheet.iter_rows(min_row=0, max_row=worksheet.max_row):
        if current_row is not None and len(current_row) > 0:
            num_col = 0
            for cell in current_row:
                if cell is not None and type(cell) is not EmptyCell:
                    if cell_content in str(cell.value):
                        return num_col, num_row
                num_col += 1
        num_row += 1
    return -1, -1


def getStartColRow(worksheet, file_name):
    start_col, start_row = getStartPoint(worksheet, file_name)
    if start_col < 0:
        print('ERROR reading header (start_col): ' + file_name)
    start_row = getStartRow(worksheet, start_col, start_row)
    if start_row < 0:
        print('ERROR reading header (start_col): ' + file_name)

    print(' start col:' + str(start_col))
    print(' start row:' + str(start_row))

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
    if title == '1_IDEN':
        file_name = iden_file_names[num_annio]
        prefix = 'IDEN'
    elif title == '2_Renta':
        file_name = renta_file_names[num_annio]
        prefix = 'RENTA'
    elif title == '3_RentaImputación':
        file_name = renta_imputacion_file_names[num_annio]
        prefix = 'RENTA_IMPUT'
    elif title == '5_Patrimonio':
        file_name = patrimonio_file_names[num_annio]
        prefix = 'PATRIM'
    elif title == '7_Mod190':
        file_name = mod190_file_names[num_annio]
        prefix = 'M190'
    return file_name, prefix




# process worksheets
workbook = xl.load_workbook(inputExcel, keep_links=False, read_only=True, data_only=True)

metadata = []
annios = [2016, 2017, 2018, 2019]
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


def getVariableNamesUnificado(global_metadata):
    unique_variable_names = set()
    variable_names = set()

    total_num_vars = 0
    for current_global_metadata_item in global_metadata:
        current_metadata = global_metadata[current_global_metadata_item]
        total_num_vars += len(current_metadata)
        for metadata_item in current_metadata:
            var_name = metadata_item.get('var_name')
            var_desc = metadata_item.get('var_desc')
            variable_unique_name = var_name + '__' + var_desc
            unique_variable_names.add(variable_unique_name)
    print('total_num_vars: ' + str(total_num_vars))

    unique_num_vars = 0
    for variable_unique_name in unique_variable_names:
        variable_name = variable_unique_name.split('__')[0]
        variable_names.add(variable_name)

    unique_num_vars = len(variable_names)
    print('unique_num_vars: ' + str(unique_num_vars))

    return variable_names

def getLongDecimals(metadata, metadata_item_query):
    for metadata_item in metadata:
        if metadata_item.get('var_name') ==  metadata_item_query.get('var_name'):
            return metadata_item.get('var_long'), metadata_item.get('var_decimales')
    return None, None

def writeCreateTableUnificado(common_variable_names):
    commomn_vars_metadata = []
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

            for metadata_item in table_metadata:
                var_name = metadata_item.get('var_name')
                if var_name in common_variable_names:
                    var_long, var_decimales = getLongDecimals(metadata, metadata_item)
                    if var_long is None:

                        print()


            print('')




global_metadata = {}

# genera tablas anuales unificadas
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

        annio_tablename = str(annio) + '_' + str(file_name)
        global_metadata[annio_tablename] = table_metadata

        reg_size = getRegSize(table_metadata)
        global_offset += reg_size

        processed_file_names.append(file_name)

    file_name = 'unificado_' + str(annio)
    writeCreateTable(metadata, file_name, annio)
    writeLoadData(metadata, file_name, annio)
    writePasteCmd(processed_file_names, annio)

# genera tabla unificada para todos los años
common_variable_names = getVariableNamesUnificado(global_metadata)
writeCreateTableUnificado(common_variable_names)
#writeLoadUnificado(common_variable_names)











