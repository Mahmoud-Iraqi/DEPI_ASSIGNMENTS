-- Write a SQL query to retrieve all columns from a table named employees
select * from employees;

-- Write a SQL query to retrieve the emp_id, emp_name, and dept_id from the employees table, where the location is 'Cairo'.
select emp_id, emp_name, dept_id from employees where location = 'Cairo';

-- Write a SQL query that displays distinct dept_id values from the employees table.
select distinct dept_id from employees;

-- Write a SQL query to create a table students with the following columns: ID (Primary Key), First_Name (not null), Last_Name (default 'Unknown'), Address (default 'N/A'), City (default 'N/A'), and Birth_Date.
create table students (
 ID int PRIMARY KEY,
First_name varchar(255) not null,
Last_name varchar(255) default 'Unknown',
Adress varchar(255) default 'N/A', 
City varchar(255) default 'N/A',
birth_date date ,
);

-- Write a SQL query to drop the students table.
drop table students;

-- Write a SQL query to insert the following values into the students table: ('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01').
insert into students (First_name, Last_name, adress, city, birth_date)
values('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01');

-- Write a SQL query to update the Address of the student with Last_Name = 'Ahmed' to 'Garden City'
update students set Last_name = 'Ahmed', city = 'Garden City';

-- Write a SQL query to delete the rows from the students table where City is 'Cairo', and then rollback the transaction.
begin transaction;
delete from students where city = 'cairo';
rollback;