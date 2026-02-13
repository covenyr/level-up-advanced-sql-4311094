SELECT e.employeeId, e.firstName, e.lastName
FROM Employee e
WHERE NOT EXISTS (
  SELECT 1
  FROM Sales s
  WHERE e.employeeId = s.employeeId
);