USE panel_hogares2;

DROP TABLE IF EXISTS tbl_aux_ccaa;

CREATE TABLE tbl_aux_ccaa(
	ID NUMERIC(2) DEFAULT NULL,
	CCAA CHAR(50) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (1, 'Andalucía');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (2, 'Aragón');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (3, 'Principado de Asturias');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (4, 'Illes Balears');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (5, 'Canarias');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (6, 'Cantabria');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (7, 'Castilla y León');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (8, 'Castilla - La Mancha');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (9, 'Cataluña');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (10, 'Comunitat Valenciana');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (11, 'Extremadura');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (12, 'Galicia');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (13, 'Comunidad de Madrid');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (14, 'Región de Murcia');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (15, 'Comunidad Foral de Navarra');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (16, 'País Vasco');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (17, 'La Rioja');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (18, 'Ceuta');
INSERT INTO tbl_aux_ccaa (ID, CCAA) VALUES (19, 'Melilla');





