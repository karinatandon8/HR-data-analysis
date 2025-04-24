use karina;
select * from hr_data;
-- count the number of employees in each department--
select department ,education , count(*) as "no_of_employees" 
from hr_data 
where education="high school"
group by department;

-- calculate the average age for each department --
select department, avg(age)
from hr_data
group by department;

-- Identify the most common job roles in each department --
select department,job_role, count(*)
from hr_data
group by department,job_role
order by department, job_role desc;

-- calculate the average job satisfaction for each education level -- 
select education, avg(job_satisfaction)
from hr_data
group by education;

-- Determine the average age for employees with different levels of job satisfaction --
select job_satisfaction, avg(age) As age
from hr_data
group by job_satisfaction;

-- Calculate the attrition rate for each age band --
select age_band, sum(case when attrition="yes" then 1 else 0 end ) * 100/count(*) as attrition_rate
from hr_data
group by age_band;

-- Identify the departments with the highest and lowest average job satisfaction --
select department, avg(job_satisfaction)
from hr_data
group by department
order by avg(job_satisfaction) ,department
limit 1;

-- Find the age band with the highest attrition rate among employees with a specific education level --
select age_band,sum(case when attrition='yes' then 1 else 0 end ) * 100/count(*) as attrition_rate
from hr_data
where education_field = 'Life Sciences'
group by age_band
order by attrition_rate desc
Limit 1;

-- Find the education level with with the highest attrition rate among emplos with a specific education level -- 
select education, avg(job_satisfaction)
from hr_data
where business_travel = 'Travel_Frequent'
group by education_field
order by avg(job_satisfaction) desc
limit 1;
-- Identify the age band with the highest average job satisfaction among married employees --
select age_band, avg(job_satisfaction) as "avg_job"
from hr_data
where marital_status="married"
group by age_band
order by avg_job desc
limit 1;

-- creating a table
create table student1(ID int NOT NULL, Name varchar(25) NOT NULL, Age int);
-- inserting some values
insert into student1 values(1,'Neha',23);
insert into Student1 values(2,NULL,NULL);
insert into Student1 VALUES(1,'Aakash',21,'ak@12');
insert into Student1 VALUES(2,'George',null,'go@45');
select * from Student1;











