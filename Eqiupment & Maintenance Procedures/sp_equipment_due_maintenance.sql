delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_equipment_due_maintenance`()
BEGIN
	select * from tbl_equipment
    where 
    month(last_maintenance_date) <> month(curdate())
    or year(last_maintenance_date) <> year(curdate());
END$$
call sp_equipment_due_maintenance();