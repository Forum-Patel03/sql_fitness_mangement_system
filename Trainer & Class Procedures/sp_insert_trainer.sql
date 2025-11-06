delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_trainer`(
p_first_name varchar(100),
p_last_name varchar(100),
p_email varchar(100),
p_phone_number varchar(15),
p_specialty varchar(100),
p_hire_date date
)
BEGIN
	insert into tbl_trainers(first_name,last_name,eamil,phone_number,specialty,hire_date)
    values(p_first_name,p_last_name,p_email,p_phone_number,p_specialty,p_hire_date);
    
    select * from tbl_trainers
    where first_name=p_first_name and last_name=p_last_name;
END$$
call sp_insert_trainer('jikisha','Choksi','jikisha@gmail.com','9920667720','Streching','2025-07-03');

