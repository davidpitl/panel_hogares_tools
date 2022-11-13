USE panel_hogares2;

DROP TABLE IF EXISTS tbl_IRPF2019_G1_C1;

CREATE TABLE tbl_IRPF2019_G1_C1(
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	PAR281 NUMERIC(3,0) DEFAULT NULL,
	PAR282 NUMERIC(12,2) DEFAULT NULL,
	PAR283 NUMERIC(12,2) DEFAULT NULL,
	PAR284 NUMERIC(12,2) DEFAULT NULL,
	PAR285 NUMERIC(12,2) DEFAULT NULL,
	PAR286 NUMERIC(12,2) DEFAULT NULL,
	PAR287 NUMERIC(12,2) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;