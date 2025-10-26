SELECT * FROM students;

SELECT * FROM students2;

-- UNION Combine result remove duplicate
SELECT name, course
FROM students
UNION
SELECT name, course
FROM students2;

-- -- UNION ALL Combine result Not remove duplicate
SELECT name, course
FROM students
UNION ALL
SELECT name, course
FROM students2;

--INTERSET Return Common result 
SELECT name, course
FROM students
INTERSECT
SELECT name, course
FROM students2;	

-- --EXCEPT Return Result in First Table Not in Second Table
SELECT name, course
FROM students
EXCEPT
SELECT name, course
FROM students2;	
