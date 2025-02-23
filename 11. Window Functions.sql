select dem.first_name, gender, avg(salary) from employee_demographics dem
join employee_salary sal 
on dem.employee_id=sal.employee_id
group by gender, first_name;


select dem.first_name, gender, avg(salary) over(partition by gender) from employee_demographics dem
join employee_salary sal 
on dem.employee_id=sal.employee_id;


select dem.employee_id, dem.first_name, gender, salary, 
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as dense_rank_num
from employee_demographics dem
join employee_salary sal 
on dem.employee_id=sal.employee_id;
