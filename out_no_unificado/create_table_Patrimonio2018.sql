USE panel_hogares2;

DROP TABLE IF EXISTS tbl_Patrimonio2018;

CREATE TABLE tbl_Patrimonio2018(
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	IR112111a NUMERIC(20,2) DEFAULT NULL,
	IR112112a NUMERIC(20,2) DEFAULT NULL,
	IR112113a NUMERIC(20,2) DEFAULT NULL,
	IR11212 NUMERIC(20,2) DEFAULT NULL,
	IR112131 NUMERIC(20,2) DEFAULT NULL,
	IR112132 NUMERIC(20,2) DEFAULT NULL,
	IR112133 NUMERIC(20,2) DEFAULT NULL,
	IR112134 NUMERIC(20,2) DEFAULT NULL,
	IR112135 NUMERIC(20,2) DEFAULT NULL,
	IR11214 NUMERIC(20,2) DEFAULT NULL,
	IR1122 NUMERIC(20,2) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;