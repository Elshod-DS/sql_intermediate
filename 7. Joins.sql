-- Joins 

select * from employee_demographics;


select * from employee_salary;


-- Inner Join

select dem.employee_id, age, occupation from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
-- Outer Join
select * from employee_demographics as dem -- Left table
right join employee_salary as sal -- Right Table
	on dem.employee_id = sal.employee_id;
    

-- Self Join

select emp1.employee_id as emp_santa, emp1.first_name as first_name_santa, emp1.last_name as last_name from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id;
    
