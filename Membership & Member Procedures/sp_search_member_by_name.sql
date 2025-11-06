delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_search_member_by_name`(
p_keyword varchar(100)
)
BEGIN
	select * from tbl_members
    where first_name like concat('%',p_keyword,'%') 
    or last_name like concat('%',p_keyword,'%');
END$$
call sp_search_member_by_name('iya');