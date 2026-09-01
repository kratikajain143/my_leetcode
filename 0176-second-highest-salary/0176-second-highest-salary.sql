# Write your MySQL query statement below
SELECT MAX(salary) as SecondHighestSalary 
FROM Employee where salary NOT IN (SELECT MAX(salary) from employee);