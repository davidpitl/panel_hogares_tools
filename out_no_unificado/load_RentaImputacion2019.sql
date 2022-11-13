USE panel_hogares2;

LOAD DATA LOCAL INFILE '/media/david/5394E4122138C590/Panel/2019/3_RentaImputacion2019.txt'
INTO TABLE tbl_RentaImputacion2019 FIELDS TERMINATED BY '';
