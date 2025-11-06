delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_avg_membership_duration`()
BEGIN
	select avg(duration_in_months)
    from tbl_memberships;
END$$
call sp_avg_membership_duration();
