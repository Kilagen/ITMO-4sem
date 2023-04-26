SELECT pp.Name as Name, pc.Name AS ProductCategiry
FROM [Production].[Product] AS pp
LEFT JOIN [Production].[ProductSubcategory] as psc
ON pp.ProductSubcategoryID = psc.ProductSubcategoryID
LEFT JOIN [Production].[ProductCategory] as pc
ON psc.ProductCategoryID = pc.ProductCategoryID
WHERE pp.Color = 'Red' AND pp.ListPrice < 100