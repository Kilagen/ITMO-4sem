SELECT ProductID
FROM [Sales].[SalesOrderDetail]
GROUP BY ProductID
HAVING MAX(OrderQty) = 1 AND MIN(OrderQty) = 1