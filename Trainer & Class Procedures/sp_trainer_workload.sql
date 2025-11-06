delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_trainer_workload`()
BEGIN
	select a.trainer_id,
		   count(distinct b.class_id) as class_id,
		   count(distinct c.schedule_id) as schedule_id
	from tbl_trainers as a
    inner join tbl_classes as b
    on a.trainer_id=b.trainer_id
    inner join tbl_class_schedule as c
    on b.class_id=c.class_id
    group by a.trainer_id
    order by a.trainer_id;
END$$
call sp_trainer_workload();

