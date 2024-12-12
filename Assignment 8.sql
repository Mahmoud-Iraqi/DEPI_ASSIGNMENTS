-- Write a SQL query to retrieve all employees who were hired within the last 30 days from the current date.
select * from employees where hire_date >= DATEADD(DAY, -30, GETDATE());

--Create a stored procedure named sp_get_employee_hours that retrieves the first name, last name,
--and total hours worked on projects for a given employee ID.
create procedure sp_get_employee_hours @(emp_id int) as
begin
	
	select e.first_name, e.last_name, sum(w.hrs) as total_hrs
	from employees e inner join works_on w on e.employee_id = w.employee_id
	where e.employee_id = @emp_id
	group by e.first_name, e.last_name
end;

--Create a stored procedure named sp_department_employee_count that retrieves the
-- department ID, department name, and the number of employees in each department,
--but only for departments with more than 5 employees.
create procedure sp_department_employee_count as
select d.department_id, d.department_name, count(*) as total_emps
from employees e inner join departments d on e.department_id = d.department_id
group by d.department_id, d.department_name
having count(*) > 5

