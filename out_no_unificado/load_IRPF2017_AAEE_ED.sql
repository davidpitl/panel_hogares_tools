USE panel_hogares2;

LOAD DATA LOCAL INFILE '/media/david/5394E4122138C590/Panel/2017/9_IRPF2017_AAEE_ED.txt'
INTO TABLE tbl_IRPF2017_AAEE_ED FIELDS TERMINATED BY '';
