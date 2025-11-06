delimiter $$
create trigger trg_prevent_overlapping_schedule
before insert on tbl_class_schedule
for each row
begin
	declare v_trainer_id int;
    
    select trainer_id into v_trainer_id
    from tbl_classes
    where class_id=new.class_id;
    
    if exists (
    select 1
    from tbl_class_schedule as cs
    inner join tbl_classes as c
    on c.class_id=cs.class_id
    where c.trainer_id=v_trainer_id
    and new.day_of_week = cs.day_of_week
    and (
		(new.start_time<cs.end_time)
        and (new.end_time>cs.start_time)
		)
    )then
		signal sqlstate '45000'
			set message_text='Schedule conflict: Trainer already has a class at this time.';
	end if;
end$$
delimiter $$

insert into tbl_class_schedule values(38,3,'18:30:00','19:00:00','Tuesday');
insert into tbl_class_schedule values(38,3,'20:00:00','21:00:00','Tuesday');

select * from tbl_class_schedule;
select * from tbl_classes;