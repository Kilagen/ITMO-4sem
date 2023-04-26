WITH T (CustomerID, SalesOrderID, SalesCount)
AS
(
SELECT soh.CustomerID, soh.SalesOrderID, COUNT(*)
  FROM [Sales].[SalesOrderDetail] AS sod 
       JOIN 
       [Sales].[SalesOrderHeader] AS soh 
       ON soh.SalesOrderID = soh.SalesOrderID
 GROUP BY CustomerID, soh.SalesOrderID
)

SELECT CustomerID
  FROM T
 GROUP BY CustomerID
HAVING COUNT(SalesCount) = COUNT(DISTINCT SalesCount)