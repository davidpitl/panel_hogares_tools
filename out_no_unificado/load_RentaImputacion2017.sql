USE panel_hogares2;

LOAD DATA LOCAL INFILE '/media/david/5394E4122138C590/Panel/2017/3_RentaImputacion2017.txt'
INTO TABLE tbl_RentaImputacion2017 FIELDS TERMINATED BY '';
