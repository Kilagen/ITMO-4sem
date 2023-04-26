SELECT sod.ProductID, COUNT(*) AS OrdersCount, COUNT(DISTINCT soh.CustomerID) AS CustomerCount
  FROM Sales.SalesOrderDetail AS sod
       JOIN
	   Sales.SalesOrderHeader AS soh
	   ON sod.SalesOrderID = soh.SalesOrderID
 GROUP BY sod.ProductID	
-- Я не знаю, как и зачем тут использовать ОТВ :/