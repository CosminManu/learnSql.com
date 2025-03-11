-- table Orders has order_id, customer_id, order_date, ship_date, total_sum
-- table Employees has department, first_name, last_name, year, salary, position
/*
DEPARTMENT	FIRST_NAME	LAST_NAME	YEAR	SALARY	POSITION
IT	Olivia	Pearson	2011	3000	Trainee
IT	Olivia	Pearson	2012	3000	Trainee
IT	Olivia	Pearson	2012	4200	Junior Developer
IT	Olivia	Pearson	2013	4900	Junior Developer
IT	Olivia	Pearson	2014	8100	Senior Developer
Management	Jack	Johnson	2011	4300	Junior Project Manager
Management	Jack	Johnson	2012	5100	Project Manager
Management	Jack	Johnson	2013	7200	Senior Project Manager
Management	Jack	Johnson	2014	7600	Senior Project Manager
Management	Jack	Johnson	2015	9500	Head of Department
IT	Harry	Taylor	2015	2700	Trainee
Human Resources	Lily	Bennett	2013	1900	Junior HR Specialist
Human Resources	Lily	Bennett	2014	2300	HR Specialist
Human Resources	Lily	Bennett	2015	3650	Senior HR Specialist
Accounting	Charlie	Johnson	2010	2000	Junior Accountant
Accounting	Charlie	Johnson	2011	2000	Junior Accountant
Accounting	Charlie	Johnson	2012	2500	Accountant
Accounting	Charlie	Johnson	2013	3200	Accountant
Accounting	Charlie	Johnson	2014	3700	Senior Accountant
Accounting	Charlie	Johnson	2015	4200	Senior Accountant
IT	Jacob	King	2013	3400	Trainee
IT	Jacob	King	2014	4100	Junior Developer
IT	Jacob	King	2015	5900	Developer
Accounting	Jessica	Poole	2014	3800	Senior Accountant
Accounting	Jessica	Poole	2015	4300	Senior Accountant
Management	Ethan	Black	2013	5100	Project Manager
Management	Ethan	Black	2014	5900	Project Manager
Management	Ethan	Black	2015	6300	Senior Project Manager
Help Desk	Ella	Watson	2013	1400	Trainee
Help Desk	Ella	Watson	2014	1900	Customer Service Assistant
Help Desk	Ella	Watson	2015	2300	Customer Service Assistant
Human Resources	Sophia	Hunt	2011	2100	HR Junior Specialist
Marketing	Amelia	Wright	2014	2100	Trainee
Marketing	Amelia	Wright	2015	2300	Junior SEO Specialist
Marketing	Lucy	Green	2013	2000	Trainee
Marketing	Ruby	Chapman	2012	2500	Trainee
Marketing	Ruby	Chapman	2013	3400	Junior SEO Specialist
Marketing	Ruby	Chapman	2014	3900	SEO Specialist
Marketing	Ruby	Chapman	2015	5400	Senior SEO Specialist
null	Amie	Walker	null	null	null
Help Desk	Brian	Murphy	2012	1500	Trainee
Help Desk	Brian	Murphy	2013	2000	Customer Service Assistant
Help Desk	Brian	Murphy	2014	2500	Customer Service Assistant
Help Desk	Brian	Murphy	2015	3700	Customer Service Specialist
Management	Eva	Saunders	2011	2100	Trainee
Management	Eva	Saunders	2012	4100	Junior Project Manager
Management	Eva	Saunders	2013	4600	Junior Project Manager
Management	Eva	Saunders	2014	5300	Project Manager
Management	Eva	Saunders	2015	6100	Senior Project Manager
*/
/*
Here, we have employees with their salaries in specific years.
Naturally, one employee can work for more than one year, so there may be many rows for the same person, usually with different salaries each year.
The employees work in specific departments and have a certain position, which may change as the employee gets promoted.
*/


--Select all columns from the table employees and sort them according to the salary.
select * from employees
order by salary


--Select only the rows related to the year 2011 from the table employees. Sort them by salary.
SELECT * FROM employees
WHERE year = 2011
ORDER by salary


--Select all rows from the table employees and sort them in the descending order by the column last_name
select * from employees
order by last_name desc

--Select all rows from the table employees and sort them in the ascending order by the department and then in the descending order by the salary.
select * from employees
order by department ASC, salary DESC


--Select the column year from the table employees in such a way that each year is only shown once.
select distinct year from employees


select distinct department, position from employees
order by department desc

--count all rows from table
select count(*) from employees

--Check how many non-NULL values in the column position there are in the table employees. Name the column non_null_no.
select count(position) as non_null_no from employees

--Count how many different positions there are in the table employees. Name the column distinct_positions
select count(distinct position) as distinct_position
from employees

--Select the highest salary from the table employees
select max(salary) from employees

--Find the average salary in the table employees for the year 2013.
select avg(salary) from employees where year = 2013

-- sum of all salaries in the Marketing department in 2014
select sum(salary) from employees where department = 'Marketing' and year = 2014


--Find the number of employees in each department in the year 2013. Show the department name together with the number of employees.
select department, count(*) as employees_no from employees 
where year = 2013
group by department

--Show all departments together with their lowest and highest salary in 2014.
select department, max(salary), min(salary) from employees
where year = 2014
group by department

--For each department find the average salary in 2015
select department, avg(salary) from employees
where year = 2015
group by department


--Find the average salary for each employee. Show the last name, the first name, and the average salary. Group the table by the last name and the first name.
select first_name, last_name, avg(salary)
from employees
group by last_name, first_name

--Find such employees who (have) spent more than 2 years in the company. Select their last name and first name together with the number of years worked (name this column years)
SELECT last_name, first_name, count(distinct year) as years
from employees
GROUP by last_name, first_name
HAVING count(distinct year) > 2


--Find such departments where the average salary in 2012 was higher than $3,000. Show the department name with the average salary.
SELECT department, avg(salary) from employees
where year = 2012 group by department
having avg(salary) > 3000

--Sort the employees according to their summary salaries. Highest values should appear first. Show the last name, the first name, and the sum.
select last_name, first_name, sum(salary)
from employees
group by last_name, first_name
ORDER by sum(salary) desc

/*
Show the columns last_name and first_name from the table employees together with each person's average salary and the number of years they (have) worked in the company.
Use the following aliases: average_salary for each person's average salary and years_worked for the number of years worked in the company. Show only such employees who (have) spent more than 2 years in the company. Order the results according to the average salary in the descending order
*/
select last_name, first_name, avg(salary) as average_salary, count(distinct year) as years_worked 
from employees
group by last_name, first_name
having years_worked > 2
order by avg(salary) desc




