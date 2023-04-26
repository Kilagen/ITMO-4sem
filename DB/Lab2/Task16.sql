SELECT ProductID
FROM [Sales].[SalesOrderDetail]
GROUP BY ProductID
HAVING MIN(OrderQty) > 1 AND COUNT(SalesOrderID) > 2