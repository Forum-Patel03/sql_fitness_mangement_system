delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_total_membership_revenue`()
BEGIN
	select sum(a.price) as total_revenue
    from tbl_memberships as a
    inner join tbl_member_membership as b
    on a.membership_id = b.membership_id;
END$$
call sp_total_membership_revenue();