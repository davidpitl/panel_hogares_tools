USE panel_hogares2;

LOAD DATA LOCAL INFILE '/media/david/mSATAext/panal_hogares_data/Panel/2018/2018_unificado.txt'
INTO TABLE tbl_2018_unificado FIELDS TERMINATED BY '';
