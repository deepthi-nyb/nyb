select employee_id,first_name,salary,commission_pct,nvl(commission_pct,0) nvl_commpct from hr.employees;
select employee_id,first_name,salary,commission_pct,nvl(to_char(commission_pct),0) nvl_commpct from hr.employees;
select employee_id,first_name,nvl2(commission_pct,'Has commission','No Commission')status from hr.employees;
select employee_id,first_name,greatest((salary*0.10),(commission_pct*salary))bonus from hr.employees;
select employee_id,first_name,greatest((salary*0.10),(nvlcommission_pct*salary))bonus from hr.employees;
select employee_id,first_name,least(eval1,eval2,eval3)from hr.employees;
select employee_id,first_name,salary,commission_pct,(nvl2(commission_pct,commission_pct,500)*salary +salary)final_sal
from hr.employees;
select employee_id,first_name,salary,commission_pct,salary+nvl(commission_pct*salary ,500)final_sal
from hr.employees;
select employee_id,first_name,nvl(hire_date,'01-JAN-2000')hire_date from hr.employees;
select employee_id,first_name,commission_pct,nvl2(commission_pct,case when commission_pct>0.1 then 'A'
                                                                       else 'B'
                                                                  end ,'C') grade from hr.employees;
select employee_id,first_name,greatest(nvl(commission_pct*salary,0),2000) bonus from hr.employees;       
select department_id,least(hire_date)earliest_hiredate from hr.employees;    
select * from hr.employees;     
select department_id,min(hire_date) earliest_hiredate
from hr.EMPLOYEES
group by department_id
order by department_id;                                          
select employee_id,first_name,nvl2(commission_pct,'High Commission','No commission')comm_status from hr.employees;
select employee_id,first_name,greatest(sysdate,hire_date) later_date from hr.employees;
select employee_id,first_name,salary,least(nvl(salary,5000),5000)as min_sal from hr.employees;
select employee_id,first_name,nvl2(commission_pct,greatest(5000,(commission_pct*salary)),5000)bonus from hr.employees;---correct query
SELECT employee_id, 
       first_name, 
       GREATEST(5000, NVL(commission_pct * salary, 5000)) AS bonus
FROM hr.employees;
select employee_id,first_name,salary,nvl2(commission_pct,salary*0.2,salary*0.1) tax_amount from hr.employees;
