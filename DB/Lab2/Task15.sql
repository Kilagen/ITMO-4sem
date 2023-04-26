SELECT Color
FROM [Production].[Product]
GROUP BY Color
ORDER BY COUNT(ProductID) DESC