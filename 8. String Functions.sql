-- String Functions

select length('skyfall');

select first_name, length(first_name)
from employee_demographics 
order by 2;


select upper('sky');

select lower('SKY');


select first_name, upper(first_name)
from employee_demographics;


-- Trim

select rtrim('   sky  ');


-- Substring

select first_name,
left(first_name,4),
right(first_name,4),
substring(first_name,3,2)
from employee_demographics;

-- Replace

select first_name, replace(first_name, 'a', 'z')
from employee_demographics;


-- Locate

select locate('o', 'Elshod');

select first_name, locate('An', first_name)
from employee_demographics;


-- Concat

select first_name, last_name,
concat(first_name, ' ' ,last_name) as full_name
from employee_demographics