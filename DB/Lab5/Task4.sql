WITH T (CustomerID, OrderCost)
AS
(
SELECT soh.CustomerID, SUM(sod.OrderQty * sod.UnitPrice)
  FROM Sales.SalesOrderDetail AS sod
       JOIN
	   Sales.SalesOrderHeader AS soh
	   ON sod.SalesOrderID = soh.SalesOrderID
 GROUP BY soh.CustomerID, sod.SalesOrderID
)

SELECT CustomerID, Max(OrderCost) AS MaxCost, MIN(OrderCost) AS MinCost
  FROM T
 GROUP BY CustomerID