USE panel_hogares2;

CREATE TABLE tbl_unificado_hogares 
AS 
SELECT
	2016,
	i_2016.IDENPER,
	i_2016.IDENHOG,
	i_2016.CCAA,
	i_2016.CPRO,
	i_2016.CMUN,
	i_2016.SECCION,
	i_2016.TIPOHOG,
	i_2016.TRAMO,
	i_2016.FACTORCAL,
	i_2016.FACTORCALNACI,
	i_2016.FACTORDIS,
	i_2016.FACTORDISNACI,
	i_2016.NACIO,
	i_2016.TIPCONTRIB,
	i_2016.IDENPERS_CONY,
	r_2016.M11,
	r_2016.M12,
	r_2016.M13,
	r_2016.M14,
	r_2016.M15,
	r_2016.M151,
	r_2016.M152,
	r_2016.M153,
	r_2016.M1,
	r_2016.M2,
	r_2016.M21,
	r_2016.M22,
	r_2016.M23,
	r_2016.M24,
	r_2016.M3,
	r_2016.M31,
	r_2016.M32,
	r_2016.M4,
	r_2016.M41,
	r_2016.M42,
	r_2016.M43,
	r_2016.M44,
	r_2016.M5,
	r_2016.M61,
	r_2016.M611,
	r_2016.M613,
	r_2016.M621,
	r_2016.M622,
	r_2016.M623,
	r_2016.M624,
	r_2016.M625,
	r_2016.M626,
	r_2016.M627,
	r_2016.M628,
	r_2016.M629,
	r_2016.M6210,
	r_2016.M6,
	r_2016.M7,
	r_2016.M711,
	r_2016.M72,
	r_2016.M91,
	r_2016.M921,
	r_2016.M922,
	r_2016.M923,
	r_2016.M92,
	r_2016.M93,
	r_2016.M94,
	r_2016.M95,
	r_2016.M96,
	r_2016.M97,
	r_2016.RB,
	r_2016.RBD,
	ri_2016.R111,
	ri_2016.R112,
	ri_2016.R113,
	ri_2016.R115,
	ri_2016.R116,
	ri_2016.R117,
	ri_2016.R1111,
	ri_2016.R1112,
	ri_2016.R12111,
	ri_2016.R12112,
	ri_2016.R1212,
	ri_2016.R1213,
	ri_2016.R1221,
	ri_2016.R1222,
	ri_2016.R1223,
	ri_2016.R12311,
	ri_2016.R12312,
	ri_2016.R12313,
	ri_2016.R12314,
	ri_2016.R1232,
	ri_2016.R12331,
	ri_2016.R12335,
	ri_2016.R12336,
	ri_2016.R12337,
	ri_2016.R12338,
	ri_2016.R123313T,
	ri_2016.R123314T,
	ri_2016.R123315T,
	ri_2016.R123316T,
	ri_2016.R123317T,
	ri_2016.R1234,
	ri_2016.R21,
	ri_2016.R22,
	ri_2016.R2301,
	ri_2016.R2302,
	ri_2016.R2303,
	ri_2016.R2304,
	ri_2016.R2305,
	ri_2016.R2306,
	ri_2016.R2307,
	ri_2016.R2308,
	ri_2016.R2309,
	ri_2016.R2310,
	ri_2016.R2311,
	ri_2016.R24 ,
	ri_2016.R711,
	ri_2016.R712,
	ri_2016.R713,
	ri_2016.R714,
	ri_2016.R715,
	ri_2016.R716,
	ri_2016.R717,
	ri_2016.R719,
	ri_2016.R741,
	ri_2016.R1011,
	ri_2016.R513,
	p_2016.IR112111a,
	p_2016.IR112112a,
	p_2016.IR112113a,
	p_2016.IR11212,
	p_2016.IR112131,
	p_2016.IR112132,
	p_2016.IR112133,
	p_2016.IR112134,
	p_2016.IR112135,
	p_2016.IR11214,
	p_2016.IR1122,
	m2016.RETRI,
	m2016.RETEN,
	m2016.VALOR,
	m2016.INGCTA,
	m2016.INGCTAR,
	m2016.RETRI_ILT,
	m2016.RETEN_ILT,
	m2016.VALOR_ILT,
	m2016.INGCTA_ILT,
	m2016.INGCTAR_IL,
	m2016.PENSIONES,
	m2016.ANU_ALIMENTOS,
	m2016.DESC3,
	m2016.DESC_RESTO,
	m2016.DESC_DISCAP33,
	m2016.DESC_MOV_REDU,
	m2016.DESC_DISCAP65,
	m2016.ASC_MEN75,
	m2016.ASC_MAY75,
	m2016.ASC_DISCAP33,
	m2016.ASC_MOV_REDU,
	m2016.ASC_DISCAP65,
	m2016.DESC_TOT,
	m2016.ASC_TOT
