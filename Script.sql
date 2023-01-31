create table salary(
	id serial primary key,
	monthly_salary int not null
);

create table roles(
	id serial primary key,
	role_title varchar(50) unique not null
);

create table roles_salary(
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key (id_roles)
		references roles(id),
	foreign key (id_salary)
		references salary(id)
);

insert into salary(monthly_salary)
values 	(500),
		(700),
		(900),
		(1000),
		(1200),
		(1400),
		(1500),
		(1700),
		(2000);
	
insert into roles(role_title)
values ('QA_manual_junior'),
    ('QA_manual_middle'),
    ('QA_manual_senior'),
    ('QA_automation_junior'),
    ('QA_automation_middle'),
    ('QA_automation_senior'),
    ('Java_developer_junior'),
    ('Java_developer_middle'),
    ('Java_developer_senior'),
    ('CEO'),
    ('CTO'),
    ('HR'),
    ('Manager'),
    ('Designer');

insert into roles_salary (id_role, id_salary)
values 	(1, 1),
		(2, 3),
		(3, 7),
		(4, 1),
		(5, 5),
		(6, 8);
	
alter table roles
add column parking int;

alter table roles
rename column parking to taxi;

alter table roles
drop column taxi;

update salary
set monthly_salary = 1600
where id = 7;
   
select * from salary
order by (id);


select rs.id, role_title, monthly_salary from roles_salary rs
right join salary s on id_salary = s.id
left join roles r on id_role = r.id;


