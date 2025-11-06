delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_equipment_description`(
p_equipment_id int,
p_description varchar(100)
)
BEGIN
	update tbl_equipment
    set description=p_description
    where equipment_id=p_equipment_id;
    
    select * from tbl_equipment
	where equipment_id=p_equipment_id;
END$$
call sp_update_equipment_description(11,'Set of 8 to 32kg kettlebells');