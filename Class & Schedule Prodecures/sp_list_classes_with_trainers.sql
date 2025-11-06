delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_list_classes_with_trainers`()
BEGIN
	select a.class_name,b.first_name,b.last_name
    from tbl_classes as a
    inner join tbl_trainers as b
    on a.trainer_id=b.trainer_id;
END$$
call sp_list_classes_with_trainers();
