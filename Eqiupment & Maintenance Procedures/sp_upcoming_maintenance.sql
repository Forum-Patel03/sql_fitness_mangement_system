delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_upcoming_maintenance`()
BEGIN
	select * from tbl_equipment
    where last_maintenance_date <= date_add(curdate(),interval -75 day);
END$$
call sp_upcoming_maintenance();
