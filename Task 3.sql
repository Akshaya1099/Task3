use hr;

select * from employees;

select first_name, ifnull(department_id, -1) 
from employees;

select first_name, ifnull(manager_id, -1 ) from employees;

select first_name, salary from employees order by salary desc;

select avg(salary) from employees;

select max(salary) from employees;

select count(employee_id) from employees; 
 
select count(department_id) from employees; 

select min(salary)  as min_salary, max(salary) as max_salary, avg(salary) as avg_salary
from employees;

select if(salary > 10000, 'high paid', 'low paid') as salary_tag, 
salary from employees;


select case when salary < 5000 then 'low paid'
when salary >= 5000 and salary < 12000 then 'moderate pay'
else 'high paid' end as salary_tag from employees;

select department_id , avg(salary) 
from employees group by department_id;

select department_id, count(employee_id) as count_emp 
from employees group by department_id order by count_emp desc;

select department_id, min(salary) as min_salary 
from employees group by department_id order by min_salary desc limit 3;

select department_id, job_id , avg(salary) avg_sal 
from employees group by department_id, job_id 
order by department_id desc, job_id desc limit 3 ;















SELECT department_id, avg(salary) as avg_sal
from employees group by department_id  having avg_sal > 8000;





select department_id, job_id , count(employee_id)
from employees group by department_id, job_id;



select department_id, count(employee_id) as cnt
from employees group by department_id having cnt > 10;



select year(hire_date), count(employee_id) as cnt
from employees group by year(hire_date);



select year(hire_date), count(employee_id) 
from employees group by year(hire_date) having count(employee_id) > 5 ;




select year(hire_date), avg(salary) from employees 
group by year(hire_date)  having  avg(salary) > 10000;



















