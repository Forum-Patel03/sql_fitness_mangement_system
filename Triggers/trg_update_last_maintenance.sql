delimiter $$
create trigger trg_update_last_maintenance
after insert on tbl_equipment_maintenance
for each row
begin
	update tbl_equipment
    set last_maintenance_date = new.maintenance_date
    where equipment_id = new.equipment_id;
end$$
delimiter ;

insert into tbl_equipment_maintenance
values(16,12,'2025-11-06','upgraded old mat with new one');

select * from tbl_equipment_maintenance;
select * from tbl_equipment;