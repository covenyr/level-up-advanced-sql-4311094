WITH cte AS (
  SELECT strftime('%Y', s.soldDate) AS soldYear, s.salesAmount
  FROM Sales s
)

SELECT soldYear, FORMAT("$%.2f", SUM(cte.salesAmount)) AS AnnualSales
FROM cte
GROUP BY soldYear
ORDER BY soldYear;