FROM tbl_IDEN2016 as i_2016
LEFT JOIN tbl_Renta2016 as r_2016
ON i_2016.IDENPER = r_2016.IDENPER
LEFT JOIN tbl_RentaImputacion2016 as ri_2016
ON i_2016.IDENPER = ri_2016.IDENPER
LEFT JOIN tbl_Patrimonio2016 as p_2016
ON i_2016.IDENPER = p_2016.IDENPER
LEFT JOIN
(
	SELECT
		m_2016.IDENPER,
		sum(m_2016.RETRI) as RETRI,
		sum(m_2016.RETEN) as RETEN,
		sum(m_2016.VALOR) as VALOR,
		sum(m_2016.INGCTA) as INGCTA,
		sum(m_2016.INGCTAR) as INGCTAR,
		sum(m_2016.RETRI_ILT) as RETRI_ILT,
		sum(m_2016.RETEN_ILT) as RETEN_ILT,
		sum(m_2016.VALOR_ILT) as VALOR_ILT,
		sum(m_2016.INGCTA_ILT) as INGCTA_ILT,
		sum(m_2016.INGCTAR_IL) as INGCTAR_IL,
		sum(m_2016.PENSIONES) as PENSIONES,
		sum(m_2016.ANU_ALIMENTOS) as ANU_ALIMENTOS,
		sum(m_2016.DESC3) as DESC3,
		sum(m_2016.DESC_RESTO) as DESC_RESTO,
		sum(m_2016.DESC_DISCAP33) as DESC_DISCAP33,
		sum(m_2016.DESC_MOV_REDU) as DESC_MOV_REDU,
		sum(m_2016.DESC_DISCAP65) as DESC_DISCAP65,
		sum(m_2016.ASC_MEN75) as ASC_MEN75,
		sum(m_2016.ASC_MAY75) as ASC_MAY75,
		sum(m_2016.ASC_DISCAP33) as ASC_DISCAP33,
		sum(m_2016.ASC_MOV_REDU) as ASC_MOV_REDU,
		sum(m_2016.ASC_DISCAP65) as ASC_DISCAP65,
		sum(m_2016.DESC_TOT) as DESC_TOT,
		sum(m_2016.ASC_TOT) as ASC_TOT
	FROM tbl_M190_2016 m_2016
	GROUP BY m_2016.IDENPER
) m2016
ON i_2016.IDENPER = m2016.IDENPER;


