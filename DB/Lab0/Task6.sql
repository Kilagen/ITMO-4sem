SELECT Name, Color
FROM [Production].[Product]
WHERE Color IS NOT NULL AND Size IS NOT NULL
ORDER BY ListPrice DESC