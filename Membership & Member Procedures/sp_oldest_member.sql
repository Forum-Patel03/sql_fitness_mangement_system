delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_oldest_member`()
BEGIN
	select member_id,first_name,last_name,email,phone_number
    from tbl_members
    where date_of_birth is not null
    order by date_of_birth asc 
    limit 1;
END$$
call sp_oldest_member();