INSERT INTO tbl_unificado_hogares
SELECT
	2017,
	i_2017.IDENPER,
	i_2017.IDENHOG,
	i_2017.CCAA,
	i_2017.CPRO,
	i_2017.CMUN,
	i_2017.SECCION,
	i_2017.TIPOHOG,
	i_2017.TRAMO,
	i_2017.FACTORCAL,
	i_2017.FACTORCALNACI,
	i_2017.FACTORDIS,
	i_2017.FACTORDISNACI,
	i_2017.NACIO,
	i_2017.TIPCONTRIB,
	i_2017.IDENPERS_CONY,
	r_2017.M11,
	r_2017.M12,
	r_2017.M13,
	r_2017.M14,
	r_2017.M15,
	r_2017.M151,
	r_2017.M152,
	r_2017.M153,
	r_2017.M1,
	r_2017.M2,
	r_2017.M21,
	r_2017.M22,
	r_2017.M23,
	r_2017.M24,
	r_2017.M3,
	r_2017.M31,
	r_2017.M32,
	r_2017.M4,
	r_2017.M41,
	r_2017.M42,
	r_2017.M43,
	r_2017.M44,
	r_2017.M5,
	r_2017.M61,
	r_2017.M611,
	r_2017.M613,
	r_2017.M621,
	r_2017.M622,
	r_2017.M623,
	r_2017.M624,
	r_2017.M625,
	r_2017.M626,
	r_2017.M627,
	r_2017.M628,
	r_2017.M629,
	r_2017.M6210,
	r_2017.M6,
	r_2017.M7,
	r_2017.M711,
	r_2017.M72,
	r_2017.M91,
	r_2017.M921,
	r_2017.M922,
	r_2017.M923,
	r_2017.M92,
	r_2017.M93,
	r_2017.M94,
	r_2017.M95,
	r_2017.M96,
	r_2017.M97,
	r_2017.RB,
	r_2017.RBD,
	ri_2017.R111,
	ri_2017.R112,
	ri_2017.R113,
	ri_2017.R115,
	ri_2017.R116,
	ri_2017.R117,
	ri_2017.R1111,
	ri_2017.R1112,
	ri_2017.R12111,
	ri_2017.R12112,
	ri_2017.R1212,
	ri_2017.R1213,
	ri_2017.R1221,
	ri_2017.R1222,
	ri_2017.R1223,
	ri_2017.R12311,
	ri_2017.R12312,
	ri_2017.R12313,
	ri_2017.R12314,
	ri_2017.R1232,
	ri_2017.R12331,
	ri_2017.R12335,
	ri_2017.R12336,
	ri_2017.R12337,
	ri_2017.R12338,
	ri_2017.R123313T,
	ri_2017.R123314T,
	ri_2017.R123315T,
	ri_2017.R123316T,
	ri_2017.R123317T,
	ri_2017.R1234,
	ri_2017.R21,
	ri_2017.R22,
	ri_2017.R2301,
	ri_2017.R2302,
	ri_2017.R2303,
	ri_2017.R2304,
	ri_2017.R2305,
	ri_2017.R2306,
	ri_2017.R2307,
	ri_2017.R2308,
	ri_2017.R2309,
	ri_2017.R2310,
	ri_2017.R2311,
	ri_2017.R24 ,
	ri_2017.R711,
	ri_2017.R712,
	ri_2017.R713,
	ri_2017.R714,
	ri_2017.R715,
	ri_2017.R716,
	ri_2017.R717,
	ri_2017.R719,
	ri_2017.R741,
	ri_2017.R1011,
	ri_2017.R513,
	p_2017.IR112111a,
	p_2017.IR112112a,
	p_2017.IR112113a,
	p_2017.IR11212,
	p_2017.IR112131,
	p_2017.IR112132,
	p_2017.IR112133,
	p_2017.IR112134,
	p_2017.IR112135,
	p_2017.IR11214,
	p_2017.IR1122,
	m2017.RETRI,
	m2017.RETEN,
	m2017.VALOR,
	m2017.INGCTA,
	m2017.INGCTAR,
	m2017.RETRI_ILT,
	m2017.RETEN_ILT,
	m2017.VALOR_ILT,
	m2017.INGCTA_ILT,
	m2017.INGCTAR_IL,
	m2017.PENSIONES,
	m2017.ANU_ALIMENTOS,
	m2017.DESC3,
	m2017.DESC_RESTO,
	m2017.DESC_DISCAP33,
	m2017.DESC_MOV_REDU,
	m2017.DESC_DISCAP65,
	m2017.ASC_MEN75,
	m2017.ASC_MAY75,
	m2017.ASC_DISCAP33,
	m2017.ASC_MOV_REDU,
	m2017.ASC_DISCAP65,
	m2017.DESC_TOT,
	m2017.ASC_TOT
