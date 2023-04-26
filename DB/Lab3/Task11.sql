SELECT
	PrC.Name,
	COUNT(PrSubc.ProductSubcategoryID) AS SubcatogoryCount,
	COUNT(Pr.ProductID) AS ProductCount
FROM [Production].[Product] Pr
RIGHT JOIN [Production].[ProductSubcategory] PrSubc
ON Pr.ProductSubcategoryID = PrSubc.ProductSubcategoryID
RIGHT JOIN [Production].[ProductCategory] PrC
ON PrSubc.ProductCategoryID = PrC.ProductCategoryID
GROUP BY PrC.ProductCategoryID, PrC.Name