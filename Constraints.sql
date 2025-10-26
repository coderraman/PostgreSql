SELECT * from users;

create table users(
Student_id SERIAL PRIMARY KEY,
Name varchar(50) NOT NULL,
email VARCHAR(50) UNIQUE,
age INTEGER CHECK(age>=20),
Addmission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT Into users(Name, email, age) 
VALUES('Joy', 'joy23@gmail.com', 21
);
INSERT Into users(Name, email, age) 
VALUES('Joy', 'toy25@gmail.com', 20
);