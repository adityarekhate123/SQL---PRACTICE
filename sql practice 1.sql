CREATE TABLE emp (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2),
    department VARCHAR(50)
);

INSERT INTO emp (id, name, age, salary, department) VALUES
(1, 'John Smith', 28, 50000.00, 'Sales'),
(2, 'Jane Doe', 35, 75000.00, 'Marketing'),
(3, 'Bob Johnson', 42, 80000.00, 'Engineering'),
(4, 'Mary Davis', 31, 60000.00, 'Human Resources'),
(5, 'Tom Brown', 29, 55000.00, 'Sales'),
(6, 'Linda Lee', 27, 48000.00, 'Marketing'),
(7, 'Mike Anderson', 45, 90000.00, 'Engineering'),
(8, 'Karen Chen', 33, 65000.00, 'Human Resources'),
(9, 'David Kim', 30, 57000.00, 'Sales'),
(10, 'Amy Wong', 36, 72000.00, 'Marketing');

----fetch the record 
-----	SQL CHEETSHEET ON THIS TABLE
select * from emp

--SELECT ALL COLUMNS FROM EMPLOYE

SELECT * FROM emp

---SELECT PERTICULAR COLUMN FROM TABLE
SELECT NAME,AGE FROM emp

---SELECT EMPLOYE WHOS FROM SALES DEPARTMENT

SELECT * FROM EMP WHERE DEPARTMENT='SALES'

---SELECT EMPLOYEE AGE BETWEEN 30 AND 40

SELECT * FROM EMP WHERE AGE BETWEEN 30 AND 40

---TO ORDER EMPLOYEES BY SALARY IN DESENDING ORDER

SELECT * FROM EMP ORDER BY salary DESC

---TO COUNT NO EMPLOYEE IN EACH DEPARTMENT

SELECT DEPARTMENT,COUNT(id) FROM EMP GROUP BY DEPARTMENT

----TO CALCULATE AVG SALARY OF EMPLOYEE 

SELECT AVG(SALARY) AS AVG_SAL FROM emp

---TO CALCULATE MAX IN EACH DEPARTMENT

SELECT DEPARTMENT,MAX(SALARY) AS MAX_SAL FROM EMP GROUP BY DEPARTMENT

---UPDATE THE SALARY OF THE EMPLOYEE

UPDATE EMP SET SALARY =90000 WHERE ID =5

SELECT * FROM EMP 

---INSERT A NEW RECORD IN TABLE 

INSERT INTO EMP(id,name,age,salary,department)
values(11,'aditya',26,100000,'data_scientist')

select * from emp

----delete record from the table

delete from emp where id =6

---to select employee with highest salary

select * from emp where salary =(select max(salary) from emp)

---top 3 highest paid employee

select top 3 * from emp order by salary desc 

----update the deparment name of that employee whose name start with 'j'

select * from emp

update emp set department='it' where name like'j%'

----find the total salary paid to all employee

select sum(salary) as total_salary from emp

----select those employee who earn more than average salary

select name,salary from emp where salary >(select avg(salary) from emp)

----delect all employee who work in hr department

delete from emp where department='Human Resources'

----find the department whos highest avg salary
select top 1 department,avg(salary) as avg_sal from emp group by department order by avg(salary) desc

---