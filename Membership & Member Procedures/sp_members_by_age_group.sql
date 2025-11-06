delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_members_by_age_group`()
BEGIN
	select timestampdiff(year,date_of_birth,curdate()) as age, 
			count(member_id) as total
	from tbl_members
    group by age
    order by age;
END$$
call sp_members_by_age_group();