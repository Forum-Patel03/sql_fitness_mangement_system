delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_class_schedule`(
p_class_id int
)
BEGIN
	select a.class_id,a.class_name,
		   b.schedule_id,b.day_of_week,
           c.first_name,c.last_name
	from tbl_classes as a
    inner join tbl_class_schedule as b
    on a.class_id=b.class_id
    inner join tbl_trainers as c
    on a.trainer_id=c.trainer_id
    where a.class_id=p_class_id;
END$$
call sp_get_class_schedule(6);