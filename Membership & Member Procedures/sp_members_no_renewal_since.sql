delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_members_no_renewal_since`(
p_date date
)
BEGIN
	select a.member_id,a.first_name,a.last_name,
		   max(b.end_date) as end_date
    from tbl_members as a
    inner join tbl_member_membership as b
    on a.member_id=b.member_id
    group by a.member_id
    having max(b.end_date)<p_date;
END$$
call sp_members_no_renewal_since('2025-08-19');