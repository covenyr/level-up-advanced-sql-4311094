SELECT e.firstName, e.lastName, m.firstName, m.lastName
FROM Employee e
INNER JOIN Employee m ON e.managerId = m.managerId