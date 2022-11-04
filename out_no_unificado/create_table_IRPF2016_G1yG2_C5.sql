USE panel_hogares2;

DROP TABLE IF EXISTS tbl_IRPF2016_G1yG2_C5;

CREATE TABLE tbl_IRPF2016_G1yG2_C5(
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	TIPPER CHAR(3) DEFAULT NULL,
	CTIT CHAR(2) DEFAULT NULL,
	PAR253 NUMERIC(12,2) DEFAULT NULL,
	PAR254 NUMERIC(12,2) DEFAULT NULL,
	PAR255 NUMERIC(12,2) DEFAULT NULL,
	PAR256 NUMERIC(12,2) DEFAULT NULL,
	PAR257 NUMERIC(12,2) DEFAULT NULL,
	PAR258 NUMERIC(12,2) DEFAULT NULL,
	PAR259 NUMERIC(12,2) DEFAULT NULL,
	PAR260 NUMERIC(12,2) DEFAULT NULL,
	PAR261 NUMERIC(12,2) DEFAULT NULL,
	PAR262 NUMERIC(12,2) DEFAULT NULL,
	PAR263 NUMERIC(12,2) DEFAULT NULL,
	PAR264 NUMERIC(12,2) DEFAULT NULL,
	PAR265 NUMERIC(12,2) DEFAULT NULL,
	PAR266 NUMERIC(12,2) DEFAULT NULL,
	PAR267 NUMERIC(12,2) DEFAULT NULL,
	PAR268 NUMERIC(12,2) DEFAULT NULL,
	PAR269 NUMERIC(12,2) DEFAULT NULL,
	PAR270 NUMERIC(12,2) DEFAULT NULL,
	PAR335 NUMERIC(12,2) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;