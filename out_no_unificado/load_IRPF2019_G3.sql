USE panel_hogares2;

LOAD DATA LOCAL INFILE '/media/david/5394E4122138C590/Panel/2019/10_IRPF2019_G3.txt'
INTO TABLE tbl_IRPF2019_G3 FIELDS TERMINATED BY '';
