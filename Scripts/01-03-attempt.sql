SELECT s.salesId, s.salesAmount, s.soldDate, c.customerId, c.firstName, c.lastName
FROM Sales s
LEFT JOIN Customer c ON s.customerId = c.customerId

UNION

SELECT s.salesId, s.salesAmount, s.soldDate, c.customerId, c.firstName, c.lastName
FROM Customer c
LEFT JOIN Sales s ON s.customerId = c.customerId;