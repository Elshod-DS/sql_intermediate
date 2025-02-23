-- Case Statements

select first_name, last_name, age,
case 
when age <=30 then 'Young'
when age between 31 and 50 then 'Old'
when age >=50 then 'Retired'
end as Age_Bracket 
from employee_demographics;



-- Pay Increase
-- < 5000 = 5%
-- > 5000 = 7%
-- Finance = 10% bonus


select first_name,last_name, salary,
case
when salary < 5000 then salary * 1.05
when salary > 5000 then salary * 1.07 
end as new_salary,
case 
when dept_id = 6 then salary * 1.1
end as bonus
from employee_salary

