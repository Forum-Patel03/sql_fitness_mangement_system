delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_assign_trainer_to_class`(
p_class_id int,
p_trainer_id int
)
BEGIN
	update tbl_classes
    set trainer_id=p_trainer_id
    where class_id=p_class_id;
    
    select * from tbl_classes
    where class_id=p_class_id;
END$$
call sp_assign_trainer_to_class(1,1);