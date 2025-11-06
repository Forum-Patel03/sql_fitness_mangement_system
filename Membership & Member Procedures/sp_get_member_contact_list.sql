delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_member_contact_list`()
BEGIN
	select first_name,last_name,email,phone_number
    from tbl_members;
END$$
call sp_get_member_contact_list();