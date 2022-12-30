USE panel_hogares2;

LOAD DATA LOCAL INFILE '/media/david/mSATAext/panal_hogares_data/Panel/2016/2016_unificado.txt'
INTO TABLE tbl_2016_unificado FIELDS TERMINATED BY '';
