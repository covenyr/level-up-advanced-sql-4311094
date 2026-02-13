-- Display report for employees who have sold at least 5 cars

SELECT emp.employeeId, 
    count(*) AS NumOfCarsSold, 
    MIN(salesAmount) AS MinSalesAmount, 
    MAX(salesAmount) AS MaxSalesAmount
FROM sales sls
INNER JOIN employee emp
    ON sls.employeeId = emp.employeeId
WHERE sls.soldDate >= '2022-01-01'
GROUP BY emp.employeeId
HAVING count(*) > 5
