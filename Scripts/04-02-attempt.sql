WITH monthlySales AS (
  SELECT strftime('%Y', s.soldDate) AS year, strftime('%m', s.soldDate) AS month, SUM(s.salesAmount) AS monthlySales
  FROM Sales s
  GROUP BY year, month
)

SELECT year, month, monthlySales, SUM(monthlySales) OVER 
(
  PARTITION BY year 
  ORDER BY year, month
) AS annualRunningTotal
FROM monthlySales
ORDER BY year, month;