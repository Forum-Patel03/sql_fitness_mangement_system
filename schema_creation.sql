-- Create Database
create database fitness_management_system;
use fitness_management_system;

-- =========================
-- 1. Members Table
-- =========================
create table tbl_members(
member_id int not null auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
email varchar(100),
phone_number varchar(10),
address varchar(200),
date_of_birth date,
join_date date
);

-- =========================
-- 2. Membership Plans Table
-- =========================
create table tbl_memberships(
membership_id int not null auto_increment primary key,
membership_type varchar(50),
description text,
duration_in_months int,
price decimal(10,2)
);

-- =========================
-- 3. Member-Membership Linking Table
-- =========================
create table tbl_member_membership(
member_membership_id int not null auto_increment primary key,
member_id int,
membership_id int,
start_date date,
end_date date 
);

alter table tbl_member_membership
add constraint fk_membership_memberships
foreign key (membership_id)
references tbl_memberships(membership_id);


-- =========================
-- 4. Trainers Table
-- =========================
create table tbl_trainers (
    trainer_id int auto_increment primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) unique not null,
    phone_number varchar(20),
    specialty varchar(100),
    hire_date date not null
);

-- =========================
-- 5. Classes Table
-- =========================
create table tbl_classes(
class_id int not null auto_increment primary key,
class_name varchar(100),
description text,
trainer_id int
);

alter table tbl_classes
add constraint fk_trainers_classes
foreign key (trainer_id)
references tbl_trainers(trainer_id);

-- =========================
-- 6. Class Schedule Table
-- =========================
create table tbl_class_schedule(
schedule_id int not null auto_increment primary key,
class_id int,
start_time time,
end_time time,
day_of_week varchar(20)
);

alter table tbl_class_schedule
add constraint fk_classes_schedule
foreign key (class_id)
references tbl_classes(class_id);

-- =========================
-- 7. Equipment Table
-- =========================
create table tbl_equipment(
equipment_id int not null auto_increment primary key,
equipment_name varchar(100),
description text,
purchase_date date,
last_maintenance_date date 
);

-- =========================
-- 8. Equipment Maintenance Table
-- =========================
create	table tbl_equipment_maintenance(
maintenance_id int not null auto_increment primary key,
equipment_id int,
maintenance_date date,
description text 
);

alter table tbl_equipment_maintenance
add constraint fk_maintenance_equipment
foreign key (equipment_id)
references tbl_equipment(equipment_id);


-- =========================
-- 9. Log Table
-- =========================
create table tbl_logs (
    log_id int auto_increment primary key,
    log_date datetime not null,
    log_type varchar(50) not null,
    log_message varchar(255) not null
);

-- =========================
-- Sample Select Queries
-- =========================
select * from tbl_members;
select * from tbl_memberships;
select * from tbl_trainers;
select * from tbl_equipment;
select * from tbl_classes;
select * from tbl_member_membership;
select * from tbl_class_schedule;
select * from tbl_equipment_maintenance;
