delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_equipment_maintenance_log`(
p_equipment_id int
)
BEGIN
	select a.equipment_id,a.equipment_name,b.maintenance_date
    from tbl_equipment as a
    inner join tbl_equipment_maintenance as b
    on a.equipment_id=b.equipment_id
    where a.equipment_id=p_equipment_id;
END$$
call sp_equipment_maintenance_log(10);
