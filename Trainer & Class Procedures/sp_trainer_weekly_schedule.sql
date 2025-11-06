delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_trainer_weekly_schedule`(
p_trainer_id int
)
BEGIN
	select b.schedule_id,c.first_name,c.last_name,
		   a.class_name,
           b.day_of_week
	from tbl_classes as a
    inner join tbl_class_schedule as b
    on a.class_id = b.class_id
    inner join tbl_trainers as c
    on a.trainer_id = c.trainer_id
    where a.trainer_id = p_trainer_id
    order by day_of_week asc;
END$$
call sp_trainer_weekly_schedule(1);