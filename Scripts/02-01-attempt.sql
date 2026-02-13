SELECT e.employeeId, e.firstName, e.lastName, s.salesId, SUM(s.salesAmount) AS totalSales
FROM Employee e
INNER JOIN Sales s WHERE e.employeeId = s.employeeId
GROUP BY e.employeeId;
