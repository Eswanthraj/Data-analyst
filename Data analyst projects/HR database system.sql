CREATE DATABASE human_resource;

USE human_resource;

CREATE TABLE countries(
  country_id varchar(20),
  country_name varchar(50),
  region_id int
);

show tables;

INSERT INTO countries(country_id, country_name, region_id) VALUES
('AU' , 'Australia' , '1'),
('GR' , 'Germany' , '3'),
('TU' , 'Turkey' , '9'),
('PA' , 'pakistan' , '10'),
('EG' , 'Egypt' , '11'),
('SW' , 'Swedan' , '13'),
('TH' , 'Thailand' , '4'),
('GR' , 'Greece' , '15'),
('IN' , 'India' , '2'),
('JA' , 'Japan' , '7'),
('ME' , 'Mexico' , '25'),
('BR' , 'Berlin' , '33'),
('CH' , 'China' , '24'),
('NW' , 'Norway' , '23');

SELECT * FROM countries;

CREATE TABLE department(
department_id int,
department_name varchar(50),
manager_id int,
location_id varchar(50)
);

INSERT INTO department(department_id, department_name, manager_id, location_id) VALUES
('10' , 'sales' , '101' , '1000'),
('20' , 'marketing' , '102' , '2000'),
('30' , 'software' , '103' , '3000'),
('40' , 'HR', '104' , '4000'),
('50' , 'testing' , '105' , '5000'),
('60' , 'developer' , '106' , '6000'),
('70' , 'shipping' , '107' , '7000'),
('80' , 'administration' , '108' , '8000'),
('90' , 'purchasing' , '109' , '9000'),
('100' , 'analyst' , '110' , '10000'),
('101' , 'helpdesk' , '111' , '11000'),
('102' , 'ITsupport' , '112' , '12000'),
('103' , 'shareholder' , '113' , '13000');

SELECT * FROM department;

CREATE TABLE employee (
employee_id int,
first_name varchar(20),
last_name varchar(10),
email varchar(30),
phone_no varchar(20),
hire_date date,
job_id varchar(50),
salary int
);

INSERT INTO employee(employee_id, first_name, last_name, email, phone_no, hire_date, job_id, salary) VALUES
('1' , 'eswanth' , 'raj' , 'eswanthraj080@gmail.com', '123456789' , '2021-10-28' ,'100', '50000'),
('2' , 'jefery' , 'beckam' , 'jefery01@gmail.com', '123780789' , '2022-5-27' ,'200', '40000'),
('3' , 'kalai' , 'selvan' , 'kalaiselvan80@gmail.com', '845790789' , '2021-10-08' , '300', '30000'),
('4' , 'sham' , 'sanjay' , 'shamsanjay33@gmail.com', '987654321' , '2015-5-08' , '400','20000'),
('5' , 'steve' , 'joseph' , 'stevejoseph5@gmail.com', '897642718' , '2023-10-11' , '500','60000'),
('6' , 'joseph' , 'albert' , 'josephalbert@gmail.com', '6382254267' , '2025-2-28' , '600','40000'),
('7' , 'sahaya' , 'rohan' , 'sahayarohan42@gmail.com', '959392789' , '2026-3-20' , '700','30000'),
('8' , 'sree' , 'ram' , 'sreeram21@gmail.com', '984513964' , '2016-3-07' ,'800', '20000'),
('9' , 'dinesh' , 'raj' , 'dineshraj@gmail.com', '637490174' , '2019-6-07' ,'900', '10000'),
('10' , 'harish' , 'kumar' , 'harishkumar3@gmail.com', '984366821' , '2018-12-08' , '101', '30000'),
('11' , 'viknesh' , 'kumar' , 'vikneshkumar10@gmail.com', '971269321' , '2018-8-10' , '103', '40000'),
('12' , 'yogesh' , 'waran' , 'yogeshwaran12@gmail.com', '983021749' , '2017-6-09' , '105' , '60000'),
('13' , 'chandru' , 'kumar' , 'chandrukumar91@gmail.com', '990162345' , '2024-8-12' , '106' ,'70000'),
('14' , 'bruce' , 'lee' , 'brucelee@gmail.com', '891537843' , '2022-5-05' , '109','80000');

SELECT * FROM employee;

CREATE TABLE job_history(
employee_id int,
start_date date,
end_date date,
job_id varchar(50),
department_id int
);

INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)VALUES
('1' , '1994-7-10' , '1998-3-13' , 'accountant' , '10'),
('2' , '1993-7-10' , '2021-4-13' , 'clerk' , '20'),
('3' , '1992-7-10' , '2022-2-13' , 'manager' , '30'),
('4' , '1991-7-10' , '2023-1-13' , 'clerk' , '40'),
('5' , '1996-7-10' , '2021-6-13' , 'ass_manager' , '50'),
('6' , '1997-7-10' , '2017-7-13' , 'sales_manager' , '60'),
('7' , '1998-7-10' , '2013-8-13' , 'hr' , '70'),
('8' , '1999-7-10' , '2019-9-13' , 'sales_force' , '80'),
('9' , '2000-7-10' , '2023-10-13' , 'developer' , '90'),
('10' , '1994-7-10' , '2024-11-13' , 'analyst' , '100'),
('11' , '1974-4-10' , '2021-12-1' , 'accountant' , '101');

SELECT * FROM job_history;

CREATE TABLE jobs(
job_id varchar(30),
job_title varchar(40),
min_salary decimal,
max_salary decimal
);

INSERT INTO jobs(job_id, job_title, min_salary, max_salary)VALUES
('accountant' , 'public_accountant', '2000' , '10000'),
('sa_manager' , 'sales_manager', '1000' , '20000'),
('fi_manager' , 'finance_manager', '26000' , '50000'),
('sa_representative' , 'sales_representative', '55000' , '60000'),
('sa_force' , 'sales_force', '36000' , '70000'),
('sa_account' , 'sales_accountant', '25000' , '80000'),
('ac_mgr' , 'accounting_manager', '35000' , '90000'),
('sa_assistant' , 'sales_officer', '45000' , '100000');

SELECT * FROM jobs;

CREATE TABLE locations(
location_id decimal,
street_address varchar(50),
postal_code varchar(20),
city varchar(20),
country_id varchar(5)
);

INSERT INTO locations(location_id, street_address, postal_code, city, country_id)VALUES
('1000' , 'gandhi_street' , '655' , 'roma','gr'),
('2000' , 'gandhi_street' , '300' , 'nether_land' , 'nr'),
('3000' , 'gandhi_street' , '455' , 'france' , 'fr'),
('4000' , 'gandhi_street' , '365' , 'spain' , 'sp'),
('5000' , 'gandhi_street' , '500' , 'Mongolia' , 'mn'),
('6000' , 'gandhi_street' , '128' , 'south_africa' , 'sa'),
('7000' , 'gandhi_street' , '156' , 'iceland' , 'IS'),
('8000' , 'gandhi_street' , '487' , 'porto' , 'pt'),
('9000' , 'gandhi_street' , '965' , 'singapore' , 'si');

SELECT * FROM locations;

CREATE TABLE regions(
region_id decimal,
region_name varchar(20)
);

INSERT INTO regions(region_id, region_name)VALUES
('1' , 'europe\r'),
('2' , 'german\g'),
('3' , 'netherland\n'),
('4' , 'turkey\t'),
('5' , 'egypt\r');

SELECT * FROM regions;

show tables;

use human_resource;

/*1. write a query to display the names(first_name,last_name) using alias name "first_name", "last_name"
sample table:  employee*/
SELECT first_name,last_name from employee;

/*2. write a query to get all employee details from employee table order by first_name descending.alter
sample table:  employee*/
SELECT * FROM employee
ORDER BY first_name desc;

/*3.write a query to get the names (first_name,last_name, salary,  PF of  all employees (pf is calculated as 15%)

sample table:  employee*/

SELECT first_name, last_name,salary,salary*.15 PF FROM employee;

/*4. write a query to get all employee id, names(first_name,last_name),salary in ascending order  of salary.

sample table:  employee*/

SELECT employee_id, first_name, last_name,salary
FROM employee
ORDER BY salary;

/*5. write a query to get the total salaries payable to employees.

sample table:  employee*/

SELECT SUM(salary) as total_salary
from employee;

/*5. write a query to get the max & min salary of employees.
sample table:  employee*/

SELECT MAX(salary),MIN(salary)
from employee;

/*6. write a query to get the number of employees working with the company
sample table:  employee*/

SELECT COUNT(*)
FROM employee;

/*7. write a query to get the average salary and number of  employees in a table.
sample table:  employee*/

SELECT AVG (salary) as avg_salary, count(*) as total_count
FROM employee;

/*8. write a query to get the  number of  jobs available in employees table.
sample table:  employee*/

SELECT COUNT(DISTINCT job_id)
FROM employee;

/*8. write a query to get all first_name from the employees table in the uppercase
sample table:  employee*/

SELECT upper(first_name)
from employee;

/*9. write a query to display the last_name of employees whose name have exactly 6 characters.
sample table:  employee*/

SELECT last_name FROM employee 
WHERE last_name LIKE '______';

/*10. write a query to display the last_name of employees having 'e' as the third character 
sample table:  employee*/

SELECT last_name FROM employee
WHERE last_name LIKE '___e%'