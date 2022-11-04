USE panel_hogares2;

LOAD DATA LOCAL INFILE '/media/david/5394E4122138C590/Panel/2018/3_RentaImputacion2018.txt'
INTO TABLE tbl_RentaImputacion2018 FIELDS TERMINATED BY '';
