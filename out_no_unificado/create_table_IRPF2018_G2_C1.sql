USE panel_hogares2;

DROP TABLE IF EXISTS tbl_IRPF2018_G2_C1;

CREATE TABLE tbl_IRPF2018_G2_C1(
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	PAR308 NUMERIC(3,0) DEFAULT NULL,
	PAR309 NUMERIC(12,2) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;