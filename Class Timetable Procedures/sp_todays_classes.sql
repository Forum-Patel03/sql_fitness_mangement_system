delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_todays_classes`()
BEGIN
	select a.first_name,a.last_name,
		   b.class_name,
           c.start_time,c.end_time,c.day_of_week
	from tbl_trainers as a
    inner join tbl_classes as b
    on a.trainer_id=b.trainer_id
    inner join tbl_class_schedule as c
    on b.class_id=c.class_id
    where c.day_of_week=dayname(curdate());
END$$
call sp_todays_classes();
