# Day 18 - MySQL, Tables & Joins

##  Module 4 - Database
Instructor: Dinesh Rawat

## 🚀 Topics Covered
- Why database is better than files
- MySQL Server & Workbench
- Creating Database
- Tables & Keys
- Insert & Select
- Foreign Key
- Joins

##  SQL Queries

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

### Join Query
SELECT users.name, resumes.title
FROM users
JOIN resumes ON users.id = resumes.userId;
