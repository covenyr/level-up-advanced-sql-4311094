SELECT e.firstName, e.lastName, m.model, COUNT(s.salesId) OVER(PARTITION BY m.model) AS Rank, SUM(s.salesAmount) OVER(PARTITION BY m.model) AS modelSales
FROM Employee e
INNER JOIN Sales s ON e.employeeId = s.employeeId
INNER JOIN Inventory i ON i.inventoryId = s.inventoryId
INNER JOIN Model m ON m.modelId = i.modelId
GROUP BY e.firstName, e.lastName, m.model
ORDER BY e.firstName, e.lastName, Rank DESC, modelSales DESC, m.model;