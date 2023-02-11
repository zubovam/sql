--1
select employee_name, monthly_salary
from employees e join employee_salary es on e.id = es.employee_id 
	join salary s on es.salary_id = s.id 
;
--2
select employee_name
from employees e join employee_salary es on e.id = es.employee_id 
	join salary s on es.salary_id = s.id 
	where s.monthly_salary < 2000
;
--3
select monthly_salary
from salary s join employee_salary es on s.id = es.salary_id
	where es.employee_id != all(select es.employee_id from employees e join employee_salary es on e.id = es.employee_id)
;
--4
select monthly_salary
from salary s join employee_salary es on s.id = es.salary_id
where (es.employee_id != all(select es.employee_id from employees e join employee_salary es on e.id = es.employee_id))
	and monthly_salary < 2000
;
--5
select employee_name
from employees e left join employee_salary es on e.id = es.employee_id
where es.salary_id is null
;
--6
select employee_name, role_name
from employees e join roles_employee re on e.id = re.employee_id   
	join roles r on re.role_id = r.id 
;
--7
select employee_name, role_name
from employees e join roles_employee re on e.id = re.employee_id   
	join roles r on re.role_id = r.id 
where r.role_name like '%Java %'
;
--8
select employee_name, role_name
from employees e join roles_employee re on e.id = re.employee_id   
	join roles r on re.role_id = r.id 
where r.role_name like '%Python %'
;
--9
select employee_name, role_name
from employees e join roles_employee re on e.id = re.employee_id   
	join roles r on re.role_id = r.id 
where r.role_name like '%QA %'
;
--10
select employee_name, role_name
from employees e join roles_employee re on e.id = re.employee_id   
	join roles r on re.role_id = r.id 
where r.role_name like '% Manual QA %'
;
--11
select employee_name, role_name
from employees e join roles_employee re on e.id = re.employee_id   
	join roles r on re.role_id = r.id 
where r.role_name like '% Automation QA %'
;
--12
select employee_name, monthly_salary
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name like '%Junior %'
;
--13
select employee_name, monthly_salary
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name like '%Middle %'
;
--14
select employee_name, monthly_salary
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name like '%Senior %'
;
--15
select monthly_salary
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name like '% Java developer%'
;
--16
select monthly_salary
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name like '% Python developer%'
;
--17
select employee_name, monthly_salary
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name = 'Junior Python developer'
;
--18
select employee_name, monthly_salary
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name = 'Middle JavaScript developer'
;
--19
select employee_name, monthly_salary --, role_name
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name = 'Senior Java developer'
;
--20
select monthly_salary --, employee_name , role_name
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name like '% QA engineer%'
;
--21
select avg(monthly_salary)
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name like '%Junior %'
;
--22
select sum(monthly_salary)
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name like '% JavaScript %'
;
--23
select min(monthly_salary)
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name like '% QA %'
;
--24
select max(monthly_salary)
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name like '% QA %'
;
--25
select count(role_name)
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
where r.role_name like '% QA %'
;
--26
select count(role_name)
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
where r.role_name like 'Middle%'
;
--27
select count(role_name)
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
where r.role_name like '%developer'
;
--28
select sum(monthly_salary)
from employees e join roles_employee re on e.id = re.employee_id  
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where r.role_name like '%developer'
;
--29
select employee_name, role_name, monthly_salary
from employees e join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
order by s.monthly_salary 
;
--30
select employee_name, role_name, monthly_salary
from employees e join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where s.monthly_salary >=1700 and s.monthly_salary <=2000
order by s.monthly_salary 
;
--31
select employee_name, role_name, monthly_salary
from employees e join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where s.monthly_salary < 2300
order by s.monthly_salary 
;
select employee_name, role_name, monthly_salary
from employees e join roles_employee re on e.id = re.employee_id 
	join roles r on re.role_id = r.id
	join employee_salary es on e.id = es.employee_id 
	join salary s on s.id = es.salary_id 
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary 
;








