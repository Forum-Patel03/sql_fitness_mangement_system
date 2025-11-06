delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_membership_history`(
p_member_id int
)
BEGIN
	select a.member_id,a.member_membership_id,a.start_date,a.end_date,
		   b.membership_id,b.membership_type,b.price
	from tbl_member_membership as a
    inner join tbl_memberships as b
    on a.membership_id = b.membership_id
    where a.member_id = p_member_id;
    
END$$
call sp_get_membership_history(4);
