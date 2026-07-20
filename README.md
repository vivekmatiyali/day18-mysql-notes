
# Day 18 - MySQL, Tables & Joins

##  Module 4 - Database
Instructor: Dinesh Rawat

#  Topics Covered
- Why database is better than files
- MySQL Server & Workbench
- Creating Database
- Tables & Keys
- Insert & Select
- Foreign Key
- Joins
  
 ---
 
# Plain Files vs Database

## Limitations of Plain Files

No Concurrency Control: Multiple users editing at the same time can overwrite data, causing data loss.

Slow Searching: Entire file must be scanned, which becomes slow as data grows.

No Structure Enforcement: Can lead to inconsistent or invalid data.


## Advantages of Database

Safe Multi-User Access: Uses transactions and locks to prevent data conflicts.

Fast Searching: Indexing makes data retrieval quick and efficient.

Data Integrity: Rules and constraints ensure accurate and consistent data.


## Conclusion

Databases are more reliable, efficient, and suitable for multi-user environments compared to plain files.

---
##  Server vs Database vs Table vs Row

Think of it like **folders inside folders**:

```
Server
 ├── Database (company_db)
 │    ├── Table (employees)
 │    │    ├── Row (1, Vivek, vivek@gmail.com)
 │    │    ├── Row (2, Rohit, rohit@gmail.com)
 │    │    └── Row (3, Priya, priya@gmail.com)
 │    └── Table (departments)
 │         ├── Row (1, HR)
 │         └── Row (2, IT)

```
---

###  Explanation

* **Server **
  The main system that manages databases.

* **Database **
  A collection of related data (e.g., `company_db`).

* **Table **
  Stores data in structured format (rows & columns).

* **Row **
  A single record inside a table.

---

##  Example (SQL)

### Create Database

```sql
CREATE DATABASE company_db;
```

### Use Database

```sql
USE company_db;
```

### Create Table

```sql
CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    email VARCHAR(100)
);
```

### Insert Data

```sql
INSERT INTO employees VALUES
(1, 'Vivek', 'vivek@gmail.com'),
(2, 'Rohit', 'rohit@gmail.com'),
(3, 'Priya', 'priya@gmail.com');
```

### Fetch Data

```sql
SELECT * FROM employees;
```

---

##  Summary

* One **Server** → many **Databases**
* One **Database** → many **Tables**
* One **Table** → many **Rows**

# SQL Queries

### Create Database
CREATE DATABASE resume_db;
USE resume_db;

### Create Users Table
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE
);

### Insert Data
INSERT INTO users (name, email)
VALUES ('Vivek', 'vivek@gmail.com');

### Create Resume Table
CREATE TABLE resumes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  userId INT,
  title VARCHAR(100),
  FOREIGN KEY (userId) REFERENCES users(id)
);
<img width="1536" height="1024" alt="1000177259" src="https://github.com/user-attachments/assets/7f15373e-e454-4c2e-8f7c-f5da7cbe8388" />
### Join Query
SELECT users.name, resumes.title
FROM users
JOIN resumes ON users.id = resumes.userId;
