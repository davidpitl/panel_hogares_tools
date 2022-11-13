USE test;

DROP TABLE IF EXISTS tbl_unificado_2016;

CREATE TABLE tbl_unificado_2016(
	IDENPER NUMERIC(11) DEFAULT NULL,
	IDENHOG NUMERIC(11) DEFAULT NULL,
	CCAA VARCHAR(2) DEFAULT NULL,
	CPRO VARCHAR(2) DEFAULT NULL,
	CMUN VARCHAR(3) DEFAULT NULL,
	TIPOHOG VARCHAR(5) DEFAULT NULL,
	TRAMO VARCHAR(1) DEFAULT NULL,
	FACTORCAL NUMERIC(20,10) DEFAULT NULL,
	FACTORCALNACI NUMERIC(20,10) DEFAULT NULL,
	FACTORDIS NUMERIC(20,10) DEFAULT NULL,
	FACTORDISNACI NUMERIC(20,10) DEFAULT NULL,
	NACIO VARCHAR(3) DEFAULT NULL,
	TIPCONTRIB VARCHAR(2) DEFAULT NULL,
	IDENPERS_CONY NUMERIC(11) DEFAULT NULL,
	SECCION VARCHAR(10) DEFAULT NULL,
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	M11 NUMERIC(12,2) DEFAULT NULL,
	M12 NUMERIC(12,2) DEFAULT NULL,
	M13 NUMERIC(12,2) DEFAULT NULL,
	M14 NUMERIC(12,2) DEFAULT NULL,
	M15 NUMERIC(12,2) DEFAULT NULL,
	M151 NUMERIC(12,2) DEFAULT NULL,
	M152 NUMERIC(12,2) DEFAULT NULL,
	M153 NUMERIC(12,2) DEFAULT NULL,
	M1 NUMERIC(12,2) DEFAULT NULL,
	M2 NUMERIC(12,2) DEFAULT NULL,
	M21 NUMERIC(12,2) DEFAULT NULL,
	M22 NUMERIC(12,2) DEFAULT NULL,
	M23 NUMERIC(12,2) DEFAULT NULL,
	M24 NUMERIC(12,2) DEFAULT NULL,
	M3 NUMERIC(12,2) DEFAULT NULL,
	M31 NUMERIC(12,2) DEFAULT NULL,
	M32 NUMERIC(12,2) DEFAULT NULL,
	M4 NUMERIC(12,2) DEFAULT NULL,
	M41 NUMERIC(12,2) DEFAULT NULL,
	M42 NUMERIC(12,2) DEFAULT NULL,
	M43 NUMERIC(12,2) DEFAULT NULL,
	M44 NUMERIC(12,2) DEFAULT NULL,
	M5 NUMERIC(12,2) DEFAULT NULL,
	M61 NUMERIC(12,2) DEFAULT NULL,
	M611 NUMERIC(12,2) DEFAULT NULL,
	M613 NUMERIC(12,2) DEFAULT NULL,
	M62 NUMERIC(12,2) DEFAULT NULL,
	M621 NUMERIC(12,2) DEFAULT NULL,
	M622 NUMERIC(12,2) DEFAULT NULL,
	M623 NUMERIC(12,2) DEFAULT NULL,
	M624 NUMERIC(12,2) DEFAULT NULL,
	M625 NUMERIC(12,2) DEFAULT NULL,
	M626 NUMERIC(12,2) DEFAULT NULL,
	M627 NUMERIC(12,2) DEFAULT NULL,
	M628 NUMERIC(12,2) DEFAULT NULL,
	M629 NUMERIC(12,2) DEFAULT NULL,
	M6210 NUMERIC(12,2) DEFAULT NULL,
	M6 NUMERIC(12,2) DEFAULT NULL,
	M7 NUMERIC(12,2) DEFAULT NULL,
	M711 NUMERIC(12,2) DEFAULT NULL,
	M72 NUMERIC(12,2) DEFAULT NULL,
	M91 NUMERIC(12,2) DEFAULT NULL,
	M921 NUMERIC(12,2) DEFAULT NULL,
	M922 NUMERIC(12,2) DEFAULT NULL,
	M923 NUMERIC(12,2) DEFAULT NULL,
	M92 NUMERIC(12,2) DEFAULT NULL,
	M93 NUMERIC(12,2) DEFAULT NULL,
	M94 NUMERIC(12,2) DEFAULT NULL,
	M95 NUMERIC(12,2) DEFAULT NULL,
	M96 NUMERIC(12,2) DEFAULT NULL,
	M97 NUMERIC(12,2) DEFAULT NULL,
	RB NUMERIC(12,2) DEFAULT NULL,
	RBD NUMERIC(12,2) DEFAULT NULL,
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	R111 NUMERIC(12,2) DEFAULT NULL,
	R112 NUMERIC(12,2) DEFAULT NULL,
	R113 NUMERIC(12,2) DEFAULT NULL,
	R115 NUMERIC(12,2) DEFAULT NULL,
	R116 NUMERIC(12,2) DEFAULT NULL,
	R117 NUMERIC(12,2) DEFAULT NULL,
	R1111 NUMERIC(12,2) DEFAULT NULL,
	R1112 NUMERIC(12,2) DEFAULT NULL,
	R12111 NUMERIC(12,2) DEFAULT NULL,
	R12112 NUMERIC(12,2) DEFAULT NULL,
	R1212 NUMERIC(12,2) DEFAULT NULL,
	R1213 NUMERIC(12,2) DEFAULT NULL,
	R1221 NUMERIC(12,2) DEFAULT NULL,
	R1222 NUMERIC(12,2) DEFAULT NULL,
	R1223 NUMERIC(12,2) DEFAULT NULL,
	R12311 NUMERIC(12,2) DEFAULT NULL,
	R12312 NUMERIC(12,2) DEFAULT NULL,
	R12313 NUMERIC(12,2) DEFAULT NULL,
	R12314 NUMERIC(12,2) DEFAULT NULL,
	R1232 NUMERIC(12,2) DEFAULT NULL,
	R12331 NUMERIC(12,2) DEFAULT NULL,
	R12335 NUMERIC(12,2) DEFAULT NULL,
	R12336 NUMERIC(12,2) DEFAULT NULL,
	R12337 NUMERIC(12,2) DEFAULT NULL,
	R12338 NUMERIC(12,2) DEFAULT NULL,
	R123313T NUMERIC(12,2) DEFAULT NULL,
	R123314T NUMERIC(12,2) DEFAULT NULL,
	R123315T NUMERIC(12,2) DEFAULT NULL,
	R123316T NUMERIC(12,2) DEFAULT NULL,
	R123317T NUMERIC(12,2) DEFAULT NULL,
	R1234 NUMERIC(12,2) DEFAULT NULL,
	R21 NUMERIC(12,2) DEFAULT NULL,
	R22 NUMERIC(12,2) DEFAULT NULL,
	R2301 NUMERIC(12,2) DEFAULT NULL,
	R2302 NUMERIC(12,2) DEFAULT NULL,
	R2303 NUMERIC(12,2) DEFAULT NULL,
	R2304 NUMERIC(12,2) DEFAULT NULL,
	R2305 NUMERIC(12,2) DEFAULT NULL,
	R2306 NUMERIC(12,2) DEFAULT NULL,
	R2307 NUMERIC(12,2) DEFAULT NULL,
	R2308 NUMERIC(12,2) DEFAULT NULL,
	R2309 NUMERIC(12,2) DEFAULT NULL,
	R2310 NUMERIC(12,2) DEFAULT NULL,
	R2311 NUMERIC(12,2) DEFAULT NULL,
	R24  NUMERIC(12,2) DEFAULT NULL,
	R711 NUMERIC(12,2) DEFAULT NULL,
	R712 NUMERIC(12,2) DEFAULT NULL,
	R713 NUMERIC(12,2) DEFAULT NULL,
	R714 NUMERIC(12,2) DEFAULT NULL,
	R715 NUMERIC(12,2) DEFAULT NULL,
	R716 NUMERIC(12,2) DEFAULT NULL,
	R717 NUMERIC(12,2) DEFAULT NULL,
	R719 NUMERIC(12,2) DEFAULT NULL,
	R741 NUMERIC(12,2) DEFAULT NULL,
	R1011 NUMERIC(12,2) DEFAULT NULL,
	R513 NUMERIC(12,2) DEFAULT NULL,
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	IR112111a NUMERIC(20,2) DEFAULT NULL,
	IR112112a NUMERIC(20,2) DEFAULT NULL,
	IR112113a NUMERIC(20,2) DEFAULT NULL,
	IR11212 NUMERIC(20,2) DEFAULT NULL,
	IR112131 NUMERIC(20,2) DEFAULT NULL,
	IR112132 NUMERIC(20,2) DEFAULT NULL,
	IR112133 NUMERIC(20,2) DEFAULT NULL,
	IR112134 NUMERIC(20,2) DEFAULT NULL,
	IR112135 NUMERIC(20,2) DEFAULT NULL,
	IR11214 NUMERIC(20,2) DEFAULT NULL,
	IR1122 NUMERIC(20,2) DEFAULT NULL,
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	CLAVE VARCHAR(1) DEFAULT NULL,
	SUBCLAVE NUMERIC(2) DEFAULT NULL,
	RETRI NUMERIC(15,2) DEFAULT NULL,
	RETEN NUMERIC(15,2) DEFAULT NULL,
	VALOR NUMERIC(15,2) DEFAULT NULL,
	INGCTA NUMERIC(15,2) DEFAULT NULL,
	INGCTAR NUMERIC(15,2) DEFAULT NULL,
	RETRI_ILT NUMERIC(15,2) DEFAULT NULL,
	RETEN_ILT NUMERIC(15,2) DEFAULT NULL,
	VALOR_ILT NUMERIC(15,2) DEFAULT NULL,
	INGCTA_ILT NUMERIC(15,2) DEFAULT NULL,
	INGCTAR_IL NUMERIC(15,2) DEFAULT NULL,
	SITFAM VARCHAR(1) DEFAULT NULL,
	DISCAP VARCHAR(1) DEFAULT NULL,
	TIPCONTRATO VARCHAR(1) DEFAULT NULL,
	PENSIONES NUMERIC(15,2) DEFAULT NULL,
	ANU_ALIMENTOS NUMERIC(15,2) DEFAULT NULL,
	DESC3 NUMERIC(3,0) DEFAULT NULL,
	DESC_RESTO NUMERIC(3,0) DEFAULT NULL,
	DESC_DISCAP33 NUMERIC(3,0) DEFAULT NULL,
	DESC_MOV_REDU NUMERIC(3,0) DEFAULT NULL,
	DESC_DISCAP65 NUMERIC(3,0) DEFAULT NULL,
	ASC_MEN75 NUMERIC(3,0) DEFAULT NULL,
	ASC_MAY75 NUMERIC(3,0) DEFAULT NULL,
	ASC_DISCAP33 NUMERIC(3,0) DEFAULT NULL,
	ASC_MOV_REDU NUMERIC(3,0) DEFAULT NULL,
	ASC_DISCAP65 NUMERIC(3,0) DEFAULT NULL,
	DESC_TOT NUMERIC(3,0) DEFAULT NULL,
	ASC_TOT NUMERIC(3,0) DEFAULT NULL,
	NACE VARCHAR(4) DEFAULT NULL,
	SI VARCHAR(5) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;