FROM tbl_IDEN2017 as i_2017
LEFT JOIN tbl_Renta2017 as r_2017
ON i_2017.IDENPER = r_2017.IDENPER
LEFT JOIN tbl_RentaImputacion2017 as ri_2017
ON i_2017.IDENPER = ri_2017.IDENPER
LEFT JOIN tbl_Patrimonio2017 as p_2017
ON i_2017.IDENPER = p_2017.IDENPER
LEFT JOIN
(
	SELECT
		m_2017.IDENPER,
		sum(m_2017.RETRI) as RETRI,
		sum(m_2017.RETEN) as RETEN,
		sum(m_2017.VALOR) as VALOR,
		sum(m_2017.INGCTA) as INGCTA,
		sum(m_2017.INGCTAR) as INGCTAR,
		sum(m_2017.RETRI_ILT) as RETRI_ILT,
		sum(m_2017.RETEN_ILT) as RETEN_ILT,
		sum(m_2017.VALOR_ILT) as VALOR_ILT,
		sum(m_2017.INGCTA_ILT) as INGCTA_ILT,
		sum(m_2017.INGCTAR_IL) as INGCTAR_IL,
		sum(m_2017.PENSIONES) as PENSIONES,
		sum(m_2017.ANU_ALIMENTOS) as ANU_ALIMENTOS,
		sum(m_2017.DESC3) as DESC3,
		sum(m_2017.DESC_RESTO) as DESC_RESTO,
		sum(m_2017.DESC_DISCAP33) as DESC_DISCAP33,
		sum(m_2017.DESC_MOV_REDU) as DESC_MOV_REDU,
		sum(m_2017.DESC_DISCAP65) as DESC_DISCAP65,
		sum(m_2017.ASC_MEN75) as ASC_MEN75,
		sum(m_2017.ASC_MAY75) as ASC_MAY75,
		sum(m_2017.ASC_DISCAP33) as ASC_DISCAP33,
		sum(m_2017.ASC_MOV_REDU) as ASC_MOV_REDU,
		sum(m_2017.ASC_DISCAP65) as ASC_DISCAP65,
		sum(m_2017.DESC_TOT) as DESC_TOT,
		sum(m_2017.ASC_TOT) as ASC_TOT
	FROM tbl_M190_2017 m_2017
	GROUP BY m_2017.IDENPER
) m2017
ON i_2017.IDENPER = m2017.IDENPER;


