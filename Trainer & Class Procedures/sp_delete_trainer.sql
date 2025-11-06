delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_trainer`(
p_trainer_id int
)
BEGIN
	delete from tbl_trainers
    where trainer_id=p_trainer_id;
    
    select * from tbl_trainers;
END$$
call sp_delete_trainer(11);