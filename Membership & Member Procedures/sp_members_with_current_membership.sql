delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_members_with_current_membership`()
BEGIN
	select a.member_id,a.first_name,a.last_name,
           c.membership_id,c.membership_type,c.price,
           b.start_date,b.end_date
	from tbl_members as a 
    inner join tbl_member_membership as b
    on a.member_id=b.member_id
    inner join tbl_memberships as c
    on b.membership_id=c.membership_id
    where b.start_date <= curdate() and b.end_date >= curdate();
END$$
call sp_members_with_current_membership();
