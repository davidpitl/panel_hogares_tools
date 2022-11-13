USE panel_hogares2;

DROP TABLE IF EXISTS tbl_Renta2018;

CREATE TABLE tbl_Renta2018(
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	M11 NUMERIC(12,2) DEFAULT NULL,
	M12 NUMERIC(12,2) DEFAULT NULL,
	M13 NUMERIC(12,2) DEFAULT NULL,
	M14 NUMERIC(12,2) DEFAULT NULL,
	M15 NUMERIC(12,2) DEFAULT NULL,
	M151 NUMERIC(12,2) DEFAULT NULL,
	M152 NUMERIC(12,2) DEFAULT NULL,
	M153 NUMERIC(12,2) DEFAULT NULL,
	M1 NUMERIC(12,2) DEFAULT NULL,
	M2 NUMERIC(12,2) DEFAULT NULL,
	M21 NUMERIC(12,2) DEFAULT NULL,
	M22 NUMERIC(12,2) DEFAULT NULL,
	M23 NUMERIC(12,2) DEFAULT NULL,
	M24 NUMERIC(12,2) DEFAULT NULL,
	M3 NUMERIC(12,2) DEFAULT NULL,
	M31 NUMERIC(12,2) DEFAULT NULL,
	M32 NUMERIC(12,2) DEFAULT NULL,
	M4 NUMERIC(12,2) DEFAULT NULL,
	M41 NUMERIC(12,2) DEFAULT NULL,
	M42 NUMERIC(12,2) DEFAULT NULL,
	M43 NUMERIC(12,2) DEFAULT NULL,
	M44 NUMERIC(12,2) DEFAULT NULL,
	M5 NUMERIC(12,2) DEFAULT NULL,
	M61 NUMERIC(12,2) DEFAULT NULL,
	M611 NUMERIC(12,2) DEFAULT NULL,
	M613 NUMERIC(12,2) DEFAULT NULL,
	M62 NUMERIC(12,2) DEFAULT NULL,
	M621 NUMERIC(12,2) DEFAULT NULL,
	M622 NUMERIC(12,2) DEFAULT NULL,
	M623 NUMERIC(12,2) DEFAULT NULL,
	M624 NUMERIC(12,2) DEFAULT NULL,
	M625 NUMERIC(12,2) DEFAULT NULL,
	M626 NUMERIC(12,2) DEFAULT NULL,
	M626a NUMERIC(12,2) DEFAULT NULL,
	M627 NUMERIC(12,2) DEFAULT NULL,
	M628 NUMERIC(12,2) DEFAULT NULL,
	M629 NUMERIC(12,2) DEFAULT NULL,
	M6210 NUMERIC(12,2) DEFAULT NULL,
	M6211 NUMERIC(12,2) DEFAULT NULL,
	M6212 NUMERIC(12,2) DEFAULT NULL,
	M6 NUMERIC(12,2) DEFAULT NULL,
	M7 NUMERIC(12,2) DEFAULT NULL,
	M711 NUMERIC(12,2) DEFAULT NULL,
	M72 NUMERIC(12,2) DEFAULT NULL,
	M91 NUMERIC(12,2) DEFAULT NULL,
	M921 NUMERIC(12,2) DEFAULT NULL,
	M922 NUMERIC(12,2) DEFAULT NULL,
	M923 NUMERIC(12,2) DEFAULT NULL,
	M92 NUMERIC(12,2) DEFAULT NULL,
	M93 NUMERIC(12,2) DEFAULT NULL,
	M94 NUMERIC(12,2) DEFAULT NULL,
	M95 NUMERIC(12,2) DEFAULT NULL,
	M96 NUMERIC(12,2) DEFAULT NULL,
	M97 NUMERIC(12,2) DEFAULT NULL,
	RB NUMERIC(12,2) DEFAULT NULL,
	RBD NUMERIC(12,2) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;