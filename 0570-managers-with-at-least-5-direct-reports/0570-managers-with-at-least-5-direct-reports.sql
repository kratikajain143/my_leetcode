# Write your MySQL query statement below
SELECT name FROM(
SELECT e1.name,COUNT(*) as cnt
 FROM Employee e1 JOIN Employee e2 ON e1.id=e2.managerID GROUP BY e1.id HAVING cnt >=5
 )c;