delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_active_membershipssp_renew_membership`()
BEGIN
	select a.member_id,a.first_name,a.email,a.phone_number,
			b.start_date,b.end_date,
            c.membership_id,c.membership_type
	from tbl_members as a
    inner join tbl_member_membership as b
    on a.member_id = b.member_id
    inner join tbl_memberships as c
    on b.membership_id = c.membership_id
    where start_date between
		makedate(year(curdate()),1) and makedate(year(curdate()),365);
    /*where start_date between '2025-01-01' and '2025-12-31';*/
    
END$$
call sp_get_active_memberships();