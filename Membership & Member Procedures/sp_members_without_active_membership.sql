delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_members_without_active_membership`()
BEGIN
	select m.member_id,m.first_name,m.last_name
    from tbl_members as m
    where not exists(
    select 1
    from tbl_member_membership as mm
    where m.member_id = mm.member_id
    and mm.end_date >= curdate()
    );
END$$
call sp_members_without_active_membership();
