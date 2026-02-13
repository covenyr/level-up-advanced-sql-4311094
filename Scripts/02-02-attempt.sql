SELECT e.employeeId, e.firstName, e.lastName, i.inventoryId, MAX(s.salesAmount) AS maxSale, MIN(s.salesAmount) AS minSale
FROM Employee e
INNER JOIN Sales s ON e.employeeId = s.employeeId
INNER JOIN Inventory i ON s.inventoryId = i.inventoryId
WHERE DATE(s.soldDate) >= '2022-01-01'
GROUP BY e.employeeId, e.firstName, e.lastName;

SELECT * FROM Sales;