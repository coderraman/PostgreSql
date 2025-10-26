create table employee2(
employee_Id INT primary key,
name varchar(20) not null,
department varchar(20),
position char(20),
salary numeric(10,2)
);

SELeCT * FROM employee2;

insert into employee2(employee_id, name, department, position, salary)
values (101, 'Raman', 'IT', 'Developer', 40000.00),
       (102, 'aman', 'IT', 'Deveops', '25000.00');

	   DELETE FROM employee2
	   where employee_id=101;


	   ALTER TABLE employee2
	   DROP column position;