SELECT Name, Color, Size
FROM [Production].[Product]
WHERE ListPrice < 100 AND Color = 'Black'
ORDER BY ListPrice ASC