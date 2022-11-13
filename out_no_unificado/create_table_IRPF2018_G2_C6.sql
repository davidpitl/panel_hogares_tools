USE panel_hogares2;

DROP TABLE IF EXISTS tbl_IRPF2018_G2_C6;

CREATE TABLE tbl_IRPF2018_G2_C6(
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	PAR388 NUMERIC(3,0) DEFAULT NULL,
	PAR389 NUMERIC(12,2) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;