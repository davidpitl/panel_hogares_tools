USE panel_hogares2;

LOAD DATA LOCAL INFILE '/media/david/5394E4122138C590/Panel/2018/10_IRPF2018_G3.txt'
INTO TABLE tbl_IRPF2018_G3 FIELDS TERMINATED BY '';
