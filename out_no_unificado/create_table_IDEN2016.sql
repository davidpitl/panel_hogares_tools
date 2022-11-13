USE panel_hogares2;

DROP TABLE IF EXISTS tbl_IDEN2016;

CREATE TABLE tbl_IDEN2016(
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
	SECCION VARCHAR(10) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;