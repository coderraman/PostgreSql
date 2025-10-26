-- Create Hospita_Data table
DROP TABLE IF EXISTS Patients;
CREATE TABLE Patients(
Hospital_Name VARCHAR(50),
Location VARCHAR(50),
Department VARCHAR(50),
Doctors_Count INT,
Patients_Count INT,
Admission_Date DATE,
Discharge_Date DATE,
Medical_Expenses NUMERIC(10,2)
);

SELECT * FROM Patients;

-- Import Data into Tabel from Patients Table
COPY Patients(Hospital_Name, Location, Department, Doctors_Count, Patients_Count, Admission_Date, Discharge_Date, Medical_Expenses)
FROM 'C:\Program Files\PostgreSQL\17\data\CSV Imports\Hospital_Data.csv'
CSV HEADER;


-- 1. Total Number of Patients : Write an SQL query to find the total number of patients across all hospitals
SELECT SUM(patients_count) AS Total_Patients
FROM patients;

-- 2. Average Number of Doctors per Hospital : Retrieve the average count of doctors available in each hospital.
SELECT DISTINCT Hospital_Name, AVG(Doctors_Count) AS Avg_Doctors
FROM Patients
GROUP BY Hospital_Name;

-- 3.  Top 3 Departments with the Highest Number of Patients : Find the top 3 hospital departments that have the
--     highest number of patients.
SELECT DISTINCT Department, SUM(Patients_Count) AS Total_Patient
FROM Patients
GROUP BY Department
ORDER BY Total_Patient DESC LIMIT 3;

-- 4. Hospital with the Maximum Medical Expenses : Identify the hospital that recorded the highest medical expenses.
SELECT DISTINCT Hospital_Name, SUM(Medical_Expenses) AS Total_Medical_Expense
FROM Patients
GROUP BY Hospital_Name
ORDER BY Total_Medical_Expense DESC LIMIT 1;

-- 5. Daily Average Medical Expenses : Calculate the average medical expenses per day for each hospital
SELECT Hospital_Name, Discharge_Date, AVG(Medical_Expenses) AS Avg_Medical_Expense
From Patients
GROUP BY Hospital_Name, Discharge_Date
ORDER BY Discharge_Date;

6. -- Longest Hospital Stay : Find the patient with the longest stay by calculating the difference between
-- Discharge Date and Admission Date.
SELECT *, (Discharge_Date - Admission_Date) AS Long_Stay
FROM Patients
ORDER BY Long_Stay LIMIT 1;

7. -- Total Patients Treated Per City : Count the total number of patients treated in each city.
SELECT Location, SUM(Patients_Count) AS Total_Num_Patients
FROM Patients
GROUP BY Location
ORDER BY Total_Num_Patients;

8. -- Average Length of Stay Per Department : Calculate the average number of days patients spend in each department.
SELECT Department, AVG(Discharge_Date - Admission_Date) AS Avg_Days
FROM Patients
GROUP BY Department
ORDER BY Avg_Days;

9. -- Identify the Department with the Lowest Number of Patients : Find the department with the least number of patients
SELECT Department, SUM(Patients_Count) AS Total_Patients
FROM Patients
GROUP BY Department
ORDER BY Total_Patients ASC LIMIT 1;

10. -- Monthly Medical Expenses Report : Group the data by month and calculate the total medical expenses for each month
SELECT  TO_CHAR(Discharge_Date,'YYYY-MM') AS Month,
SUM(Medical_Expenses) AS Total_Medical_Expense
FROM Patients
GROUP BY Month
ORDER BY Month;




















