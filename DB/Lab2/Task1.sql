SELECT Color, COUNT(*) AS Count
FROM [Production].[Product]
WHERE ListPrice >= 30
GROUP BY Color