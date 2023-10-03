create database Worker;
use Worker;

create table Worker(
Worker_Id int,
First_Name varchar(50),
Last_Name varchar(50),
Salary int,
Joining_Date datetime,
Department varchar(50)




);
insert into Worker(Worker_Id, First_Name, Last_Name, Salary, Joining_Date, Department)
values(1, "Monika", "Arora", 100000, "2014-02-20 09:00:00", "HR" ),
      (2, "Neharika", "Vema", 80000, "2014-06-11 09:00:00 ", "Admin"),
      (3, "Vishal", "Singhal", 300000, "2014-02-20 09:00:00", "HR"),
      (4, "Amitabh", "Singh", 500000, "2014-02-20 09:00:00", "Admin"),
      (5, "Vivek", "Bhati", 500000, "2014-06-11 09:00:00", "Admin"),
      (6, "Vipul", "Diwan", 200000, "2014-06-11 09:00:00", "Account"),
      (7, "Satish", "Kumar", 75000, "2014-01-20 09:00:00", "Account"),
      (8, "Geetika", "Chauhan", 90000, "2014-04-11 09:00:00", "Admin");
      
select * from Worker;


/*1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
Ascending and DEPARTMENT Descending.*/
select * from worker order by First_Name asc, Department desc;
 
/*2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” 
from the Worker table.*/ 
select * from worker where first_name in("Vipul", "Satish");

/*3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and 
contains six alphabets.*/
select * from worker where first_name like "%h" and length(first_name)= 6;


/*4. Write an SQL query to print details of the Workers whose SALARY lies between 1.*/
select * from worker where salary;

/*5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.*/
SELECT department , COUNT(department) 
FROM worker
GROUP BY department
HAVING COUNT(department);

/*6. Write an SQL query to show the top 6 records of a table.*/ 
select * from worker order by salary desc limit 6;

/*7. Write an SQL query to fetch the departments that have less than five people in them.*/
 select department from worker where Worker_Id <= 5 group by department;

/*8. Write an SQL query to show all departments along with the number of people in there.*/
select worker_id, department from worker;

/*9. Write an SQL query to print the name of employees having the highest salary in each 
department.*/
SELECT department,
       first_name, salary
FROM worker w
WHERE w.salary IN
    (SELECT max(salary)
     FROM worker
     GROUP BY department) ;

create database student;
use student;

create table student(

StdID int primary key not null,
StdName varchar(50),
Sex varchar(15),
Percentage int not null,
Class varchar(10),
Sec varchar(2),
Stream varchar(15),
DOB date








);

select * from student;

insert into student(StdID, StdName, Sex, Percentage, Class, Sec, Stream, DOB)
values(1001, "Surekha Joshi", "Female", 82, 12, "A", "Science", "1998-03-08" ),
      (1002, "Maahi Agarwal", "Female", 56, 11, "C", "Commerce", "2008-11-23" ),
      (1003, "Sanam Varma", "Male", 59, 11, "C", "Commerce", "2006-06-29"),
      (1004, "Ronit Kumar", "Male", 63, 11, "C", "Commerce", "1997-11-05"),
      (1005, "Dipesh Pulkit", "Male", 78, 11, "B", "Science", "2003-09-14"),
      (1006, "Jahanvi Puri", "Female", 60, 11, "B", "Commerce", "2008-11-07"),
      (1007, "Sanam Kumar", "Male", 23, 12, "F", "Commerce", "1998-03-08"),
      (1008, "Sahil Saras", "Male", 56, 11, "C", "Commerce", "2008-11-07"),
      (1009, "Akshra Agarwal", "Female", 72, 12, "B", "Commerce", "1996-10-01"),
      (1010, "Stuti Mishra", "Female", 39, 11, "F", "Science", "2008-11-23"),
      (1011, "Harsh Agarwal", "Male", 42, 11, "C", "Science", "1998-03-08"),
      (1012, "Nikunj Agarwal", "Male", 49, 12, "C", "Commerce", "1998-06-28"),
      (1013, "Akriti Saxena", "Female", 89, 12, "A", "Science", "2008-11-23"),
      (1014, "Tani Rastogi", "Female", 82, 12, "A", "Science", "2008-11-23");
      
      
      /*1 To display all the records form STUDENT table. SELECT * FROM student ;*/
      select * from student;
/*1001	Surekha Joshi	Female	82	12	A	Science	1998-03-08
1002	Maahi Agarwal	Female	56	11	C	Commerce	2008-11-23
1003	Sanam Varma	Male	59	11	C	Commerce	2006-06-29
1004	Ronit Kumar	Male	63	11	C	Commerce	1997-11-05
1005	Dipesh Pulkit	Male	78	11	B	Science	2003-09-14
1006	Jahanvi Puri	Female	60	11	B	Commerce	2008-11-07
1007	Sanam Kumar	Male	23	12	F	Commerce	1998-03-08
1008	Sahil Saras	Male	56	11	C	Commerce	2008-11-07
1009	Akshra Agarwal	Female	72	12	B	Commerce	1996-10-01
1010	Stuti Mishra	Female	39	11	F	Science	2008-11-23
1011	Harsh Agarwal	Male	42	11	C	Science	1998-03-08
1012	Nikunj Agarwal	Male	49	12	C	Commerce	1998-06-28
1013	Akriti Saxena	Female	89	12	A	Science	2008-11-23
1014	Tani Rastogi	Female	82	12	A	Science	2008-11-23*/

/*2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB 
FROM student ; */
select StdName, DOB from student;
/*Tani Rastogi	2008-11-23
Surekha Joshi	1998-03-08
Stuti Mishra	2008-11-23
Sanam Varma	2006-06-29
Sanam Kumar	1998-03-08
Sahil Saras	2008-11-07
Ronit Kumar	1997-11-05
Nikunj Agarwal	1998-06-28
Maahi Agarwal	2008-11-23
Jahanvi Puri	2008-11-07
Harsh Agarwal	1998-03-08
Dipesh Pulkit	2003-09-14
Akshra Agarwal	1996-10-01
Akriti Saxena	2008-11-23*/

/*3. To display all students record where percentage is greater of equal to 80 FROM student table. 
SELECT * FROM student WHERE percentage >= 80;*/
select * from student where percentage >=80;
/*1001	Surekha Joshi	Female	82	12	A	Science	1998-03-08
1013	Akriti Saxena	Female	89	12	A	Science	2008-11-23
1014	Tani Rastogi	Female	82	12	A	Science	2008-11-23*/

/*4. To display student name, stream and percentage where percentage of student is more than 80*/ 
SELECT StdName, Stream, Percentage from student WHERE percentage > 80; 
/*Surekha Joshi	Science	82
Akriti Saxena	Science	89
Tani Rastogi	Science	82*/

/*5. To display all records of science students whose percentage is more than 75 form student table.*/ 
SELECT * From student WHERE stream = "Science" AND "percentage" > 75; 
							
 


							
      
      
      
