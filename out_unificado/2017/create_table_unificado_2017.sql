USE test;

DROP TABLE IF EXISTS tbl_unificado_2017;

CREATE TABLE tbl_unificado_2017(
	IDEN_IDENPER NUMERIC(11) DEFAULT NULL,
	IDEN_IDENHOG NUMERIC(11) DEFAULT NULL,
	IDEN_CCAA CHAR(2) DEFAULT NULL,
	IDEN_CPRO CHAR(2) DEFAULT NULL,
	IDEN_CMUN CHAR(3) DEFAULT NULL,
	IDEN_TIPOHOG CHAR(5) DEFAULT NULL,
	IDEN_TRAMO CHAR(1) DEFAULT NULL,
	IDEN_FACTORCAL NUMERIC(20,10) DEFAULT NULL,
	IDEN_FACTORCALNACI NUMERIC(20,10) DEFAULT NULL,
	IDEN_FACTORDIS NUMERIC(20,10) DEFAULT NULL,
	IDEN_FACTORDISNACI NUMERIC(20,10) DEFAULT NULL,
	IDEN_NACIO CHAR(3) DEFAULT NULL,
	IDEN_TIPCONTRIB CHAR(2) DEFAULT NULL,
	IDEN_IDENPERS_CONY NUMERIC(11) DEFAULT NULL,
	IDEN_SECCION CHAR(10) DEFAULT NULL,
	RENTA_IDENPER NUMERIC(11,0) DEFAULT NULL,
	RENTA_IDENHOG NUMERIC(11,0) DEFAULT NULL,
	RENTA_M11 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M12 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M13 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M14 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M15 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M151 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M152 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M153 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M1 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M2 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M21 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M22 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M23 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M24 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M3 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M31 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M32 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M4 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M41 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M42 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M43 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M44 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M5 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M61 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M611 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M613 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M62 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M621 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M622 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M623 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M624 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M625 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M626 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M627 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M628 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M629 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M6210 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M6 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M7 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M711 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M72 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M91 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M921 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M922 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M923 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M92 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M93 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M94 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M95 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M96 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M97 NUMERIC(12,2) DEFAULT NULL,
	RENTA_RB NUMERIC(12,2) DEFAULT NULL,
	RENTA_RBD NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_IDENPER NUMERIC(11,0) DEFAULT NULL,
	RENTA_IMPUT_IDENHOG NUMERIC(11,0) DEFAULT NULL,
	RENTA_IMPUT_R111 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R112 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R113 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R115 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R116 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R117 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1111 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1112 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12111 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12112 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1212 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1213 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1221 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1222 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1223 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12311 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12312 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12313 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12314 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1232 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12331 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12335 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12336 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12337 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12338 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R123313T NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R123314T NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R123315T NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R123316T NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R123317T NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1234 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R21 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R22 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2301 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2302 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2303 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2304 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2305 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2306 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2307 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2308 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2309 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2310 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2311 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R24  NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R711 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R712 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R713 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R714 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R715 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R716 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R717 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R719 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R741 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1011 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R513 NUMERIC(12,2) DEFAULT NULL,
	PATRIM_IDENPER NUMERIC(11,0) DEFAULT NULL,
	PATRIM_IDENHOG NUMERIC(11,0) DEFAULT NULL,
	PATRIM_IR112111a NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112112a NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112113a NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR11212 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112131 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112132 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112133 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112134 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112135 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR11214 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR1122 NUMERIC(20,2) DEFAULT NULL,
	M190_IDENPER NUMERIC(11,0) DEFAULT NULL,
	M190_IDENHOG NUMERIC(11,0) DEFAULT NULL,
	M190_CLAVE CHAR(1) DEFAULT NULL,
	M190_SUBCLAVE NUMERIC(2) DEFAULT NULL,
	M190_RETRI NUMERIC(15,2) DEFAULT NULL,
	M190_RETEN NUMERIC(15,2) DEFAULT NULL,
	M190_VALOR NUMERIC(15,2) DEFAULT NULL,
	M190_INGCTA NUMERIC(15,2) DEFAULT NULL,
	M190_INGCTAR NUMERIC(15,2) DEFAULT NULL,
	M190_RETRI_ILT NUMERIC(15,2) DEFAULT NULL,
	M190_RETEN_ILT NUMERIC(15,2) DEFAULT NULL,
	M190_VALOR_ILT NUMERIC(15,2) DEFAULT NULL,
	M190_INGCTA_ILT NUMERIC(15,2) DEFAULT NULL,
	M190_INGCTAR_IL NUMERIC(15,2) DEFAULT NULL,
	M190_SITFAM CHAR(1) DEFAULT NULL,
	M190_DISCAP CHAR(1) DEFAULT NULL,
	M190_TIPCONTRATO CHAR(1) DEFAULT NULL,
	M190_PENSIONES NUMERIC(15,2) DEFAULT NULL,
	M190_ANU_ALIMENTOS NUMERIC(15,2) DEFAULT NULL,
	M190_DESC3 NUMERIC(3,0) DEFAULT NULL,
	M190_DESC_RESTO NUMERIC(3,0) DEFAULT NULL,
	M190_DESC_DISCAP33 NUMERIC(3,0) DEFAULT NULL,
	M190_DESC_MOV_REDU NUMERIC(3,0) DEFAULT NULL,
	M190_DESC_DISCAP65 NUMERIC(3,0) DEFAULT NULL,
	M190_ASC_MEN75 NUMERIC(3,0) DEFAULT NULL,
	M190_ASC_MAY75 NUMERIC(3,0) DEFAULT NULL,
	M190_ASC_DISCAP33 NUMERIC(3,0) DEFAULT NULL,
	M190_ASC_MOV_REDU NUMERIC(3,0) DEFAULT NULL,
	M190_ASC_DISCAP65 NUMERIC(3,0) DEFAULT NULL,
	M190_DESC_TOT NUMERIC(3,0) DEFAULT NULL,
	M190_ASC_TOT NUMERIC(3,0) DEFAULT NULL,
	M190_NACE CHAR(4) DEFAULT NULL,
	M190_SI CHAR(5) DEFAULT NULL,
	IDEN_IDENPER NUMERIC(11) DEFAULT NULL,
	IDEN_IDENHOG NUMERIC(11) DEFAULT NULL,
	IDEN_CCAA CHAR(2) DEFAULT NULL,
	IDEN_CPRO CHAR(2) DEFAULT NULL,
	IDEN_CMUN CHAR(3) DEFAULT NULL,
	IDEN_TIPOHOG CHAR(5) DEFAULT NULL,
	IDEN_TRAMO CHAR(1) DEFAULT NULL,
	IDEN_FACTORCAL NUMERIC(20,10) DEFAULT NULL,
	IDEN_FACTORCALNACI NUMERIC(20,10) DEFAULT NULL,
	IDEN_FACTORDIS NUMERIC(20,10) DEFAULT NULL,
	IDEN_FACTORDISNACI NUMERIC(20,10) DEFAULT NULL,
	IDEN_NACIO CHAR(3) DEFAULT NULL,
	IDEN_TIPCONTRIB CHAR(2) DEFAULT NULL,
	IDEN_IDENPERS_CONY NUMERIC(11) DEFAULT NULL,
	IDEN_SECCION CHAR(10) DEFAULT NULL,
	RENTA_IDENPER NUMERIC(11,0) DEFAULT NULL,
	RENTA_IDENHOG NUMERIC(11,0) DEFAULT NULL,
	RENTA_M11 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M12 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M13 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M14 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M15 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M151 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M152 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M153 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M1 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M2 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M21 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M22 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M23 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M24 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M3 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M31 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M32 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M4 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M41 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M42 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M43 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M44 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M5 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M61 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M611 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M613 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M62 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M621 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M622 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M623 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M624 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M625 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M626 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M627 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M628 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M629 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M6210 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M6 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M7 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M711 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M72 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M91 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M921 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M922 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M923 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M92 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M93 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M94 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M95 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M96 NUMERIC(12,2) DEFAULT NULL,
	RENTA_M97 NUMERIC(12,2) DEFAULT NULL,
	RENTA_RB NUMERIC(12,2) DEFAULT NULL,
	RENTA_RBD NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_IDENPER NUMERIC(11,0) DEFAULT NULL,
	RENTA_IMPUT_IDENHOG NUMERIC(11,0) DEFAULT NULL,
	RENTA_IMPUT_R111 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R112 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R113 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R115 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R116 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R117 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1111 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1112 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12111 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12112 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1212 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1213 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1221 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1222 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1223 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12311 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12312 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12313 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12314 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1232 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12331 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12335 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12336 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12337 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R12338 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R123313T NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R123314T NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R123315T NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R123316T NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R123317T NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1234 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R21 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R22 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2301 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2302 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2303 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2304 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2305 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2306 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2307 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2308 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2309 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2310 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R2311 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R24  NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R711 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R712 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R713 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R714 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R715 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R716 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R717 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R719 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R741 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R1011 NUMERIC(12,2) DEFAULT NULL,
	RENTA_IMPUT_R513 NUMERIC(12,2) DEFAULT NULL,
	PATRIM_IDENPER NUMERIC(11,0) DEFAULT NULL,
	PATRIM_IDENHOG NUMERIC(11,0) DEFAULT NULL,
	PATRIM_IR112111a NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112112a NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112113a NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR11212 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112131 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112132 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112133 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112134 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR112135 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR11214 NUMERIC(20,2) DEFAULT NULL,
	PATRIM_IR1122 NUMERIC(20,2) DEFAULT NULL,
	M190_IDENPER NUMERIC(11,0) DEFAULT NULL,
	M190_IDENHOG NUMERIC(11,0) DEFAULT NULL,
	M190_CLAVE CHAR(1) DEFAULT NULL,
	M190_SUBCLAVE NUMERIC(2) DEFAULT NULL,
	M190_RETRI NUMERIC(15,2) DEFAULT NULL,
	M190_RETEN NUMERIC(15,2) DEFAULT NULL,
	M190_VALOR NUMERIC(15,2) DEFAULT NULL,
	M190_INGCTA NUMERIC(15,2) DEFAULT NULL,
	M190_INGCTAR NUMERIC(15,2) DEFAULT NULL,
	M190_RETRI_ILT NUMERIC(15,2) DEFAULT NULL,
	M190_RETEN_ILT NUMERIC(15,2) DEFAULT NULL,
	M190_VALOR_ILT NUMERIC(15,2) DEFAULT NULL,
	M190_INGCTA_ILT NUMERIC(15,2) DEFAULT NULL,
	M190_INGCTAR_IL NUMERIC(15,2) DEFAULT NULL,
	M190_SITFAM CHAR(1) DEFAULT NULL,
	M190_DISCAP CHAR(1) DEFAULT NULL,
	M190_TIPCONTRATO CHAR(1) DEFAULT NULL,
	M190_PENSIONES NUMERIC(15,2) DEFAULT NULL,
	M190_ANU_ALIMENTOS NUMERIC(15,2) DEFAULT NULL,
	M190_DESC3 NUMERIC(3,0) DEFAULT NULL,
	M190_DESC_RESTO NUMERIC(3,0) DEFAULT NULL,
	M190_DESC_DISCAP33 NUMERIC(3,0) DEFAULT NULL,
	M190_DESC_MOV_REDU NUMERIC(3,0) DEFAULT NULL,
	M190_DESC_DISCAP65 NUMERIC(3,0) DEFAULT NULL,
	M190_ASC_MEN75 NUMERIC(3,0) DEFAULT NULL,
	M190_ASC_MAY75 NUMERIC(3,0) DEFAULT NULL,
	M190_ASC_DISCAP33 NUMERIC(3,0) DEFAULT NULL,
	M190_ASC_MOV_REDU NUMERIC(3,0) DEFAULT NULL,
	M190_ASC_DISCAP65 NUMERIC(3,0) DEFAULT NULL,
	M190_DESC_TOT NUMERIC(3,0) DEFAULT NULL,
	M190_ASC_TOT NUMERIC(3,0) DEFAULT NULL,
	M190_NACE CHAR(4) DEFAULT NULL,
	M190_SI CHAR(5) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;