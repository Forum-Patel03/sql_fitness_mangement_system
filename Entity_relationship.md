## 🧩 Entity–Relationship Overview

This section outlines the key entities in the Fitness & Wellness Management System along with their attributes and relationships.

---

### 🧍‍♂️ tbl_members  
Stores information about members of the fitness center.

| Attribute | Description |
|-----------|---------------|
| **member_id** | Unique ID for each member |
| **first_name**, **last_name** | Personal identification |
| **email**, **phone_number**, **address** | Contact details |
| **date_of_birth** | Date of birth of the member |
| **join_date** | Date the member joined the fitness center |

---

### 🪪 tbl_memberships  
Details of available membership plans.

| Attribute | Description |
|-----------|---------------|
| **membership_id** | Unique ID for each membership plan |
| **membership_type** | Type of membership (e.g., Monthly, Yearly) |
| **description** | Description of membership benefits |
| **duration_in_months** | Duration of the membership plan |
| **price** | Cost of the membership |

---

### 🔗 tbl_member_membership  
Linking table for many-to-many relationship between members and memberships.

| Attribute | Description |
|-----------|---------------|
| **member_membership_id** | Unique linking ID |
| **member_id** | FK → tbl_members |
| **membership_id** | FK → tbl_memberships |
| **start_date**, **end_date** | Validity of the membership period |

---

### 🧑‍🏫 tbl_trainers  
Trainer profiles and professional details.

| Attribute | Description |
|-----------|---------------|
| **trainer_id** | Unique ID for each trainer |
| **first_name**, **last_name** | Trainer name |
| **email**, **phone_number** | Contact information |
| **specialty** | Trainer’s area of expertise |
| **hire_date** | Date the trainer was hired |

---

### 🧘‍♂️ tbl_classes  
Details of various fitness or wellness classes.

| Attribute | Description |
|-----------|---------------|
| **class_id** | Unique ID for each class |
| **class_name** | Class name (e.g., Yoga, Zumba) |
| **description** | Class details |
| **trainer_id** | FK → tbl_trainers |

---

### 📅 tbl_class_schedule  
Represents the schedule for each class throughout the week.

| Attribute | Description |
|-----------|---------------|
| **schedule_id** | Unique ID |
| **class_id** | FK → tbl_classes |
| **start_time**, **end_time** | Class timing |
| **day_of_week** | Day the class is conducted |

---

### 🏋️‍♂️ tbl_equipment  
Tracks the equipment used in the fitness center.

| Attribute | Description |
|-----------|---------------|
| **equipment_id** | Unique ID for each equipment |
| **equipment_name** | Name of the equipment |
| **description** | Equipment details |
| **purchase_date**, **last_maintenance_date** | Equipment lifecycle & maintenance tracking |

---

### 🛠 tbl_equipment_maintenance  
Stores maintenance history of gym equipment.

| Attribute | Description |
|-----------|---------------|
| **maintenance_id** | Unique ID for each maintenance log |
| **equipment_id** | FK → tbl_equipment |
| **maintenance_date** | Date of maintenance |
| **description** | Notes about the maintenance activity |

---

