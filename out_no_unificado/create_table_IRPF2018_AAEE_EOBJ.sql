USE panel_hogares2;

DROP TABLE IF EXISTS tbl_IRPF2018_AAEE_EOBJ;

CREATE TABLE tbl_IRPF2018_AAEE_EOBJ(
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	PAR157 NUMERIC(5,0) DEFAULT NULL,
	PAR159 NUMERIC(12,2) DEFAULT NULL,
	PAR160 NUMERIC(12,2) DEFAULT NULL,
	PAR161 NUMERIC(12,2) DEFAULT NULL,
	PAR162 NUMERIC(12,2) DEFAULT NULL,
	PAR163 NUMERIC(7,2) DEFAULT NULL,
	PAR164 NUMERIC(7,2) DEFAULT NULL,
	PAR165 NUMERIC(7,2) DEFAULT NULL,
	PAR166 NUMERIC(7,2) DEFAULT NULL,
	PAR167 NUMERIC(7,2) DEFAULT NULL,
	PAR168 NUMERIC(12,2) DEFAULT NULL,
	PAR169 NUMERIC(12,2) DEFAULT NULL,
	PAR170 NUMERIC(12,2) DEFAULT NULL,
	PAR171 NUMERIC(12,2) DEFAULT NULL,
	PAR172 NUMERIC(12,2) DEFAULT NULL,
	PAR173 NUMERIC(12,2) DEFAULT NULL,
	PAR174 NUMERIC(12,2) DEFAULT NULL,
	PAR175 NUMERIC(12,2) DEFAULT NULL,
	PAR176 NUMERIC(12,2) DEFAULT NULL,
	PAR177 NUMERIC(12,2) DEFAULT NULL,
	PAR180 NUMERIC(12,2) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;