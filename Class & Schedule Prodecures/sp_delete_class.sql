delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_class`(
p_class_id int
)
BEGIN
	delete from tbl_class_schedule
    where class_id=p_class_id;
    
    select * from tbl_class_schedule;
    
    
	delete from tbl_classes
    where class_id=p_class_id;
    
    select * from tbl_classes;
END$$
call sp_delete_class(18);

