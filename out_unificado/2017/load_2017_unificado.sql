USE panel_hogares2;

LOAD DATA LOCAL INFILE '/media/david/mSATAext/panal_hogares_data/Panel/2017/2017_unificado.txt'
INTO TABLE tbl_2017_unificado FIELDS TERMINATED BY '';
