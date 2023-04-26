SELECT ProductSubcategoryID, COUNT(*) AS Count
FROM [Production].[Product]
GROUP BY ProductSubcategoryID