delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_class_by_id`(
p_class_id int
)
BEGIN
	select * from tbl_classes
    where class_id=p_class_id;
END$$
call sp_get_class_by_id(6);