USE panel_hogares2;

DROP TABLE IF EXISTS tbl_IRPF2016_AAEE_EOBJ;

CREATE TABLE tbl_IRPF2016_AAEE_EOBJ(
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	PAR132 NUMERIC(5,0) DEFAULT NULL,
	PAR134  NUMERIC(12,2) DEFAULT NULL,
	PAR135  NUMERIC(12,2) DEFAULT NULL,
	PAR136  NUMERIC(12,2) DEFAULT NULL,
	PAR137  NUMERIC(12,2) DEFAULT NULL,
	PAR138  NUMERIC(7,2) DEFAULT NULL,
	PAR139  NUMERIC(7,2) DEFAULT NULL,
	PAR140  NUMERIC(7,2) DEFAULT NULL,
	PAR141  NUMERIC(7,2) DEFAULT NULL,
	PAR142  NUMERIC(7,2) DEFAULT NULL,
	PAR143  NUMERIC(12,2) DEFAULT NULL,
	PAR144  NUMERIC(12,2) DEFAULT NULL,
	PAR145  NUMERIC(12,2) DEFAULT NULL,
	PAR146  NUMERIC(12,2) DEFAULT NULL,
	PAR147  NUMERIC(12,2) DEFAULT NULL,
	PAR148  NUMERIC(12,2) DEFAULT NULL,
	PAR149  NUMERIC(12,2) DEFAULT NULL,
	PAR150  NUMERIC(12,2) DEFAULT NULL,
	PAR153  NUMERIC(12,2) DEFAULT NULL,
	PAR154  NUMERIC(12,2) DEFAULT NULL,
	PAR155  NUMERIC(12,2) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;