delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_renew_membership`(
p_member_id int,
p_membership_id int,
p_start_date date
)
BEGIN
	declare v_new_start_date date;
    declare v_new_end_date date;
    
    select date_add(max(end_date),interval 1 day)
    into v_new_start_date
    from tbl_member_membership
    where member_id = p_member_id;
    
    select date_add(v_new_start_date,interval duration_in_months month)
    into v_new_end_date
    from tbl_memberships
    where membership_id=p_membership_id;
    
    insert into tbl_member_membership (member_id,membership_id,start_date,end_date)
    values(p_member_id,p_membership_id,v_new_start_date,v_new_end_date);
    
    select * from tbl_member_membership
    where member_id = p_member_id and membership_id = p_membership_id;
    
END$$
call sp_renew_membership(3,7,'2025-01-01');
