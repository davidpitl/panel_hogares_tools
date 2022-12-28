USE panel_hogares2;

# SEXO
DROP TABLE IF EXISTS tbl_aux_sexo;
CREATE TABLE tbl_aux_sexo(
	IDSEXO NUMERIC(2) DEFAULT NULL,
	SEXO CHAR(15) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO tbl_aux_sexo (IDSEXO, SEXO) VALUES (1,'Hombre');
INSERT INTO tbl_aux_sexo (IDSEXO, SEXO) VALUES (6,'Mujer');


# TIPOHOG
DROP TABLE IF EXISTS tbl_aux_tipohogar;
CREATE TABLE tbl_aux_tipohogar(
	IDTIPOHOG CHAR(5) DEFAULT NULL,
	TIPOHOG CHAR(50) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('1','Hogar con un mayor de edad');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('1.1','Hogar unipersonal');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('1.1.1','Menor de 65 años');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('1.1.2','Mayor de 65 años');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('1.2','Hogar con más de una persona');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('2','Hogar con más de un mayor de edad');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('2.1','Algún miembro menor de 18 años');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('2.1.1','Hogar con un menor');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('2.1.2','Hogar con dos menores');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('2.1.3','Hogar con tres o más menores');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('2.2','Algún miembro mayor de 65 años (sin menores)');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('2.2.1','Hogar de dos miembros');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('2.2.2','Hogar de más de dos miembros');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('2.3','Otros');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('2.3.1','Hogar de dos miembros');
INSERT INTO tbl_aux_tipohogar (IDTIPOHOG, TIPOHOG) VALUES ('2.3.2','Hogar de más de dos miembros');


# TRAMO RENTA
DROP TABLE IF EXISTS tbl_aux_tramorenta;
CREATE TABLE tbl_aux_tramorenta(
	IDTRAMORENTA CHAR(1) DEFAULT NULL,
	TRAMORENTA CHAR(30) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO tbl_aux_tramorenta (IDTRAMORENTA, TRAMORENTA) VALUES ('N','Sin información');
INSERT INTO tbl_aux_tramorenta (IDTRAMORENTA, TRAMORENTA) VALUES ('0','Menor o igual a cero');
INSERT INTO tbl_aux_tramorenta (IDTRAMORENTA, TRAMORENTA) VALUES ('1','Menos de 6 mil');
INSERT INTO tbl_aux_tramorenta (IDTRAMORENTA, TRAMORENTA) VALUES ('2','De 6 a 12 mil');
INSERT INTO tbl_aux_tramorenta (IDTRAMORENTA, TRAMORENTA) VALUES ('3','12 a 22 mil');
INSERT INTO tbl_aux_tramorenta (IDTRAMORENTA, TRAMORENTA) VALUES ('4','22 a 60 mil');
INSERT INTO tbl_aux_tramorenta (IDTRAMORENTA, TRAMORENTA) VALUES ('5','60 a 150 mil');
INSERT INTO tbl_aux_tramorenta (IDTRAMORENTA, TRAMORENTA) VALUES ('6','150 a 300 mil');
INSERT INTO tbl_aux_tramorenta (IDTRAMORENTA, TRAMORENTA) VALUES ('7','Más de 300 mil');


# TIPCONTRIB
DROP TABLE IF EXISTS tbl_aux_tipocontribucion;
CREATE TABLE tbl_aux_tipocontribucion(
	IDTIPCONTRIB CHAR(2) DEFAULT NULL,
	TIPCONTRIB CHAR(30) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO tbl_aux_tipocontribucion (IDTIPCONTRIB, TIPCONTRIB) VALUES ('','Sin información');
INSERT INTO tbl_aux_tipocontribucion (IDTIPCONTRIB, TIPCONTRIB) VALUES ('I','Individual');
INSERT INTO tbl_aux_tipocontribucion (IDTIPCONTRIB, TIPCONTRIB) VALUES ('CC','Conjunta casados');
INSERT INTO tbl_aux_tipocontribucion (IDTIPCONTRIB, TIPCONTRIB) VALUES ('CM','Conjunta monoparental');
INSERT INTO tbl_aux_tipocontribucion (IDTIPCONTRIB, TIPCONTRIB) VALUES ('ND','No declarante');
INSERT INTO tbl_aux_tipocontribucion (IDTIPCONTRIB, TIPCONTRIB) VALUES ('NR','No residente');


# TIPODEC Número de declarante
DROP TABLE IF EXISTS tbl_aux_tipodeclarante;
CREATE TABLE tbl_aux_tipodeclarante(
	IDTIPODEC CHAR(3) DEFAULT NULL,
	TIPODEC CHAR(60) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO tbl_aux_tipodeclarante (IDTIPODEC, TIPODEC) VALUES ('T1','Declarante');
INSERT INTO tbl_aux_tipodeclarante (IDTIPODEC, TIPODEC) VALUES ('T2','En conjuntas, declarantes que tienen cónyuge en el panel');
INSERT INTO tbl_aux_tipodeclarante (IDTIPODEC, TIPODEC) VALUES ('T21','En conjuntas, cónyuge sin declarante en el panel');


# ESTCV Estado civil del declarante
DROP TABLE IF EXISTS tbl_aux_estadocivil;
CREATE TABLE tbl_aux_estadocivil(
	IDESTCV NUMERIC(1) DEFAULT NULL,
	ESTCV CHAR(40) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO tbl_aux_estadocivil (IDESTCV, ESTCV) VALUES (1,'Soltero');
INSERT INTO tbl_aux_estadocivil (IDESTCV, ESTCV) VALUES (2,'Casado');
INSERT INTO tbl_aux_estadocivil (IDESTCV, ESTCV) VALUES (3,'Viudo');
INSERT INTO tbl_aux_estadocivil (IDESTCV, ESTCV) VALUES (4,'Divorciado o separado legalmente');


# SEXODEC Sexo del declarante
DROP TABLE IF EXISTS tbl_aux_sexodeclarante;
CREATE TABLE tbl_aux_sexodeclarante(
	IDSEXODEC NUMERIC(1) DEFAULT NULL,
	SEXODEC CHAR(30) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO tbl_aux_sexodeclarante (IDSEXODEC, SEXODEC) VALUES (0,'Desconocido');
INSERT INTO tbl_aux_sexodeclarante (IDSEXODEC, SEXODEC) VALUES (1,'Hombre');
INSERT INTO tbl_aux_sexodeclarante (IDSEXODEC, SEXODEC) VALUES (2,'Mujer');


# TIPOTRIB Tipo de tributación
DROP TABLE IF EXISTS tbl_aux_tipotributacion;
CREATE TABLE tbl_aux_tipotributacion(
	IDTIPOTRIB CHAR(1) DEFAULT NULL,
	TIPOTRIB CHAR(20) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO tbl_aux_tipotributacion (IDTIPOTRIB, TIPOTRIB) VALUES ('I','Individual');
INSERT INTO tbl_aux_tipotributacion (IDTIPOTRIB, TIPOTRIB) VALUES ('C','Conjunta');


# MINUSD Grado de minusvalía
DROP TABLE IF EXISTS tbl_aux_gradominusvalia;
CREATE TABLE tbl_aux_gradominusvalia(
	IDMINUSD CHAR(3) DEFAULT NULL,
	MINUSD CHAR(70) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO tbl_aux_gradominusvalia (IDMINUSD, MINUSD) VALUES ('000','Sin minusvalía');
INSERT INTO tbl_aux_gradominusvalia (IDMINUSD, MINUSD) VALUES ('001','Minusvalía > 33% y < 65%');
INSERT INTO tbl_aux_gradominusvalia (IDMINUSD, MINUSD) VALUES ('002','Minusvalía > 33% y < 65% con movilidad reducida');
INSERT INTO tbl_aux_gradominusvalia (IDMINUSD, MINUSD) VALUES ('003','Minusvalía > 65%');
INSERT INTO tbl_aux_gradominusvalia (IDMINUSD, MINUSD) VALUES ('004','Incapacitación judicial por sentencia de la jurisdicción civil');


