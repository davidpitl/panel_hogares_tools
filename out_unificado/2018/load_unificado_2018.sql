USE test;

LOAD DATA LOCAL INFILE 'unificado_2018'
INTO TABLE tbl_unificado_2018
(@row)
SET 
	IDEN_IDENPER = TRIM(SUBSTR(@row,1, 11)),
	IDEN_IDENHOG = TRIM(SUBSTR(@row,12, 11)),
	IDEN_CCAA = TRIM(SUBSTR(@row,23, 2)),
	IDEN_CPRO = TRIM(SUBSTR(@row,25, 2)),
	IDEN_CMUN = TRIM(SUBSTR(@row,27, 3)),
	IDEN_TIPOHOG = TRIM(SUBSTR(@row,30, 5)),
	IDEN_TRAMO = TRIM(SUBSTR(@row,35, 1)),
	IDEN_FACTORCAL = TRIM(SUBSTR(@row,36, 20)),
	IDEN_FACTORCALNACI = TRIM(SUBSTR(@row,56, 20)),
	IDEN_FACTORDIS = TRIM(SUBSTR(@row,76, 20)),
	IDEN_FACTORDISNACI = TRIM(SUBSTR(@row,96, 20)),
	IDEN_NACIO = TRIM(SUBSTR(@row,116, 3)),
	IDEN_TIPCONTRIB = TRIM(SUBSTR(@row,119, 2)),
	IDEN_IDENPERS_CONY = TRIM(SUBSTR(@row,121, 11)),
	IDEN_SECCION = TRIM(SUBSTR(@row,132, 10)),
	RENTA_IDENPER = TRIM(SUBSTR(@row,906, 11)),
	RENTA_IDENHOG = TRIM(SUBSTR(@row,917, 11)),
	RENTA_M11 = TRIM(SUBSTR(@row,928, 12)),
	RENTA_M12 = TRIM(SUBSTR(@row,940, 12)),
	RENTA_M13 = TRIM(SUBSTR(@row,952, 12)),
	RENTA_M14 = TRIM(SUBSTR(@row,964, 12)),
	RENTA_M15 = TRIM(SUBSTR(@row,976, 12)),
	RENTA_M151 = TRIM(SUBSTR(@row,988, 12)),
	RENTA_M152 = TRIM(SUBSTR(@row,1000, 12)),
	RENTA_M153 = TRIM(SUBSTR(@row,1012, 12)),
	RENTA_M1 = TRIM(SUBSTR(@row,1024, 12)),
	RENTA_M2 = TRIM(SUBSTR(@row,1036, 12)),
	RENTA_M21 = TRIM(SUBSTR(@row,1048, 12)),
	RENTA_M22 = TRIM(SUBSTR(@row,1060, 12)),
	RENTA_M23 = TRIM(SUBSTR(@row,1072, 12)),
	RENTA_M24 = TRIM(SUBSTR(@row,1084, 12)),
	RENTA_M3 = TRIM(SUBSTR(@row,1096, 12)),
	RENTA_M31 = TRIM(SUBSTR(@row,1108, 12)),
	RENTA_M32 = TRIM(SUBSTR(@row,1120, 12)),
	RENTA_M4 = TRIM(SUBSTR(@row,1132, 12)),
	RENTA_M41 = TRIM(SUBSTR(@row,1144, 12)),
	RENTA_M42 = TRIM(SUBSTR(@row,1156, 12)),
	RENTA_M43 = TRIM(SUBSTR(@row,1168, 12)),
	RENTA_M44 = TRIM(SUBSTR(@row,1180, 12)),
	RENTA_M5 = TRIM(SUBSTR(@row,1192, 12)),
	RENTA_M61 = TRIM(SUBSTR(@row,1204, 12)),
	RENTA_M611 = TRIM(SUBSTR(@row,1216, 12)),
	RENTA_M613 = TRIM(SUBSTR(@row,1228, 12)),
	RENTA_M62 = TRIM(SUBSTR(@row,1240, 12)),
	RENTA_M621 = TRIM(SUBSTR(@row,1252, 12)),
	RENTA_M622 = TRIM(SUBSTR(@row,1264, 12)),
	RENTA_M623 = TRIM(SUBSTR(@row,1276, 12)),
	RENTA_M624 = TRIM(SUBSTR(@row,1288, 12)),
	RENTA_M625 = TRIM(SUBSTR(@row,1300, 12)),
	RENTA_M626 = TRIM(SUBSTR(@row,1312, 12)),
	RENTA_M627 = TRIM(SUBSTR(@row,1324, 12)),
	RENTA_M628 = TRIM(SUBSTR(@row,1336, 12)),
	RENTA_M629 = TRIM(SUBSTR(@row,1348, 12)),
	RENTA_M6210 = TRIM(SUBSTR(@row,1360, 12)),
	RENTA_M6 = TRIM(SUBSTR(@row,1372, 12)),
	RENTA_M7 = TRIM(SUBSTR(@row,1384, 12)),
	RENTA_M711 = TRIM(SUBSTR(@row,1396, 12)),
	RENTA_M72 = TRIM(SUBSTR(@row,1408, 12)),
	RENTA_M91 = TRIM(SUBSTR(@row,1420, 12)),
	RENTA_M921 = TRIM(SUBSTR(@row,1432, 12)),
	RENTA_M922 = TRIM(SUBSTR(@row,1444, 12)),
	RENTA_M923 = TRIM(SUBSTR(@row,1456, 12)),
	RENTA_M92 = TRIM(SUBSTR(@row,1468, 12)),
	RENTA_M93 = TRIM(SUBSTR(@row,1480, 12)),
	RENTA_M94 = TRIM(SUBSTR(@row,1492, 12)),
	RENTA_M95 = TRIM(SUBSTR(@row,1504, 12)),
	RENTA_M96 = TRIM(SUBSTR(@row,1516, 12)),
	RENTA_M97 = TRIM(SUBSTR(@row,1528, 12)),
	RENTA_RB = TRIM(SUBSTR(@row,1540, 12)),
	RENTA_RBD = TRIM(SUBSTR(@row,1552, 12)),
	RENTA_IMPUT_IDENPER = TRIM(SUBSTR(@row,68449, 11)),
	RENTA_IMPUT_IDENHOG = TRIM(SUBSTR(@row,68460, 11)),
	RENTA_IMPUT_R111 = TRIM(SUBSTR(@row,68471, 12)),
	RENTA_IMPUT_R112 = TRIM(SUBSTR(@row,68483, 12)),
	RENTA_IMPUT_R113 = TRIM(SUBSTR(@row,68495, 12)),
	RENTA_IMPUT_R115 = TRIM(SUBSTR(@row,68507, 12)),
	RENTA_IMPUT_R116 = TRIM(SUBSTR(@row,68519, 12)),
	RENTA_IMPUT_R117 = TRIM(SUBSTR(@row,68531, 12)),
	RENTA_IMPUT_R1111 = TRIM(SUBSTR(@row,68543, 12)),
	RENTA_IMPUT_R1112 = TRIM(SUBSTR(@row,68555, 12)),
	RENTA_IMPUT_R12111 = TRIM(SUBSTR(@row,68567, 12)),
	RENTA_IMPUT_R12112 = TRIM(SUBSTR(@row,68579, 12)),
	RENTA_IMPUT_R1212 = TRIM(SUBSTR(@row,68591, 12)),
	RENTA_IMPUT_R1213 = TRIM(SUBSTR(@row,68603, 12)),
	RENTA_IMPUT_R1221 = TRIM(SUBSTR(@row,68615, 12)),
	RENTA_IMPUT_R1222 = TRIM(SUBSTR(@row,68627, 12)),
	RENTA_IMPUT_R1223 = TRIM(SUBSTR(@row,68639, 12)),
	RENTA_IMPUT_R12311 = TRIM(SUBSTR(@row,68651, 12)),
	RENTA_IMPUT_R12312 = TRIM(SUBSTR(@row,68663, 12)),
	RENTA_IMPUT_R12313 = TRIM(SUBSTR(@row,68675, 12)),
	RENTA_IMPUT_R12314 = TRIM(SUBSTR(@row,68687, 12)),
	RENTA_IMPUT_R1232 = TRIM(SUBSTR(@row,68699, 12)),
	RENTA_IMPUT_R12331 = TRIM(SUBSTR(@row,68711, 12)),
	RENTA_IMPUT_R12335 = TRIM(SUBSTR(@row,68723, 12)),
	RENTA_IMPUT_R12336 = TRIM(SUBSTR(@row,68735, 12)),
	RENTA_IMPUT_R12337 = TRIM(SUBSTR(@row,68747, 12)),
	RENTA_IMPUT_R12338 = TRIM(SUBSTR(@row,68759, 12)),
	RENTA_IMPUT_R123313T = TRIM(SUBSTR(@row,68771, 12)),
	RENTA_IMPUT_R123314T = TRIM(SUBSTR(@row,68783, 12)),
	RENTA_IMPUT_R123315T = TRIM(SUBSTR(@row,68795, 12)),
	RENTA_IMPUT_R123316T = TRIM(SUBSTR(@row,68807, 12)),
	RENTA_IMPUT_R123317T = TRIM(SUBSTR(@row,68819, 12)),
	RENTA_IMPUT_R1234 = TRIM(SUBSTR(@row,68831, 12)),
	RENTA_IMPUT_R21 = TRIM(SUBSTR(@row,68843, 12)),
	RENTA_IMPUT_R22 = TRIM(SUBSTR(@row,68855, 12)),
	RENTA_IMPUT_R2301 = TRIM(SUBSTR(@row,68867, 12)),
	RENTA_IMPUT_R2302 = TRIM(SUBSTR(@row,68879, 12)),
	RENTA_IMPUT_R2303 = TRIM(SUBSTR(@row,68891, 12)),
	RENTA_IMPUT_R2304 = TRIM(SUBSTR(@row,68903, 12)),
	RENTA_IMPUT_R2305 = TRIM(SUBSTR(@row,68915, 12)),
	RENTA_IMPUT_R2306 = TRIM(SUBSTR(@row,68927, 12)),
	RENTA_IMPUT_R2307 = TRIM(SUBSTR(@row,68939, 12)),
	RENTA_IMPUT_R2308 = TRIM(SUBSTR(@row,68951, 12)),
	RENTA_IMPUT_R2309 = TRIM(SUBSTR(@row,68963, 12)),
	RENTA_IMPUT_R2310 = TRIM(SUBSTR(@row,68975, 12)),
	RENTA_IMPUT_R2311 = TRIM(SUBSTR(@row,68987, 12)),
	RENTA_IMPUT_R24  = TRIM(SUBSTR(@row,68999, 12)),
	RENTA_IMPUT_R711 = TRIM(SUBSTR(@row,69011, 12)),
	RENTA_IMPUT_R712 = TRIM(SUBSTR(@row,69023, 12)),
	RENTA_IMPUT_R713 = TRIM(SUBSTR(@row,69035, 12)),
	RENTA_IMPUT_R714 = TRIM(SUBSTR(@row,69047, 12)),
	RENTA_IMPUT_R715 = TRIM(SUBSTR(@row,69059, 12)),
	RENTA_IMPUT_R716 = TRIM(SUBSTR(@row,69071, 12)),
	RENTA_IMPUT_R717 = TRIM(SUBSTR(@row,69083, 12)),
	RENTA_IMPUT_R719 = TRIM(SUBSTR(@row,69095, 12)),
	RENTA_IMPUT_R741 = TRIM(SUBSTR(@row,69107, 12)),
	RENTA_IMPUT_R1011 = TRIM(SUBSTR(@row,69119, 12)),
	RENTA_IMPUT_R513 = TRIM(SUBSTR(@row,69131, 12)),
	PATRIM_IDENPER = TRIM(SUBSTR(@row,4058214, 11)),
	PATRIM_IDENHOG = TRIM(SUBSTR(@row,4058225, 11)),
	PATRIM_IR112111a = TRIM(SUBSTR(@row,4058236, 20)),
	PATRIM_IR112112a = TRIM(SUBSTR(@row,4058256, 20)),
	PATRIM_IR112113a = TRIM(SUBSTR(@row,4058276, 20)),
	PATRIM_IR11212 = TRIM(SUBSTR(@row,4058296, 20)),
	PATRIM_IR112131 = TRIM(SUBSTR(@row,4058316, 20)),
	PATRIM_IR112132 = TRIM(SUBSTR(@row,4058336, 20)),
	PATRIM_IR112133 = TRIM(SUBSTR(@row,4058356, 20)),
	PATRIM_IR112134 = TRIM(SUBSTR(@row,4058376, 20)),
	PATRIM_IR112135 = TRIM(SUBSTR(@row,4058396, 20)),
	PATRIM_IR11214 = TRIM(SUBSTR(@row,4058416, 20)),
	PATRIM_IR1122 = TRIM(SUBSTR(@row,4058436, 20)),
	M190_IDENPER = TRIM(SUBSTR(@row,56816349, 11)),
	M190_IDENHOG = TRIM(SUBSTR(@row,56816360, 11)),
	M190_CLAVE = TRIM(SUBSTR(@row,56816371, 1)),
	M190_SUBCLAVE = TRIM(SUBSTR(@row,56816372, 2)),
	M190_RETRI = TRIM(SUBSTR(@row,56816374, 15)),
	M190_RETEN = TRIM(SUBSTR(@row,56816389, 15)),
	M190_VALOR = TRIM(SUBSTR(@row,56816404, 15)),
	M190_INGCTA = TRIM(SUBSTR(@row,56816419, 15)),
	M190_INGCTAR = TRIM(SUBSTR(@row,56816434, 15)),
	M190_RETRI_ILT = TRIM(SUBSTR(@row,56816449, 15)),
	M190_RETEN_ILT = TRIM(SUBSTR(@row,56816464, 15)),
	M190_VALOR_ILT = TRIM(SUBSTR(@row,56816479, 15)),
	M190_INGCTA_ILT = TRIM(SUBSTR(@row,56816494, 15)),
	M190_INGCTAR_IL = TRIM(SUBSTR(@row,56816509, 15)),
	M190_SITFAM = TRIM(SUBSTR(@row,56816524, 1)),
	M190_DISCAP = TRIM(SUBSTR(@row,56816525, 1)),
	M190_TIPCONTRATO = TRIM(SUBSTR(@row,56816526, 1)),
	M190_PENSIONES = TRIM(SUBSTR(@row,56816527, 15)),
	M190_ANU_ALIMENTOS = TRIM(SUBSTR(@row,56816542, 15)),
	M190_DESC3 = TRIM(SUBSTR(@row,56816557, 3)),
	M190_DESC_RESTO = TRIM(SUBSTR(@row,56816560, 3)),
	M190_DESC_DISCAP33 = TRIM(SUBSTR(@row,56816563, 3)),
	M190_DESC_MOV_REDU = TRIM(SUBSTR(@row,56816566, 3)),
	M190_DESC_DISCAP65 = TRIM(SUBSTR(@row,56816569, 3)),
	M190_ASC_MEN75 = TRIM(SUBSTR(@row,56816572, 3)),
	M190_ASC_MAY75 = TRIM(SUBSTR(@row,56816575, 3)),
	M190_ASC_DISCAP33 = TRIM(SUBSTR(@row,56816578, 3)),
	M190_ASC_MOV_REDU = TRIM(SUBSTR(@row,56816581, 3)),
	M190_ASC_DISCAP65 = TRIM(SUBSTR(@row,56816584, 3)),
	M190_DESC_TOT = TRIM(SUBSTR(@row,56816587, 3)),
	M190_ASC_TOT = TRIM(SUBSTR(@row,56816590, 3)),
	M190_NACE = TRIM(SUBSTR(@row,56816593, 4)),
	M190_SI = TRIM(SUBSTR(@row,56816597, 5)),
	IDEN_IDENPER = TRIM(SUBSTR(@row,1931760932, 11)),
	IDEN_IDENHOG = TRIM(SUBSTR(@row,1931760943, 11)),
	IDEN_CCAA = TRIM(SUBSTR(@row,1931760954, 2)),
	IDEN_CPRO = TRIM(SUBSTR(@row,1931760956, 2)),
	IDEN_CMUN = TRIM(SUBSTR(@row,1931760958, 3)),
	IDEN_TIPOHOG = TRIM(SUBSTR(@row,1931760961, 5)),
	IDEN_TRAMO = TRIM(SUBSTR(@row,1931760966, 1)),
	IDEN_FACTORCAL = TRIM(SUBSTR(@row,1931760967, 20)),
	IDEN_FACTORCALNACI = TRIM(SUBSTR(@row,1931760987, 20)),
	IDEN_FACTORDIS = TRIM(SUBSTR(@row,1931761007, 20)),
	IDEN_FACTORDISNACI = TRIM(SUBSTR(@row,1931761027, 20)),
	IDEN_NACIO = TRIM(SUBSTR(@row,1931761047, 3)),
	IDEN_TIPCONTRIB = TRIM(SUBSTR(@row,1931761050, 2)),
	IDEN_IDENPERS_CONY = TRIM(SUBSTR(@row,1931761052, 11)),
	IDEN_SECCION = TRIM(SUBSTR(@row,1931761063, 10)),
	RENTA_IDENPER = TRIM(SUBSTR(@row,30908175802, 11)),
	RENTA_IDENHOG = TRIM(SUBSTR(@row,30908175813, 11)),
	RENTA_M11 = TRIM(SUBSTR(@row,30908175824, 12)),
	RENTA_M12 = TRIM(SUBSTR(@row,30908175836, 12)),
	RENTA_M13 = TRIM(SUBSTR(@row,30908175848, 12)),
	RENTA_M14 = TRIM(SUBSTR(@row,30908175860, 12)),
	RENTA_M15 = TRIM(SUBSTR(@row,30908175872, 12)),
	RENTA_M151 = TRIM(SUBSTR(@row,30908175884, 12)),
	RENTA_M152 = TRIM(SUBSTR(@row,30908175896, 12)),
	RENTA_M153 = TRIM(SUBSTR(@row,30908175908, 12)),
	RENTA_M1 = TRIM(SUBSTR(@row,30908175920, 12)),
	RENTA_M2 = TRIM(SUBSTR(@row,30908175932, 12)),
	RENTA_M21 = TRIM(SUBSTR(@row,30908175944, 12)),
	RENTA_M22 = TRIM(SUBSTR(@row,30908175956, 12)),
	RENTA_M23 = TRIM(SUBSTR(@row,30908175968, 12)),
	RENTA_M24 = TRIM(SUBSTR(@row,30908175980, 12)),
	RENTA_M3 = TRIM(SUBSTR(@row,30908175992, 12)),
	RENTA_M31 = TRIM(SUBSTR(@row,30908176004, 12)),
	RENTA_M32 = TRIM(SUBSTR(@row,30908176016, 12)),
	RENTA_M4 = TRIM(SUBSTR(@row,30908176028, 12)),
	RENTA_M41 = TRIM(SUBSTR(@row,30908176040, 12)),
	RENTA_M42 = TRIM(SUBSTR(@row,30908176052, 12)),
	RENTA_M43 = TRIM(SUBSTR(@row,30908176064, 12)),
	RENTA_M44 = TRIM(SUBSTR(@row,30908176076, 12)),
	RENTA_M5 = TRIM(SUBSTR(@row,30908176088, 12)),
	RENTA_M61 = TRIM(SUBSTR(@row,30908176100, 12)),
	RENTA_M611 = TRIM(SUBSTR(@row,30908176112, 12)),
	RENTA_M613 = TRIM(SUBSTR(@row,30908176124, 12)),
	RENTA_M62 = TRIM(SUBSTR(@row,30908176136, 12)),
	RENTA_M621 = TRIM(SUBSTR(@row,30908176148, 12)),
	RENTA_M622 = TRIM(SUBSTR(@row,30908176160, 12)),
	RENTA_M623 = TRIM(SUBSTR(@row,30908176172, 12)),
	RENTA_M624 = TRIM(SUBSTR(@row,30908176184, 12)),
	RENTA_M625 = TRIM(SUBSTR(@row,30908176196, 12)),
	RENTA_M626 = TRIM(SUBSTR(@row,30908176208, 12)),
	RENTA_M627 = TRIM(SUBSTR(@row,30908176220, 12)),
	RENTA_M628 = TRIM(SUBSTR(@row,30908176232, 12)),
	RENTA_M629 = TRIM(SUBSTR(@row,30908176244, 12)),
	RENTA_M6210 = TRIM(SUBSTR(@row,30908176256, 12)),
	RENTA_M6 = TRIM(SUBSTR(@row,30908176268, 12)),
	RENTA_M7 = TRIM(SUBSTR(@row,30908176280, 12)),
	RENTA_M711 = TRIM(SUBSTR(@row,30908176292, 12)),
	RENTA_M72 = TRIM(SUBSTR(@row,30908176304, 12)),
	RENTA_M91 = TRIM(SUBSTR(@row,30908176316, 12)),
	RENTA_M921 = TRIM(SUBSTR(@row,30908176328, 12)),
	RENTA_M922 = TRIM(SUBSTR(@row,30908176340, 12)),
	RENTA_M923 = TRIM(SUBSTR(@row,30908176352, 12)),
	RENTA_M92 = TRIM(SUBSTR(@row,30908176364, 12)),
	RENTA_M93 = TRIM(SUBSTR(@row,30908176376, 12)),
	RENTA_M94 = TRIM(SUBSTR(@row,30908176388, 12)),
	RENTA_M95 = TRIM(SUBSTR(@row,30908176400, 12)),
	RENTA_M96 = TRIM(SUBSTR(@row,30908176412, 12)),
	RENTA_M97 = TRIM(SUBSTR(@row,30908176424, 12)),
	RENTA_RB = TRIM(SUBSTR(@row,30908176436, 12)),
	RENTA_RBD = TRIM(SUBSTR(@row,30908176448, 12)),
	RENTA_IMPUT_IDENPER = TRIM(SUBSTR(@row,1730857862625, 11)),
	RENTA_IMPUT_IDENHOG = TRIM(SUBSTR(@row,1730857862636, 11)),
	RENTA_IMPUT_R111 = TRIM(SUBSTR(@row,1730857862647, 12)),
	RENTA_IMPUT_R112 = TRIM(SUBSTR(@row,1730857862659, 12)),
	RENTA_IMPUT_R113 = TRIM(SUBSTR(@row,1730857862671, 12)),
	RENTA_IMPUT_R115 = TRIM(SUBSTR(@row,1730857862683, 12)),
	RENTA_IMPUT_R116 = TRIM(SUBSTR(@row,1730857862695, 12)),
	RENTA_IMPUT_R117 = TRIM(SUBSTR(@row,1730857862707, 12)),
	RENTA_IMPUT_R1111 = TRIM(SUBSTR(@row,1730857862719, 12)),
	RENTA_IMPUT_R1112 = TRIM(SUBSTR(@row,1730857862731, 12)),
	RENTA_IMPUT_R12111 = TRIM(SUBSTR(@row,1730857862743, 12)),
	RENTA_IMPUT_R12112 = TRIM(SUBSTR(@row,1730857862755, 12)),
	RENTA_IMPUT_R1212 = TRIM(SUBSTR(@row,1730857862767, 12)),
	RENTA_IMPUT_R1213 = TRIM(SUBSTR(@row,1730857862779, 12)),
	RENTA_IMPUT_R1221 = TRIM(SUBSTR(@row,1730857862791, 12)),
	RENTA_IMPUT_R1222 = TRIM(SUBSTR(@row,1730857862803, 12)),
	RENTA_IMPUT_R1223 = TRIM(SUBSTR(@row,1730857862815, 12)),
	RENTA_IMPUT_R12311 = TRIM(SUBSTR(@row,1730857862827, 12)),
	RENTA_IMPUT_R12312 = TRIM(SUBSTR(@row,1730857862839, 12)),
	RENTA_IMPUT_R12313 = TRIM(SUBSTR(@row,1730857862851, 12)),
	RENTA_IMPUT_R12314 = TRIM(SUBSTR(@row,1730857862863, 12)),
	RENTA_IMPUT_R1232 = TRIM(SUBSTR(@row,1730857862875, 12)),
	RENTA_IMPUT_R12331 = TRIM(SUBSTR(@row,1730857862887, 12)),
	RENTA_IMPUT_R12335 = TRIM(SUBSTR(@row,1730857862899, 12)),
	RENTA_IMPUT_R12336 = TRIM(SUBSTR(@row,1730857862911, 12)),
	RENTA_IMPUT_R12337 = TRIM(SUBSTR(@row,1730857862923, 12)),
	RENTA_IMPUT_R12338 = TRIM(SUBSTR(@row,1730857862935, 12)),
	RENTA_IMPUT_R123313T = TRIM(SUBSTR(@row,1730857862947, 12)),
	RENTA_IMPUT_R123314T = TRIM(SUBSTR(@row,1730857862959, 12)),
	RENTA_IMPUT_R123315T = TRIM(SUBSTR(@row,1730857862971, 12)),
	RENTA_IMPUT_R123316T = TRIM(SUBSTR(@row,1730857862983, 12)),
	RENTA_IMPUT_R123317T = TRIM(SUBSTR(@row,1730857862995, 12)),
	RENTA_IMPUT_R1234 = TRIM(SUBSTR(@row,1730857863007, 12)),
	RENTA_IMPUT_R21 = TRIM(SUBSTR(@row,1730857863019, 12)),
	RENTA_IMPUT_R22 = TRIM(SUBSTR(@row,1730857863031, 12)),
	RENTA_IMPUT_R2301 = TRIM(SUBSTR(@row,1730857863043, 12)),
	RENTA_IMPUT_R2302 = TRIM(SUBSTR(@row,1730857863055, 12)),
	RENTA_IMPUT_R2303 = TRIM(SUBSTR(@row,1730857863067, 12)),
	RENTA_IMPUT_R2304 = TRIM(SUBSTR(@row,1730857863079, 12)),
	RENTA_IMPUT_R2305 = TRIM(SUBSTR(@row,1730857863091, 12)),
	RENTA_IMPUT_R2306 = TRIM(SUBSTR(@row,1730857863103, 12)),
	RENTA_IMPUT_R2307 = TRIM(SUBSTR(@row,1730857863115, 12)),
	RENTA_IMPUT_R2308 = TRIM(SUBSTR(@row,1730857863127, 12)),
	RENTA_IMPUT_R2309 = TRIM(SUBSTR(@row,1730857863139, 12)),
	RENTA_IMPUT_R2310 = TRIM(SUBSTR(@row,1730857863151, 12)),
	RENTA_IMPUT_R2311 = TRIM(SUBSTR(@row,1730857863163, 12)),
	RENTA_IMPUT_R24  = TRIM(SUBSTR(@row,1730857863175, 12)),
	RENTA_IMPUT_R711 = TRIM(SUBSTR(@row,1730857863187, 12)),
	RENTA_IMPUT_R712 = TRIM(SUBSTR(@row,1730857863199, 12)),
	RENTA_IMPUT_R713 = TRIM(SUBSTR(@row,1730857863211, 12)),
	RENTA_IMPUT_R714 = TRIM(SUBSTR(@row,1730857863223, 12)),
	RENTA_IMPUT_R715 = TRIM(SUBSTR(@row,1730857863235, 12)),
	RENTA_IMPUT_R716 = TRIM(SUBSTR(@row,1730857863247, 12)),
	RENTA_IMPUT_R717 = TRIM(SUBSTR(@row,1730857863259, 12)),
	RENTA_IMPUT_R719 = TRIM(SUBSTR(@row,1730857863271, 12)),
	RENTA_IMPUT_R741 = TRIM(SUBSTR(@row,1730857863283, 12)),
	RENTA_IMPUT_R1011 = TRIM(SUBSTR(@row,1730857863295, 12)),
	RENTA_IMPUT_R513 = TRIM(SUBSTR(@row,1730857863307, 12)),
	PATRIM_IDENPER = TRIM(SUBSTR(@row,102120613914598, 11)),
	PATRIM_IDENHOG = TRIM(SUBSTR(@row,102120613914609, 11)),
	PATRIM_IR112111a = TRIM(SUBSTR(@row,102120613914620, 20)),
	PATRIM_IR112112a = TRIM(SUBSTR(@row,102120613914640, 20)),
	PATRIM_IR112113a = TRIM(SUBSTR(@row,102120613914660, 20)),
	PATRIM_IR11212 = TRIM(SUBSTR(@row,102120613914680, 20)),
	PATRIM_IR112131 = TRIM(SUBSTR(@row,102120613914700, 20)),
	PATRIM_IR112132 = TRIM(SUBSTR(@row,102120613914720, 20)),
	PATRIM_IR112133 = TRIM(SUBSTR(@row,102120613914740, 20)),
	PATRIM_IR112134 = TRIM(SUBSTR(@row,102120613914760, 20)),
	PATRIM_IR112135 = TRIM(SUBSTR(@row,102120613914780, 20)),
	PATRIM_IR11214 = TRIM(SUBSTR(@row,102120613914800, 20)),
	PATRIM_IR1122 = TRIM(SUBSTR(@row,102120613914820, 20)),
	M190_IDENPER = TRIM(SUBSTR(@row,1429688594805725, 11)),
	M190_IDENHOG = TRIM(SUBSTR(@row,1429688594805736, 11)),
	M190_CLAVE = TRIM(SUBSTR(@row,1429688594805747, 1)),
	M190_SUBCLAVE = TRIM(SUBSTR(@row,1429688594805748, 2)),
	M190_RETRI = TRIM(SUBSTR(@row,1429688594805750, 15)),
	M190_RETEN = TRIM(SUBSTR(@row,1429688594805765, 15)),
	M190_VALOR = TRIM(SUBSTR(@row,1429688594805780, 15)),
	M190_INGCTA = TRIM(SUBSTR(@row,1429688594805795, 15)),
	M190_INGCTAR = TRIM(SUBSTR(@row,1429688594805810, 15)),
	M190_RETRI_ILT = TRIM(SUBSTR(@row,1429688594805825, 15)),
	M190_RETEN_ILT = TRIM(SUBSTR(@row,1429688594805840, 15)),
	M190_VALOR_ILT = TRIM(SUBSTR(@row,1429688594805855, 15)),
	M190_INGCTA_ILT = TRIM(SUBSTR(@row,1429688594805870, 15)),
	M190_INGCTAR_IL = TRIM(SUBSTR(@row,1429688594805885, 15)),
	M190_SITFAM = TRIM(SUBSTR(@row,1429688594805900, 1)),
	M190_DISCAP = TRIM(SUBSTR(@row,1429688594805901, 1)),
	M190_TIPCONTRATO = TRIM(SUBSTR(@row,1429688594805902, 1)),
	M190_PENSIONES = TRIM(SUBSTR(@row,1429688594805903, 15)),
	M190_ANU_ALIMENTOS = TRIM(SUBSTR(@row,1429688594805918, 15)),
	M190_DESC3 = TRIM(SUBSTR(@row,1429688594805933, 3)),
	M190_DESC_RESTO = TRIM(SUBSTR(@row,1429688594805936, 3)),
	M190_DESC_DISCAP33 = TRIM(SUBSTR(@row,1429688594805939, 3)),
	M190_DESC_MOV_REDU = TRIM(SUBSTR(@row,1429688594805942, 3)),
	M190_DESC_DISCAP65 = TRIM(SUBSTR(@row,1429688594805945, 3)),
	M190_ASC_MEN75 = TRIM(SUBSTR(@row,1429688594805948, 3)),
	M190_ASC_MAY75 = TRIM(SUBSTR(@row,1429688594805951, 3)),
	M190_ASC_DISCAP33 = TRIM(SUBSTR(@row,1429688594805954, 3)),
	M190_ASC_MOV_REDU = TRIM(SUBSTR(@row,1429688594805957, 3)),
	M190_ASC_DISCAP65 = TRIM(SUBSTR(@row,1429688594805960, 3)),
	M190_DESC_TOT = TRIM(SUBSTR(@row,1429688594805963, 3)),
	M190_ASC_TOT = TRIM(SUBSTR(@row,1429688594805966, 3)),
	M190_NACE = TRIM(SUBSTR(@row,1429688594805969, 4)),
	M190_SI = TRIM(SUBSTR(@row,1429688594805973, 5)),
	IDEN_IDENPER = TRIM(SUBSTR(@row,48609412223399716, 11)),
	IDEN_IDENHOG = TRIM(SUBSTR(@row,48609412223399727, 11)),
	IDEN_CCAA = TRIM(SUBSTR(@row,48609412223399738, 2)),
	IDEN_CPRO = TRIM(SUBSTR(@row,48609412223399740, 2)),
	IDEN_CMUN = TRIM(SUBSTR(@row,48609412223399742, 3)),
	IDEN_TIPOHOG = TRIM(SUBSTR(@row,48609412223399745, 5)),
	IDEN_TRAMO = TRIM(SUBSTR(@row,48609412223399750, 1)),
	IDEN_FACTORCAL = TRIM(SUBSTR(@row,48609412223399751, 20)),
	IDEN_FACTORCALNACI = TRIM(SUBSTR(@row,48609412223399771, 20)),
	IDEN_FACTORDIS = TRIM(SUBSTR(@row,48609412223399791, 20)),
	IDEN_FACTORDISNACI = TRIM(SUBSTR(@row,48609412223399811, 20)),
	IDEN_NACIO = TRIM(SUBSTR(@row,48609412223399831, 3)),
	IDEN_TIPCONTRIB = TRIM(SUBSTR(@row,48609412223399834, 2)),
	IDEN_IDENPERS_CONY = TRIM(SUBSTR(@row,48609412223399836, 11)),
	IDEN_SECCION = TRIM(SUBSTR(@row,48609412223399847, 10)),
	RENTA_IDENPER = TRIM(SUBSTR(@row,777750595574396346, 11)),
	RENTA_IDENHOG = TRIM(SUBSTR(@row,777750595574396357, 11)),
	RENTA_M11 = TRIM(SUBSTR(@row,777750595574396368, 12)),
	RENTA_M12 = TRIM(SUBSTR(@row,777750595574396380, 12)),
	RENTA_M13 = TRIM(SUBSTR(@row,777750595574396392, 12)),
	RENTA_M14 = TRIM(SUBSTR(@row,777750595574396404, 12)),
	RENTA_M15 = TRIM(SUBSTR(@row,777750595574396416, 12)),
	RENTA_M151 = TRIM(SUBSTR(@row,777750595574396428, 12)),
	RENTA_M152 = TRIM(SUBSTR(@row,777750595574396440, 12)),
	RENTA_M153 = TRIM(SUBSTR(@row,777750595574396452, 12)),
	RENTA_M1 = TRIM(SUBSTR(@row,777750595574396464, 12)),
	RENTA_M2 = TRIM(SUBSTR(@row,777750595574396476, 12)),
	RENTA_M21 = TRIM(SUBSTR(@row,777750595574396488, 12)),
	RENTA_M22 = TRIM(SUBSTR(@row,777750595574396500, 12)),
	RENTA_M23 = TRIM(SUBSTR(@row,777750595574396512, 12)),
	RENTA_M24 = TRIM(SUBSTR(@row,777750595574396524, 12)),
	RENTA_M3 = TRIM(SUBSTR(@row,777750595574396536, 12)),
	RENTA_M31 = TRIM(SUBSTR(@row,777750595574396548, 12)),
	RENTA_M32 = TRIM(SUBSTR(@row,777750595574396560, 12)),
	RENTA_M4 = TRIM(SUBSTR(@row,777750595574396572, 12)),
	RENTA_M41 = TRIM(SUBSTR(@row,777750595574396584, 12)),
	RENTA_M42 = TRIM(SUBSTR(@row,777750595574396596, 12)),
	RENTA_M43 = TRIM(SUBSTR(@row,777750595574396608, 12)),
	RENTA_M44 = TRIM(SUBSTR(@row,777750595574396620, 12)),
	RENTA_M5 = TRIM(SUBSTR(@row,777750595574396632, 12)),
	RENTA_M61 = TRIM(SUBSTR(@row,777750595574396644, 12)),
	RENTA_M611 = TRIM(SUBSTR(@row,777750595574396656, 12)),
	RENTA_M613 = TRIM(SUBSTR(@row,777750595574396668, 12)),
	RENTA_M62 = TRIM(SUBSTR(@row,777750595574396680, 12)),
	RENTA_M621 = TRIM(SUBSTR(@row,777750595574396692, 12)),
	RENTA_M622 = TRIM(SUBSTR(@row,777750595574396704, 12)),
	RENTA_M623 = TRIM(SUBSTR(@row,777750595574396716, 12)),
	RENTA_M624 = TRIM(SUBSTR(@row,777750595574396728, 12)),
	RENTA_M625 = TRIM(SUBSTR(@row,777750595574396740, 12)),
	RENTA_M626 = TRIM(SUBSTR(@row,777750595574396752, 12)),
	RENTA_M626a = TRIM(SUBSTR(@row,777750595574396764, 12)),
	RENTA_M627 = TRIM(SUBSTR(@row,777750595574396776, 12)),
	RENTA_M628 = TRIM(SUBSTR(@row,777750595574396788, 12)),
	RENTA_M629 = TRIM(SUBSTR(@row,777750595574396800, 12)),
	RENTA_M6210 = TRIM(SUBSTR(@row,777750595574396812, 12)),
	RENTA_M6211 = TRIM(SUBSTR(@row,777750595574396824, 12)),
	RENTA_M6212 = TRIM(SUBSTR(@row,777750595574396836, 12)),
	RENTA_M6 = TRIM(SUBSTR(@row,777750595574396848, 12)),
	RENTA_M7 = TRIM(SUBSTR(@row,777750595574396860, 12)),
	RENTA_M711 = TRIM(SUBSTR(@row,777750595574396872, 12)),
	RENTA_M72 = TRIM(SUBSTR(@row,777750595574396884, 12)),
	RENTA_M91 = TRIM(SUBSTR(@row,777750595574396896, 12)),
	RENTA_M921 = TRIM(SUBSTR(@row,777750595574396908, 12)),
	RENTA_M922 = TRIM(SUBSTR(@row,777750595574396920, 12)),
	RENTA_M923 = TRIM(SUBSTR(@row,777750595574396932, 12)),
	RENTA_M92 = TRIM(SUBSTR(@row,777750595574396944, 12)),
	RENTA_M93 = TRIM(SUBSTR(@row,777750595574396956, 12)),
	RENTA_M94 = TRIM(SUBSTR(@row,777750595574396968, 12)),
	RENTA_M95 = TRIM(SUBSTR(@row,777750595574396980, 12)),
	RENTA_M96 = TRIM(SUBSTR(@row,777750595574396992, 12)),
	RENTA_M97 = TRIM(SUBSTR(@row,777750595574397004, 12)),
	RENTA_RB = TRIM(SUBSTR(@row,777750595574397016, 12)),
	RENTA_RBD = TRIM(SUBSTR(@row,777750595574397028, 12)),
	RENTA_IMPUT_IDENPER = TRIM(SUBSTR(@row,45887285138889404137, 11)),
	RENTA_IMPUT_IDENHOG = TRIM(SUBSTR(@row,45887285138889404148, 11)),
	RENTA_IMPUT_R111 = TRIM(SUBSTR(@row,45887285138889404159, 12)),
	RENTA_IMPUT_R112 = TRIM(SUBSTR(@row,45887285138889404171, 12)),
	RENTA_IMPUT_R113 = TRIM(SUBSTR(@row,45887285138889404183, 12)),
	RENTA_IMPUT_R115 = TRIM(SUBSTR(@row,45887285138889404195, 12)),
	RENTA_IMPUT_R116 = TRIM(SUBSTR(@row,45887285138889404207, 12)),
	RENTA_IMPUT_R117 = TRIM(SUBSTR(@row,45887285138889404219, 12)),
	RENTA_IMPUT_R1111 = TRIM(SUBSTR(@row,45887285138889404231, 12)),
	RENTA_IMPUT_R1112 = TRIM(SUBSTR(@row,45887285138889404243, 12)),
	RENTA_IMPUT_R12111 = TRIM(SUBSTR(@row,45887285138889404255, 12)),
	RENTA_IMPUT_R12112 = TRIM(SUBSTR(@row,45887285138889404267, 12)),
	RENTA_IMPUT_R1212 = TRIM(SUBSTR(@row,45887285138889404279, 12)),
	RENTA_IMPUT_R1213 = TRIM(SUBSTR(@row,45887285138889404291, 12)),
	RENTA_IMPUT_R1221 = TRIM(SUBSTR(@row,45887285138889404303, 12)),
	RENTA_IMPUT_R1222 = TRIM(SUBSTR(@row,45887285138889404315, 12)),
	RENTA_IMPUT_R1223 = TRIM(SUBSTR(@row,45887285138889404327, 12)),
	RENTA_IMPUT_R12311 = TRIM(SUBSTR(@row,45887285138889404339, 12)),
	RENTA_IMPUT_R12312 = TRIM(SUBSTR(@row,45887285138889404351, 12)),
	RENTA_IMPUT_R12313 = TRIM(SUBSTR(@row,45887285138889404363, 12)),
	RENTA_IMPUT_R12314 = TRIM(SUBSTR(@row,45887285138889404375, 12)),
	RENTA_IMPUT_R12315 = TRIM(SUBSTR(@row,45887285138889404387, 12)),
	RENTA_IMPUT_R1232 = TRIM(SUBSTR(@row,45887285138889404399, 12)),
	RENTA_IMPUT_R12331 = TRIM(SUBSTR(@row,45887285138889404411, 12)),
	RENTA_IMPUT_R12335 = TRIM(SUBSTR(@row,45887285138889404423, 12)),
	RENTA_IMPUT_R12336 = TRIM(SUBSTR(@row,45887285138889404435, 12)),
	RENTA_IMPUT_R12337 = TRIM(SUBSTR(@row,45887285138889404447, 12)),
	RENTA_IMPUT_R12338 = TRIM(SUBSTR(@row,45887285138889404459, 12)),
	RENTA_IMPUT_R123313a = TRIM(SUBSTR(@row,45887285138889404471, 12)),
	RENTA_IMPUT_R123313T = TRIM(SUBSTR(@row,45887285138889404483, 12)),
	RENTA_IMPUT_R123314T = TRIM(SUBSTR(@row,45887285138889404495, 12)),
	RENTA_IMPUT_R123315T = TRIM(SUBSTR(@row,45887285138889404507, 12)),
	RENTA_IMPUT_R123316T = TRIM(SUBSTR(@row,45887285138889404519, 12)),
	RENTA_IMPUT_R123317T = TRIM(SUBSTR(@row,45887285138889404531, 12)),
	RENTA_IMPUT_R123318 = TRIM(SUBSTR(@row,45887285138889404543, 12)),
	RENTA_IMPUT_R123320T = TRIM(SUBSTR(@row,45887285138889404555, 12)),
	RENTA_IMPUT_R1234 = TRIM(SUBSTR(@row,45887285138889404567, 12)),
	RENTA_IMPUT_R21 = TRIM(SUBSTR(@row,45887285138889404579, 12)),
	RENTA_IMPUT_R22 = TRIM(SUBSTR(@row,45887285138889404591, 12)),
	RENTA_IMPUT_R2301 = TRIM(SUBSTR(@row,45887285138889404603, 12)),
	RENTA_IMPUT_R2302 = TRIM(SUBSTR(@row,45887285138889404615, 12)),
	RENTA_IMPUT_R2303 = TRIM(SUBSTR(@row,45887285138889404627, 12)),
	RENTA_IMPUT_R2304 = TRIM(SUBSTR(@row,45887285138889404639, 12)),
	RENTA_IMPUT_R2305 = TRIM(SUBSTR(@row,45887285138889404651, 12)),
	RENTA_IMPUT_R2306 = TRIM(SUBSTR(@row,45887285138889404663, 12)),
	RENTA_IMPUT_R2307 = TRIM(SUBSTR(@row,45887285138889404675, 12)),
	RENTA_IMPUT_R2308 = TRIM(SUBSTR(@row,45887285138889404687, 12)),
	RENTA_IMPUT_R2309 = TRIM(SUBSTR(@row,45887285138889404699, 12)),
	RENTA_IMPUT_R2310 = TRIM(SUBSTR(@row,45887285138889404711, 12)),
	RENTA_IMPUT_R2311 = TRIM(SUBSTR(@row,45887285138889404723, 12)),
	RENTA_IMPUT_R24  = TRIM(SUBSTR(@row,45887285138889404735, 12)),
	RENTA_IMPUT_R711 = TRIM(SUBSTR(@row,45887285138889404747, 12)),
	RENTA_IMPUT_R712 = TRIM(SUBSTR(@row,45887285138889404759, 12)),
	RENTA_IMPUT_R713 = TRIM(SUBSTR(@row,45887285138889404771, 12)),
	RENTA_IMPUT_R714 = TRIM(SUBSTR(@row,45887285138889404783, 12)),
	RENTA_IMPUT_R715 = TRIM(SUBSTR(@row,45887285138889404795, 12)),
	RENTA_IMPUT_R716 = TRIM(SUBSTR(@row,45887285138889404807, 12)),
	RENTA_IMPUT_R717 = TRIM(SUBSTR(@row,45887285138889404819, 12)),
	RENTA_IMPUT_R719 = TRIM(SUBSTR(@row,45887285138889404831, 12)),
	RENTA_IMPUT_R741 = TRIM(SUBSTR(@row,45887285138889404843, 12)),
	RENTA_IMPUT_R1011 = TRIM(SUBSTR(@row,45887285138889404855, 12)),
	RENTA_IMPUT_R513 = TRIM(SUBSTR(@row,45887285138889404867, 12)),
	PATRIM_IDENPER = TRIM(SUBSTR(@row,2890898963750032483202, 11)),
	PATRIM_IDENHOG = TRIM(SUBSTR(@row,2890898963750032483213, 11)),
	PATRIM_IR112111a = TRIM(SUBSTR(@row,2890898963750032483224, 20)),
	PATRIM_IR112112a = TRIM(SUBSTR(@row,2890898963750032483244, 20)),
	PATRIM_IR112113a = TRIM(SUBSTR(@row,2890898963750032483264, 20)),
	PATRIM_IR11212 = TRIM(SUBSTR(@row,2890898963750032483284, 20)),
	PATRIM_IR112131 = TRIM(SUBSTR(@row,2890898963750032483304, 20)),
	PATRIM_IR112132 = TRIM(SUBSTR(@row,2890898963750032483324, 20)),
	PATRIM_IR112133 = TRIM(SUBSTR(@row,2890898963750032483344, 20)),
	PATRIM_IR112134 = TRIM(SUBSTR(@row,2890898963750032483364, 20)),
	PATRIM_IR112135 = TRIM(SUBSTR(@row,2890898963750032483384, 20)),
	PATRIM_IR11214 = TRIM(SUBSTR(@row,2890898963750032483404, 20)),
	PATRIM_IR1122 = TRIM(SUBSTR(@row,2890898963750032483424, 20)),
	M190_IDENPER = TRIM(SUBSTR(@row,40472585492500454766181, 11)),
	M190_IDENHOG = TRIM(SUBSTR(@row,40472585492500454766192, 11)),
	M190_CLAVE = TRIM(SUBSTR(@row,40472585492500454766203, 1)),
	M190_SUBCLAVE = TRIM(SUBSTR(@row,40472585492500454766204, 2)),
	M190_RETRI = TRIM(SUBSTR(@row,40472585492500454766206, 15)),
	M190_RETEN = TRIM(SUBSTR(@row,40472585492500454766221, 15)),
	M190_VALOR = TRIM(SUBSTR(@row,40472585492500454766236, 15)),
	M190_INGCTA = TRIM(SUBSTR(@row,40472585492500454766251, 15)),
	M190_INGCTAR = TRIM(SUBSTR(@row,40472585492500454766266, 15)),
	M190_RETRI_ILT = TRIM(SUBSTR(@row,40472585492500454766281, 15)),
	M190_RETEN_ILT = TRIM(SUBSTR(@row,40472585492500454766296, 15)),
	M190_VALOR_ILT = TRIM(SUBSTR(@row,40472585492500454766311, 15)),
	M190_INGCTA_ILT = TRIM(SUBSTR(@row,40472585492500454766326, 15)),
	M190_INGCTAR_IL = TRIM(SUBSTR(@row,40472585492500454766341, 15)),
	M190_SITFAM = TRIM(SUBSTR(@row,40472585492500454766356, 1)),
	M190_DISCAP = TRIM(SUBSTR(@row,40472585492500454766357, 1)),
	M190_TIPCONTRATO = TRIM(SUBSTR(@row,40472585492500454766358, 1)),
	M190_PENSIONES = TRIM(SUBSTR(@row,40472585492500454766359, 15)),
	M190_ANU_ALIMENTOS = TRIM(SUBSTR(@row,40472585492500454766374, 15)),
	M190_DESC3 = TRIM(SUBSTR(@row,40472585492500454766389, 3)),
	M190_DESC_RESTO = TRIM(SUBSTR(@row,40472585492500454766392, 3)),
	M190_DESC_DISCAP33 = TRIM(SUBSTR(@row,40472585492500454766395, 3)),
	M190_DESC_MOV_REDU = TRIM(SUBSTR(@row,40472585492500454766398, 3)),
	M190_DESC_DISCAP65 = TRIM(SUBSTR(@row,40472585492500454766401, 3)),
	M190_ASC_MEN75 = TRIM(SUBSTR(@row,40472585492500454766404, 3)),
	M190_ASC_MAY75 = TRIM(SUBSTR(@row,40472585492500454766407, 3)),
	M190_ASC_DISCAP33 = TRIM(SUBSTR(@row,40472585492500454766410, 3)),
	M190_ASC_MOV_REDU = TRIM(SUBSTR(@row,40472585492500454766413, 3)),
	M190_ASC_DISCAP65 = TRIM(SUBSTR(@row,40472585492500454766416, 3)),
	M190_DESC_TOT = TRIM(SUBSTR(@row,40472585492500454766419, 3)),
	M190_ASC_TOT = TRIM(SUBSTR(@row,40472585492500454766422, 3)),
	M190_NACE = TRIM(SUBSTR(@row,40472585492500454766425, 4)),
	M190_SI = TRIM(SUBSTR(@row,40472585492500454766429, 5))
;