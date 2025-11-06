use fitness_management_system;


delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_register_new_member`(
p_first_name varchar(100),
p_last_name varchar(100),
p_email varchar(100),
p_membership_id int,
p_start_date date
)
BEGIN
	declare v_duration int;
    declare v_member_id int;
    declare v_end_date date;

	insert into tbl_members(first_name,last_name,email)
    values (p_first_name,p_last_name,p_email);
    select * from tbl_members;
    
    select duration_in_months
    into v_duration
    from tbl_memberships
    where p_membership_id=membership_id;
    
    select member_id
    into v_member_id
    from tbl_members
    where email=p_email;
    
    set v_end_date = date_add(p_start_date,interval v_duration month);
    
    insert into tbl_member_membership (member_id,membership_id,start_date,end_date)
    values(v_member_id,p_membership_id,p_start_date,v_end_date);
    select * from tbl_member_membership;
    
END$$
call sp_register_new_member('Forum','Patel','forum@gmail.com',1,'2025-08-18');
call sp_register_new_member('Chhavi','Sharma','chaavi@gmail.com',4,'2025-08-18');