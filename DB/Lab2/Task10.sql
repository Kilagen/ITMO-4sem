SELECT ProductSubcategoryID
FROM [Production].[Product]
GROUP BY ProductSubcategoryID
HAVING COUNT(ProductID) > 10