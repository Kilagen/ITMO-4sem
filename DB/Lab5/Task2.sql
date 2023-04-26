WITH T1 (ProductID, CustomerID, OrdersCount)
AS
(
SELECT sod.ProductID, soh.CustomerID, COUNT(*)
  FROM Sales.SalesOrderDetail AS sod
       JOIN
	   Sales.SalesOrderHeader AS soh
	   ON sod.SalesOrderID = soh.SalesOrderID
 GROUP BY sod.ProductID, soh.CustomerID
),
T2 (CustomerID, OrdersCount)
AS
(
SELECT CustomerID, SUM(OrdersCount)
  FROM T1
 GROUP BY CustomerID
)

SELECT T1.CustomerID, T1.ProductID, (1.0 * T1.OrdersCount / T2.OrdersCount) AS SalesFraction
  FROM T1 JOIN T2
	ON T1.CustomerID = T2.CustomerID