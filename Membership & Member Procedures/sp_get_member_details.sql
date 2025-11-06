delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_member_details`(
p_member_id int
)
BEGIN
	select * from tbl_members
    where p_member_id=member_id;
END$$
call sp_get_member_details(5);