WITH T (CustomerID, ProductID, SalesCount)
AS
(
SELECT soh.CustomerID, sod.ProductID, COUNT(*)
  FROM [Sales].[SalesOrderDetail] AS sod 
       JOIN 
       [Sales].[SalesOrderHeader] AS soh 
       ON soh.SalesOrderID = soh.SalesOrderID
 GROUP BY CustomerID, ProductID
)

SELECT CustomerID
  FROM T
 GROUP BY CustomerID
HAVING MIN(SalesCount) > 1