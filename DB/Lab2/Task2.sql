SELECT Color
FROM [Production].[Product]
GROUP BY Color
HAVING MIN(ListPrice) > 100