SELECT ProductID
FROM [Sales].[SalesOrderDetail]
GROUP BY ProductID
HAVING COUNT(*) > 3