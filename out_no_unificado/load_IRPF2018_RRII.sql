USE panel_hogares2;

LOAD DATA LOCAL INFILE '/media/david/5394E4122138C590/Panel/2018/8_IRPF2018_RRII.txt'
INTO TABLE tbl_IRPF2018_RRII FIELDS TERMINATED BY '';
