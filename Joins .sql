/*
Inner Joins, Full/left/right/ Outer joins 
*/

Use Basics_SQL;

#inner join cobmine both tables and it will show the common columns only 
select *
from Employee
inner join EmployeeSalary
	on employee.empolyeeID = employeeSalary.EmpolyeeID;

# full two tables 
SELECT * 
FROM Basics_SQL.Employee e 
Full outer JOIN Basics_SQL.EmployeeSalary es 
	ON e.EmpolyeeID =es.EmpolyeeID 

#left joins 
SELECT * 
FROM Basics_SQL.Employee e 
left outer JOIN Basics_SQL.EmployeeSalary es 
	ON e.EmpolyeeID =es.EmpolyeeID 

#right join
SELECT * 
FROM Basics_SQL.Employee e 
right outer JOIN Basics_SQL.EmployeeSalary es 
	ON e.EmpolyeeID =es.EmpolyeeID 
    
SELECT firstName,lastName, jobTitle
FROM Basics_SQL.Employee e 
right outer JOIN Basics_SQL.EmployeeSalary es 
	ON e.EmpolyeeID =es.EmpolyeeID     
  
SELECT e.EmpolyeeID, firstName,lastName, jobTitle
FROM Basics_SQL.Employee e 
left outer JOIN Basics_SQL.EmployeeSalary es 
	ON e.EmpolyeeID =es.EmpolyeeID   
    
SELECT e.EmpolyeeID,firstName,lastName, jobTitle
FROM Basics_SQL.Employee e 
inner JOIN Basics_SQL.EmployeeSalary es 
	ON e.EmpolyeeID =es.EmpolyeeID 
    where firstName <> 'maia'
    order by jobTitle desc
    
SELECT  jobTitle, avg(salary) as avg_Salary
FROM Basics_SQL.Employee e 
inner JOIN Basics_SQL.EmployeeSalary es 
	ON e.EmpolyeeID =es.EmpolyeeID 
    where  jobTitle = 'ml'
    group by jobTitle 
 
