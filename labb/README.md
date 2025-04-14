# YrkesCo

Welcome to the YrkesCo School Database project repository! This is a comprehensive database solution designed to manage and organize the critical data of a fictional educational institution called YrkesCo. This database system uses PostgreSQL and follows a structured approach to data modeling, with three primary layers: Conceptual, Logical, and Physical models

The YrkesCo database project is aimed at providing a fully structured, normalized, and production-ready relational database system for a fictional educational institution, YrkesCo. The system captures and manages data related to students, staff, courses, grades, departments, and much more.
We approached this project with a data-centric design process, focusing on accuracy, consistency, and scalability through three essential modeling layers: Conceptual, Logical, and Physical models

Data Modeling Process

We followed a three-phase data modeling approach to ensure a clear and effective structure for the database. The phases are as follows:

1. Conceptual Model
The Conceptual Model is the high-level design phase where we identified the major entities of the school and the relationships between them. This phase focuses on defining the scope and structure of the system without worrying about implementation details like data types or constraints.

Key Entities:

Student: Represents the students enrolled at YrkesCo. Includes personal details such as name, student ID, contact information, etc.
Teacher: Represents the faculty members who teach courses at the school.
Course: Represents the courses offered by YrkesCo, including course codes, names, and descriptions.
Department: Organizes courses and staff into logical groups based on the academic discipline (e.g., Science, Arts).
Grade: Represents the academic performance of students in specific courses.
Enrollment: Maps students to the courses they are enrolled in.
Schedule: Manages the timetable of classes, including start times, duration, and location.
Staff: Includes non-teaching personnel such as administrative staff.
2. Logical Model
The Logical Model takes the conceptual model and translates it into a relational schema. This model outlines how the entities will be represented as tables in a relational database, how they will be related, and the attributes that each entity will contain.

Key Relationships:

A student can be enrolled in multiple courses, but a course can also have many students. This creates a many-to-many relationship between students and courses, which is represented by the enrollments table.
A teacher can teach many courses, but each course can have one or more teachers, depending on the course structure.
A department can offer many courses, and each course belongs to one department.
A grade is linked to both a student and a course, representing the performance of the student in that particular course.
The logical model includes normalized tables, each with primary keys (PK) and foreign keys (FK) to represent the relationships between entities.

3. Physical Model
The Physical Model is the implementation phase where the logical model is translated into actual SQL scripts. In this phase, we specify the exact data types for each attribute, create tables, and define constraints like primary keys, foreign keys, and indexes for performance optimization.

In this project, we implemented the physical model using PostgreSQL, which provides advanced features like indexing and support for foreign key constraints to maintain referential integrity