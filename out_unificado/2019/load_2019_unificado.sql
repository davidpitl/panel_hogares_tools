USE panel_hogares2;

LOAD DATA LOCAL INFILE '/media/david/mSATAext/panal_hogares_data/Panel/2019/2019_unificado.txt'
INTO TABLE tbl_2019_unificado FIELDS TERMINATED BY '';
