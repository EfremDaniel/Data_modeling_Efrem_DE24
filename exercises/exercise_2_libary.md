# Exercise 0

## 1. Libary Bookly task

A library called Bookly keeps track of books and members who borrow them. Each book has a title, author, and ISBN number. Each member has a membership ID, name, and contact information. A member can borrow multiple books, but each book can be borrowed by only one member at a time.

<img src = "../assets/Bookly.png" width=500>


a/ 

The entites are **Member** and **Book** and between them are a loan entity called borrowing that is a bridge between them

**Attribute** for each entities:

**Memeber**
- member_id (primary key for this entity)
- first_name
- last_name
- adress
- email

**Book**
- book_id (primary key for this entity)
- title
- author_first_name
- author_last_name

**Borrowing**
- loan_id

--- 
b/ 

- A member can have zero, one or many books
The relationship is between the entities are that one member can loan more than one book or no book at all.
A book can be loaned by one member or no member at all 