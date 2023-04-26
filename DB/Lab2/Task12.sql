SELECT TOP 1 SalesOrderID
FROM [Sales].[SalesOrderDetail]
GROUP BY SalesOrderID
ORDER BY COUNT(ProductID) DESC