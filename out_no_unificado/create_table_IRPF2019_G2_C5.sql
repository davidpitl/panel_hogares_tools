USE panel_hogares2;

DROP TABLE IF EXISTS tbl_IRPF2019_G2_C5;

CREATE TABLE tbl_IRPF2019_G2_C5(
	IDENPER NUMERIC(11,0) DEFAULT NULL,
	IDENHOG NUMERIC(11,0) DEFAULT NULL,
	PAR1624  NUMERIC(3,0) DEFAULT NULL,
	PAR1625  NUMERIC(2,0) DEFAULT NULL,
	PAR1626  NUMERIC(2,0) DEFAULT NULL,
	PAR1627  NUMERIC(2,0) DEFAULT NULL,
	PAR1628 NUMERIC(20,0) DEFAULT NULL,
	PAR1629 NUMERIC(20,0) DEFAULT NULL,
	PAR1630 NUMERIC(20,0) DEFAULT NULL,
	PAR1631  NUMERIC(10,0) DEFAULT NULL,
	PAR1632  NUMERIC(10,0) DEFAULT NULL,
	PAR1633  NUMERIC(12,2) DEFAULT NULL,
	PAR1634  NUMERIC(12,2) DEFAULT NULL,
	PAR1635  NUMERIC(12,2) DEFAULT NULL,
	PAR1636  NUMERIC(12,2) DEFAULT NULL,
	PAR1637  NUMERIC(12,2) DEFAULT NULL,
	PAR1638  NUMERIC(12,2) DEFAULT NULL,
	PAR1639  NUMERIC(12,2) DEFAULT NULL,
	PAR1640  NUMERIC(12,2) DEFAULT NULL,
	PAR1641  NUMERIC(12,2) DEFAULT NULL,
	PAR1642  NUMERIC(12,2) DEFAULT NULL,
	PAR1643  NUMERIC(12,2) DEFAULT NULL,
	PAR1644  NUMERIC(12,2) DEFAULT NULL,
	PAR1645  NUMERIC(12,2) DEFAULT NULL,
	PAR1646  NUMERIC(12,2) DEFAULT NULL,
	PAR1647  NUMERIC(5,0) DEFAULT NULL,
	PAR1648  NUMERIC(12,2) DEFAULT NULL,
	PAR1649  NUMERIC(12,2) DEFAULT NULL,
	PAR1650  NUMERIC(12,2) DEFAULT NULL,
	PAR1651  NUMERIC(12,2) DEFAULT NULL,
	PAR1652  NUMERIC(12,2) DEFAULT NULL,
	PAR1653  NUMERIC(12,2) DEFAULT NULL,
	PAR1654  NUMERIC(12,2) DEFAULT NULL
) engine=columnstore CHARSET=latin1 COLLATE=latin1_spanish_ci;