delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_update_class`(
p_class_id int,
p_class_name varchar(100),
p_description varchar(100),
p_trainer_id int
)
BEGIN
	if exists (select 1 from tbl_classes where class_id=p_class_id) then
    update tbl_classes
    set class_id=p_class_id,
		class_name=p_class_name,
        description=p_description,
        trainer_id=p_trainer_id
	where class_id=p_class_id;
    
    select * from tbl_classes
    where class_id=p_class_id;
    
    else
    insert into tbl_classes(class_name,description,trainer_id)
    values(p_class_name,p_description,p_trainer_id);
    
    select * from tbl_classes
    where class_id=last_insert_id();
    
    end if;
END$$
call sp_insert_update_class(100,'streching','slow yet full body movement',3);

