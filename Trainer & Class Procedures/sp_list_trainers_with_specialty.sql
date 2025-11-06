delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_list_trainers_with_specialty`()
BEGIN
	select * from tbl_trainers
    order by hire_date desc;
END$$
call sp_list_trainers_with_specialty();