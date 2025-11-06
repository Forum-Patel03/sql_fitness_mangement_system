delimiter $$

create event ev_expired_memberships_check
on schedule every 1 day
starts current_date + interval 1 day
do
begin
    insert into tbl_logs (log_date, log_type, log_message)
    select now(), 'Membership Expiry',
           concat('Membership ID ', m.member_membership_id, ' expires today')
    from tbl_member_membership as m
    where m.end_date = curdate();
end$$

delimiter ;

select * from tbl_member_membership;
select * from tbl_logs;