INSERT INTO tbl_unificado_hogares
SELECT
	2018,
	i_2018.IDENPER,
	i_2018.IDENHOG,
	i_2018.CCAA,
	i_2018.CPRO,
	i_2018.CMUN,
	i_2018.SECCION,
	i_2018.TIPOHOG,
	i_2018.TRAMO,
	i_2018.FACTORCAL,
	i_2018.FACTORCALNACI,
	i_2018.FACTORDIS,
	i_2018.FACTORDISNACI,
	i_2018.NACIO,
	i_2018.TIPCONTRIB,
	i_2018.IDENPERS_CONY,
	r_2018.M11,
	r_2018.M12,
	r_2018.M13,
	r_2018.M14,
	r_2018.M15,
	r_2018.M151,
	r_2018.M152,
	r_2018.M153,
	r_2018.M1,
	r_2018.M2,
	r_2018.M21,
	r_2018.M22,
	r_2018.M23,
	r_2018.M24,
	r_2018.M3,
	r_2018.M31,
	r_2018.M32,
	r_2018.M4,
	r_2018.M41,
	r_2018.M42,
	r_2018.M43,
	r_2018.M44,
	r_2018.M5,
	r_2018.M61,
	r_2018.M611,
	r_2018.M613,
	r_2018.M621,
	r_2018.M622,
	r_2018.M623,
	r_2018.M624,
	r_2018.M625,
	r_2018.M626,
	r_2018.M627,
	r_2018.M628,
	r_2018.M629,
	r_2018.M6210,
	r_2018.M6,
	r_2018.M7,
	r_2018.M711,
	r_2018.M72,
	r_2018.M91,
	r_2018.M921,
	r_2018.M922,
	r_2018.M923,
	r_2018.M92,
	r_2018.M93,
	r_2018.M94,
	r_2018.M95,
	r_2018.M96,
	r_2018.M97,
	r_2018.RB,
	r_2018.RBD,
	ri_2018.R111,
	ri_2018.R112,
	ri_2018.R113,
	ri_2018.R115,
	ri_2018.R116,
	ri_2018.R117,
	ri_2018.R1111,
	ri_2018.R1112,
	ri_2018.R12111,
	ri_2018.R12112,
	ri_2018.R1212,
	ri_2018.R1213,
	ri_2018.R1221,
	ri_2018.R1222,
	ri_2018.R1223,
	ri_2018.R12311,
	ri_2018.R12312,
	ri_2018.R12313,
	ri_2018.R12314,
	ri_2018.R1232,
	ri_2018.R12331,
	ri_2018.R12335,
	ri_2018.R12336,
	ri_2018.R12337,
	ri_2018.R12338,
	ri_2018.R123313T,
	ri_2018.R123314T,
	ri_2018.R123315T,
	ri_2018.R123316T,
	ri_2018.R123317T,
	ri_2018.R1234,
	ri_2018.R21,
	ri_2018.R22,
	ri_2018.R2301,
	ri_2018.R2302,
	ri_2018.R2303,
	ri_2018.R2304,
	ri_2018.R2305,
	ri_2018.R2306,
	ri_2018.R2307,
	ri_2018.R2308,
	ri_2018.R2309,
	ri_2018.R2310,
	ri_2018.R2311,
	ri_2018.R24 ,
	ri_2018.R711,
	ri_2018.R712,
	ri_2018.R713,
	ri_2018.R714,
	ri_2018.R715,
	ri_2018.R716,
	ri_2018.R717,
	ri_2018.R719,
	ri_2018.R741,
	ri_2018.R1011,
	ri_2018.R513,
	p_2018.IR112111a,
	p_2018.IR112112a,
	p_2018.IR112113a,
	p_2018.IR11212,
	p_2018.IR112131,
	p_2018.IR112132,
	p_2018.IR112133,
	p_2018.IR112134,
	p_2018.IR112135,
	p_2018.IR11214,
	p_2018.IR1122,
	m2018.RETRI,
	m2018.RETEN,
	m2018.VALOR,
	m2018.INGCTA,
	m2018.INGCTAR,
	m2018.RETRI_ILT,
	m2018.RETEN_ILT,
	m2018.VALOR_ILT,
	m2018.INGCTA_ILT,
	m2018.INGCTAR_IL,
	m2018.PENSIONES,
	m2018.ANU_ALIMENTOS,
	m2018.DESC3,
	m2018.DESC_RESTO,
	m2018.DESC_DISCAP33,
	m2018.DESC_MOV_REDU,
	m2018.DESC_DISCAP65,
	m2018.ASC_MEN75,
	m2018.ASC_MAY75,
	m2018.ASC_DISCAP33,
	m2018.ASC_MOV_REDU,
	m2018.ASC_DISCAP65,
	m2018.DESC_TOT,
	m2018.ASC_TOT
FROM tbl_IDEN2018 as i_2018
LEFT JOIN tbl_Renta2018 as r_2018
ON i_2018.IDENPER = r_2018.IDENPER
LEFT JOIN tbl_RentaImputacion2018 as ri_2018
ON i_2018.IDENPER = ri_2018.IDENPER
LEFT JOIN tbl_Patrimonio2018 as p_2018
ON i_2018.IDENPER = p_2018.IDENPER
LEFT JOIN
(
	SELECT
		m_2018.IDENPER,
		sum(m_2018.RETRI) as RETRI,
		sum(m_2018.RETEN) as RETEN,
		sum(m_2018.VALOR) as VALOR,
		sum(m_2018.INGCTA) as INGCTA,
		sum(m_2018.INGCTAR) as INGCTAR,
		sum(m_2018.RETRI_ILT) as RETRI_ILT,
		sum(m_2018.RETEN_ILT) as RETEN_ILT,
		sum(m_2018.VALOR_ILT) as VALOR_ILT,
		sum(m_2018.INGCTA_ILT) as INGCTA_ILT,
		sum(m_2018.INGCTAR_IL) as INGCTAR_IL,
		sum(m_2018.PENSIONES) as PENSIONES,
		sum(m_2018.ANU_ALIMENTOS) as ANU_ALIMENTOS,
		sum(m_2018.DESC3) as DESC3,
		sum(m_2018.DESC_RESTO) as DESC_RESTO,
		sum(m_2018.DESC_DISCAP33) as DESC_DISCAP33,
		sum(m_2018.DESC_MOV_REDU) as DESC_MOV_REDU,
		sum(m_2018.DESC_DISCAP65) as DESC_DISCAP65,
		sum(m_2018.ASC_MEN75) as ASC_MEN75,
		sum(m_2018.ASC_MAY75) as ASC_MAY75,
		sum(m_2018.ASC_DISCAP33) as ASC_DISCAP33,
		sum(m_2018.ASC_MOV_REDU) as ASC_MOV_REDU,
		sum(m_2018.ASC_DISCAP65) as ASC_DISCAP65,
		sum(m_2018.DESC_TOT) as DESC_TOT,
		sum(m_2018.ASC_TOT) as ASC_TOT
	FROM tbl_M190_2018 m_2018
	GROUP BY m_2018.IDENPER
) m2018
ON i_2018.IDENPER = m2018.IDENPER;


