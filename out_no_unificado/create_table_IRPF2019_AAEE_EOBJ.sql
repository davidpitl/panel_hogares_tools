USE panel_hogares2;

DROP TABLE IF EXISTS tbl_IRPF2019_AAEE_EOBJ;

CREATE TABLE tbl_IRPF2019_AAEE_EOBJ(
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	PAR1442 NUMERIC(5,0) DEFAULT NULL,
	PAR1465 NUMERIC(12,2) DEFAULT NULL,
	PAR1466 NUMERIC(12,2) DEFAULT NULL,
	PAR1467 NUMERIC(12,2) DEFAULT NULL,
	PAR1468 NUMERIC(12,2) DEFAULT NULL,
	PAR1469 NUMERIC(12,2) DEFAULT NULL,
	PAR1470 NUMERIC(12,2) DEFAULT NULL,
	PAR1471 NUMERIC(12,2) DEFAULT NULL,
	PAR1472 NUMERIC(12,2) DEFAULT NULL,
	PAR1473 NUMERIC(12,2) DEFAULT NULL,
	PAR1474 NUMERIC(12,2) DEFAULT NULL,
	PAR1475 NUMERIC(12,2) DEFAULT NULL,
	PAR1476 NUMERIC(12,2) DEFAULT NULL,
	PAR1477 NUMERIC(12,2) DEFAULT NULL,
	PAR1478 NUMERIC(12,2) DEFAULT NULL,
	PAR1479 NUMERIC(12,2) DEFAULT NULL,
	PAR1480 NUMERIC(12,2) DEFAULT NULL,
	PAR1481 NUMERIC(12,2) DEFAULT NULL,
	PAR1482 NUMERIC(12,2) DEFAULT NULL,
	PAR1483 NUMERIC(12,2) DEFAULT NULL,
	PAR1484 NUMERIC(12,2) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;