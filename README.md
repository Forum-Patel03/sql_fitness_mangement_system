# 🏋️‍♂️ Fitness & Wellness Management System

## 📌 Project Overview

The **Fitness & Wellness Management System (MySQL-Based)** is designed to manage operations of a fitness center or wellness club.  
It helps in maintaining records of members, memberships, trainers, classes, schedules, and equipment efficiently.

The system streamlines:

- Tracking member details and memberships
- Assigning trainers and managing class schedules
- Recording equipment purchase and maintenance logs
- Ensuring smooth administrative and operational workflow

---

## 🎯 Objectives

- Maintain a centralized database for all members and their memberships  
- Track class schedules and trainer assignments  
- Maintain equipment records along with maintenance history  
- Ensure **data consistency**, **referential integrity**, and **historical tracking** of activities  

---

## ✅ Functional Requirements

### 1. 👤 Member Management

- Register new members  
- Store personal details: Name, Email, Phone, Address, Date of Birth, Join Date  

### 2. 🪪 Membership Management

- Define membership plans: Monthly, Quarterly, Yearly, etc.  
- Store duration and pricing details  
- Assign memberships to members with defined **start_date** and **end_date**  

### 3. 🏋️‍♀️ Trainer Management

- Maintain trainer records including contact details and specialization  
- Track **hire date** for administrative purposes  

### 4. 📅 Class & Schedule Management

- Create and manage fitness/wellness classes  
- Assign trainers to classes  
- Create class schedules with time slots and day of the week  

### 5. 🛠 Equipment & Maintenance Management

- Store details of gym equipment including purchase date and vendor details (if any)  
- Track all maintenance activities  
- Maintain last maintenance date for each equipment  

---

## 📍 Business Rules

| Rule | Description |
|-------|---------------|
| Member–Membership Relationship | A member can have multiple memberships (overlapping or renewed) |
| Trainer–Class Rule | One class → One trainer, but one trainer can teach multiple classes |
| Class Scheduling | Class schedules must **not overlap for the same trainer** |
| Maintenance Logging | Every maintenance activity **must be recorded**, even minor |
| Auto Update Rule | Equipment’s `last_maintenance_date` must be updated after each maintenance entry |
| Membership Validity Rule ⚠ | Membership start date must be **greater than or equal to** the member’s join date (start_date ≥ join_date) – **VERY IMPORTANT** |

---