INSERT INTO tbl_unificado_hogares
SELECT
	2019,
	i_2019.IDENPER,
	i_2019.IDENHOG,
	i_2019.CCAA,
	i_2019.CPRO,
	i_2019.CMUN,
	i_2019.SECCION,
	i_2019.TIPOHOG,
	i_2019.TRAMO,
	i_2019.FACTORCAL,
	i_2019.FACTORCALNACI,
	i_2019.FACTORDIS,
	i_2019.FACTORDISNACI,
	i_2019.NACIO,
	i_2019.TIPCONTRIB,
	i_2019.IDENPERS_CONY,
	r_2019.M11,
	r_2019.M12,
	r_2019.M13,
	r_2019.M14,
	r_2019.M15,
	r_2019.M151,
	r_2019.M152,
	r_2019.M153,
	r_2019.M1,
	r_2019.M2,
	r_2019.M21,
	r_2019.M22,
	r_2019.M23,
	r_2019.M24,
	r_2019.M3,
	r_2019.M31,
	r_2019.M32,
	r_2019.M4,
	r_2019.M41,
	r_2019.M42,
	r_2019.M43,
	r_2019.M44,
	r_2019.M5,
	r_2019.M61,
	r_2019.M611,
	r_2019.M613,
	r_2019.M621,
	r_2019.M622,
	r_2019.M623,
	r_2019.M624,
	r_2019.M625,
	r_2019.M626,
	r_2019.M627,
	r_2019.M628,
	r_2019.M629,
	r_2019.M6210,
	r_2019.M6,
	r_2019.M7,
	r_2019.M711,
	r_2019.M72,
	r_2019.M91,
	r_2019.M921,
	r_2019.M922,
	r_2019.M923,
	r_2019.M92,
	r_2019.M93,
	r_2019.M94,
	r_2019.M95,
	r_2019.M96,
	r_2019.M97,
	r_2019.RB,
	r_2019.RBD,
	ri_2019.R111,
	ri_2019.R112,
	ri_2019.R113,
	ri_2019.R115,
	ri_2019.R116,
	ri_2019.R117,
	ri_2019.R1111,
	ri_2019.R1112,
	ri_2019.R12111,
	ri_2019.R12112,
	ri_2019.R1212,
	ri_2019.R1213,
	ri_2019.R1221,
	ri_2019.R1222,
	ri_2019.R1223,
	ri_2019.R12311,
	ri_2019.R12312,
	ri_2019.R12313,
	ri_2019.R12314,
	ri_2019.R1232,
	ri_2019.R12331,
	ri_2019.R12335,
	ri_2019.R12336,
	ri_2019.R12337,
	ri_2019.R12338,
	ri_2019.R123313T,
	ri_2019.R123314T,
	ri_2019.R123315T,
	ri_2019.R123316T,
	ri_2019.R123317T,
	ri_2019.R1234,
	ri_2019.R21,
	ri_2019.R22,
	ri_2019.R2301,
	ri_2019.R2302,
	ri_2019.R2303,
	ri_2019.R2304,
	ri_2019.R2305,
	ri_2019.R2306,
	ri_2019.R2307,
	ri_2019.R2308,
	ri_2019.R2309,
	ri_2019.R2310,
	ri_2019.R2311,
	ri_2019.R24 ,
	ri_2019.R711,
	ri_2019.R712,
	ri_2019.R713,
	ri_2019.R714,
	ri_2019.R715,
	ri_2019.R716,
	ri_2019.R717,
	ri_2019.R719,
	ri_2019.R741,
	ri_2019.R1011,
	ri_2019.R513,
	p_2019.IR112111a,
	p_2019.IR112112a,
	p_2019.IR112113a,
	p_2019.IR11212,
	p_2019.IR112131,
	p_2019.IR112132,
	p_2019.IR112133,
	p_2019.IR112134,
	p_2019.IR112135,
	p_2019.IR11214,
	p_2019.IR1122,
	m2019.RETRI,
	m2019.RETEN,
	m2019.VALOR,
	m2019.INGCTA,
	m2019.INGCTAR,
	m2019.RETRI_ILT,
	m2019.RETEN_ILT,
	m2019.VALOR_ILT,
	m2019.INGCTA_ILT,
	m2019.INGCTAR_IL,
	m2019.PENSIONES,
	m2019.ANU_ALIMENTOS,
	m2019.DESC3,
	m2019.DESC_RESTO,
	m2019.DESC_DISCAP33,
	m2019.DESC_MOV_REDU,
	m2019.DESC_DISCAP65,
	m2019.ASC_MEN75,
	m2019.ASC_MAY75,
	m2019.ASC_DISCAP33,
	m2019.ASC_MOV_REDU,
	m2019.ASC_DISCAP65,
	m2019.DESC_TOT,
	m2019.ASC_TOT
