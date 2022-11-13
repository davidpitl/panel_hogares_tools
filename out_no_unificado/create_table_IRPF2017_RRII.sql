USE panel_hogares2;

DROP TABLE IF EXISTS tbl_IRPF2017_RRII;

CREATE TABLE tbl_IRPF2017_RRII(
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	RefCatastral NUMERIC(11,0) DEFAULT NULL,
	P55 NUMERIC(3,0) DEFAULT NULL,
	P57 NUMERIC(6,2) DEFAULT NULL,
	P58 NUMERIC(6,2) DEFAULT NULL,
	P61 NUMERIC(1,0) DEFAULT NULL,
	P59 NUMERIC(1,0) DEFAULT NULL,
	P60 NUMERIC(1,0) DEFAULT NULL,
	P67 NUMERIC(4,0) DEFAULT NULL,
	P66 NUMERIC(6,2) DEFAULT NULL,
	P68 NUMERIC(12,2) DEFAULT NULL,
	P69 NUMERIC(12,2) DEFAULT NULL,
	P70 NUMERIC(12,2) DEFAULT NULL,
	P71 NUMERIC(12,2) DEFAULT NULL,
	P72 NUMERIC(12,2) DEFAULT NULL,
	P75 NUMERIC(12,2) DEFAULT NULL,
	P73 NUMERIC(12,2) DEFAULT NULL,
	P74 NUMERIC(12,2) DEFAULT NULL,
	P77 NUMERIC(12,2) DEFAULT NULL,
	P76 NUMERIC(12,2) DEFAULT NULL,
	P78 NUMERIC(12,2) DEFAULT NULL,
	P79 NUMERIC(12,2) DEFAULT NULL,
	P80 NUMERIC(12,2) DEFAULT NULL,
	P81 NUMERIC(12,2) DEFAULT NULL,
	P82 NUMERIC(12,2) DEFAULT NULL,
	P83 NUMERIC(12,2) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;