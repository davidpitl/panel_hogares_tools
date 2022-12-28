USE panel_hogares2;

DROP TABLE IF EXISTS tbl_aux_provicia;

CREATE TABLE tbl_aux_provicia(
	IDCCAA NUMERIC(2) DEFAULT NULL,
	CCAA CHAR(50) DEFAULT NULL,
	IDPROV NUMERIC(2) DEFAULT NULL,
	PROV CHAR(50) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (1, 'Andalucía', 4, 'Almería');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (1, 'Andalucía', 11, 'Cádiz');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (1, 'Andalucía', 14, 'Córdoba');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (1, 'Andalucía', 18, 'Granada');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (1, 'Andalucía', 21, 'Huelva');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (1, 'Andalucía', 23, 'Jaén');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (1, 'Andalucía', 29, 'Málaga');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (1, 'Andalucía', 41, 'Sevilla');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (2, 'Aragón', 22, 'Huesca');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (2, 'Aragón', 44, 'Teruel');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (2, 'Aragón', 50, 'Zaragoza');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (3, 'Asturias, Principado de', 33, 'Asturias');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (4, 'Balears, Illes', 7, 'Balears, Illes');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (5, 'Canarias', 35, 'Palmas, Las');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (5, 'Canarias', 38, 'Santa Cruz de Tenerife');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (6, 'Cantabria', 39, 'Cantabria');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (7, 'Castilla y León', 5, 'Ávila');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (7, 'Castilla y León', 9, 'Burgos');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (7, 'Castilla y León', 24, 'León');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (7, 'Castilla y León', 34, 'Palencia');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (7, 'Castilla y León', 37, 'Salamanca');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (7, 'Castilla y León', 40, 'Segovia');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (7, 'Castilla y León', 42, 'Soria');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (7, 'Castilla y León', 47, 'Valladolid');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (7, 'Castilla y León', 49, 'Zamora');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (8, 'Castilla-La Mancha', 2, 'Albacete');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (8, 'Castilla-La Mancha', 13, 'Ciudad Real');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (8, 'Castilla-La Mancha', 16, 'Cuenca');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (8, 'Castilla-La Mancha', 19, 'Guadalajara');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (8, 'Castilla-La Mancha', 45, 'Toledo');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (9, 'Cataluña', 8, 'Barcelona');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (9, 'Cataluña', 17, 'Girona');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (9, 'Cataluña', 25, 'Lleida');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (9, 'Cataluña', 43, 'Tarragona');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (10, 'Comunitat Valenciana', 3, 'Alicante/Alacant');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (10, 'Comunitat Valenciana', 12, 'Castellón/Castelló');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (10, 'Comunitat Valenciana', 46, 'Valencia/València');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (11, 'Extremadura', 6, 'Badajoz');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (11, 'Extremadura', 10, 'Cáceres');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (12, 'Galicia', 15, 'Coruña, A');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (12, 'Galicia', 27, 'Lugo');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (12, 'Galicia', 32, 'Ourense');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (12, 'Galicia', 36, 'Pontevedra');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (13, 'Madrid, Comunidad de', 28, 'Madrid');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (14, 'Murcia, Región de', 30, 'Murcia');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (15, 'Navarra, Comunidad Foral de', 31, 'Navarra');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (16, 'País Vasco', 1, 'Araba/Álava');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (16, 'País Vasco', 48, 'Bizkaia');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (16, 'País Vasco', 20, 'Gipuzkoa');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (17, 'Rioja, La', 26, 'Rioja, La');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (18, 'Ceuta', 51, 'Ceuta');
INSERT INTO tbl_aux_provicia (IDCCAA, CCAA, IDPROV, PROV) VALUES (19, 'Melilla', 52, 'Melilla');