FROM tbl_IDEN2019 as i_2019
LEFT JOIN tbl_Renta2019 as r_2019
ON i_2019.IDENPER = r_2019.IDENPER
LEFT JOIN tbl_RentaImputacion2019 as ri_2019
ON i_2019.IDENPER = ri_2019.IDENPER
LEFT JOIN tbl_Patrimonio2019 as p_2019
ON i_2019.IDENPER = p_2019.IDENPER
LEFT JOIN
(
	SELECT
		m_2019.IDENPER,
		sum(m_2019.RETRI) as RETRI,
		sum(m_2019.RETEN) as RETEN,
		sum(m_2019.VALOR) as VALOR,
		sum(m_2019.INGCTA) as INGCTA,
		sum(m_2019.INGCTAR) as INGCTAR,
		sum(m_2019.RETRI_ILT) as RETRI_ILT,
		sum(m_2019.RETEN_ILT) as RETEN_ILT,
		sum(m_2019.VALOR_ILT) as VALOR_ILT,
		sum(m_2019.INGCTA_ILT) as INGCTA_ILT,
		sum(m_2019.INGCTAR_IL) as INGCTAR_IL,
		sum(m_2019.PENSIONES) as PENSIONES,
		sum(m_2019.ANU_ALIMENTOS) as ANU_ALIMENTOS,
		sum(m_2019.DESC3) as DESC3,
		sum(m_2019.DESC_RESTO) as DESC_RESTO,
		sum(m_2019.DESC_DISCAP33) as DESC_DISCAP33,
		sum(m_2019.DESC_MOV_REDU) as DESC_MOV_REDU,
		sum(m_2019.DESC_DISCAP65) as DESC_DISCAP65,
		sum(m_2019.ASC_MEN75) as ASC_MEN75,
		sum(m_2019.ASC_MAY75) as ASC_MAY75,
		sum(m_2019.ASC_DISCAP33) as ASC_DISCAP33,
		sum(m_2019.ASC_MOV_REDU) as ASC_MOV_REDU,
		sum(m_2019.ASC_DISCAP65) as ASC_DISCAP65,
		sum(m_2019.DESC_TOT) as DESC_TOT,
		sum(m_2019.ASC_TOT) as ASC_TOT
	FROM tbl_M190_2019 m_2019
	GROUP BY m_2019.IDENPER
) m2019
ON i_2019.IDENPER = m2019.IDENPER;
