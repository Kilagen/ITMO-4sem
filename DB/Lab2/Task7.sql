SELECT SalesOrderID
FROM [Sales].[SalesOrderDetail]
GROUP BY SalesOrderID
HAVING COUNT(DISTINCT ProductID) > 3