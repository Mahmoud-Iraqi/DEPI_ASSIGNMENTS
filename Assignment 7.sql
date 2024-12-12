-- Create a simple view named vw_employee_details that displays the first name, last name, and department name of employees.
create view vw_employee_details as 
select e.first_name, e.last_name, d.department_name
from employees e inner join departments d on e.department_id = d.department_id;

-- Modify the existing view vw_work_hrs to only include employees working in department number 50.
create or alter view vw_employee_details as 
select e.first_name, e.last_name, d.department_name
from employees e inner join departments d on e.department_id = d.department_id
where e.department_id = 50;

--Create a view named vw_high_status_suppliers to display all suppliers with a status greater
-- than 15, and ensure that any updates or inserts through the view still meet the status condition.
create view vw_high_status_suppliers as
select * from suppliers where status > 15
with check option;

