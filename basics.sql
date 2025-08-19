use basic;

CREATE TABLE employee (
    emp_id INT,
    emp_name VARCHAR(235),
    emp_position VARCHAR(235),
    department VARCHAR(235),
    salary INT,
    district VARCHAR(235),
    postcode INT
);
drop table employee
INSERT INTO employee(emp_id, emp_name, emp_position, department, salary, district, postcode)
VALUES
  ('102', 'sanju', 'ui/ux designer', 'designing', '35000', 'Thrissur', '680708'),
  ('110', 'prince', 'python developer', 'development', '250000', 'Thrissur', '680303'),
  ('105', 'Aron', 'business associate', 'management', '65000', 'Kozhikode', '760030'),
  ('106', 'Ajo', 'staff', 'cleaning', '21000', 'Wayanad', '789000'),
  ('108', 'krishnadev', 'flutter developer', 'development', '29000', 'Alappuzha', '890606');




select * from employee;


truncate table employee;   #---->To delect all the data of table


#where clause

select* from employee
where emp_id=108;

#Alter table


alter table employee
add Email varchar(255);

select * from employee;


alter table employee
drop column Email;



#---> To change coloumn name

ALTER TABLE employee
CHANGE COLUMN district place VARCHAR(235);

select * from employee;

SELECT * FROM employee
WHERE emp_id = '108';

delete from employee 
where emp_id='108';


#delecting all the records

delete from employee

select * from employee;


#update

update employee
set emp_name="Ajo",district="kannur" 
where emp_id="106"

select * from employee 
where emp_name="Ajo";


#update

update employee
set postcode=680303
where district="Thrissur";

select * from employee;


#count()

select count(emp_id)
from employee;

select avg(salary)as avg_salary
from employee
where department="development"


SELECT * FROM employee
WHERE emp_name LIKE 'a%';


select * from employee 
where emp_name like '%r%';     #--->try again


select * from employee
where salary between 50000 and 300000;



#in operator

select* from employee
where district in('Thrissur','Alappuzha')


select* from employee
where district not in('Thrissur','Alappuzha')

select * from employee
where salary between  20000 and 50000
and emp_position not in ('staff')



SELECT * FROM employee
ORDER BY salary DESC;


SELECT * FROM employee
order by salary desc,district asc;



#min max


SELECT MIN(salary) AS smallest_salary
FROM employee;


select max(salary)as largest_salary
from employee;