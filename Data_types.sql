create Table users(
User_Id Int Primary Key,
Name varchar(10),
Email_Id varchar(100) Unique,
Age Int Check (age>18),
Reg_date Timestamp Default Current_Timestamp
);

select * from users

Insert into users (User_Id, Name, Email_ID, Age)
Values (1, 'Raman','ramanpal23@gmail.com', 24)