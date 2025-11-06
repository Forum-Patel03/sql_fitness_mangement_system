delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_trainer_by_id`(
p_trainer_id int
)
BEGIN
	select * from tbl_trainers
    where trainer_id=p_trainer_id;
END$$
call sp_get_trainer_by_id(2);