SELECT ProductID, COUNT(OrderQty) AS SoldCount
FROM [Sales].[SalesOrderDetail]
GROUP BY ProductID