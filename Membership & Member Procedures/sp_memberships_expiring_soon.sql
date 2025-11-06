delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_memberships_expiring_soon`()
BEGIN
	select a.member_id,a.first_name,a.last_name,a.email,a.phone_number,
		   b.membership_id,b.start_date,b.end_date
	from tbl_members as a
    inner join tbl_member_membership as b
    on a.member_id = b.member_id
    where b.end_date between curdate() and adddate(curdate(),interval 7 day)
	order by b.end_date asc;
END$$
call sp_memberships_expiring_soon();