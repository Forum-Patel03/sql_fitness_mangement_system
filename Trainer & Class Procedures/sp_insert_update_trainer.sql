delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_update_trainer`(
p_trainer_id int,
p_first_name varchar(100),
p_last_name varchar(100),
p_email varchar(100),
p_phone_number varchar(15),
p_specialty varchar(100),
p_hire_date date
)
BEGIN
	if exists (select 1 from tbl_trainers where trainer_id=p_trainer_id) then
    update tbl_trainers
    set first_name=p_first_name,
		last_name=p_last_name,
        eamil=p_email,
        phone_number=p_phone_number,
        specialty=p_specialty,
        hire_date=p_hire_date
	where trainer_id=p_trainer_id;
    
    select * from tbl_trainers
    where trainer_id=p_trainer_id;
    
    
    else
    insert into tbl_trainers(first_name,last_name,eamil,phone_number,specialty,hire_date)
    values(p_first_name,p_last_name,p_email,p_phone_number,p_specialty,p_hire_date);
    
    select * from tbl_trainers
    where trainer_id=last_insert_id();
    end if;
END$$
call sp_insert_update_trainer(9,'Chhavi','Sharma','chhavisharma@gmail.com','9503528068','Dance','2025-06-19');
