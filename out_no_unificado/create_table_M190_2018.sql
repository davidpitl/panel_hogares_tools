USE panel_hogares2;

DROP TABLE IF EXISTS tbl_M190_2018;

CREATE TABLE tbl_M190_2018(
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