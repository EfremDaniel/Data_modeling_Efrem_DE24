# YrkesCo School Database

Welcome to the **YrkesCo** project – a complete relational database solution for a fictional educational institution. Built with **PostgreSQL**, this project follows a structured, three-phase data modeling approach: **Conceptual**, **Logical**, and **Physical**.

## 🎯 Project Goal

To design and implement a fully normalized, scalable, and production-ready database system to manage:

- Students  
- Teaching and administrative staff  
- Courses and grades  
- Academic departments  
- Scheduling and course enrollments  

## 🧱 Data Modeling Process

### 1. Conceptual Model

High-level design identifying core entities and relationships without technical details.

**Key Entities:**  
`Student`, `Teacher`, `Course`, `Department`, `Grade`, `Enrollment`, `Schedule`, `Staff`

### 2. Logical Model

Translates the conceptual model into a relational schema with attributes and relationships.

**Examples of Relationships:**

- Many-to-many between students and courses (via `Enrollments`)
- One-to-many from departments to courses
- Grades linked to both students and courses

All tables are normalized and include primary and foreign keys.

### 3. Physical Model

Implemented in **PostgreSQL**, using SQL DDL statements with:

- Precise data types  
- Primary/foreign key constraints  
- Indexes for performance and integrity

## 🛠 Technologies Used

- PostgreSQL  
- SQL (DDL)  
- Entity-Relationship Modeling  

---