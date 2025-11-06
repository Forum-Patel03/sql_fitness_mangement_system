create table tbl_logs (
    log_id int auto_increment primary key,
    log_date datetime not null,
    log_type varchar(50) not null,
    log_message varchar(255) not null
);

delimiter $$

create event ev_equipment_maintenance_reminder
on schedule every 1 day
starts current_date + interval 1 day
do
begin
    insert into tbl_logs (log_date, log_type, log_message)
    select now(), 'maintenance reminder',
           concat('equipment ', e.equipment_id, ' not maintained for 90+ days')
    from tbl_equipment as e
    where e.last_maintenance_date <= curdate() - interval 90 day;
end$$

delimiter ;

select * from tbl_equipment;
select * from tbl_logs;
