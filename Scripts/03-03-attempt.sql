SELECT s.salesId, s.salesAmount, s.soldDate
FROM Sales s
INNER JOIN Inventory i ON s.inventoryId = i.inventoryId
WHERE i.modelId IN (
  SELECT m.modelId
  FROM Model m
  WHERE m.EngineType = 'Electric'
);