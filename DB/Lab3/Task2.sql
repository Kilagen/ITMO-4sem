SELECT Name
FROM [Production].[ProductSubcategory]
GROUP BY Name
HAVING COUNT(*) > 1
