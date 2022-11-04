USE panel_hogares2;

DROP TABLE IF EXISTS tbl_IRPF2019_G1_C3;

CREATE TABLE tbl_IRPF2019_G1_C3(
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	PAR298 NUMERIC(3,0) DEFAULT NULL,
	PAR299 NUMERIC(12,2) DEFAULT NULL,
	PAR300 NUMERIC(12,2) DEFAULT NULL,
	PAR301 NUMERIC(12,2) DEFAULT NULL,
	PAR302 NUMERIC(12,2) DEFAULT NULL,
	PAR303 NUMERIC(12,2) DEFAULT NULL,
	PAR304 NUMERIC(12,2) DEFAULT NULL,
	PAR305 NUMERIC(12,2) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;