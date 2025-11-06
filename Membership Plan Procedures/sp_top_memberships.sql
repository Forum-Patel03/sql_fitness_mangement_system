delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_top_memberships`()
BEGIN
	select count(a.membership_id) as total_members,a.membership_type
    from tbl_memberships as a
    inner join tbl_member_membership as b
    on a.membership_id = b.membership_id
    group by a.membership_type
    order by total_members desc;
END$$
call sp_top_memberships();
