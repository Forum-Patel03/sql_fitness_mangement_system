delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_revenue_by_membership`()
BEGIN
	select a.membership_type,sum(a.price) as total_revenue
    from tbl_memberships as a
    inner join tbl_member_membership as b
    on a.membership_id = b.membership_id
    group by a.membership_type;
END$$
call sp_get_revenue_by_membership();