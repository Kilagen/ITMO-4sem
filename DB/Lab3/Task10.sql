SELECT TOP 3 PRCat.Name
FROM [Sales].[SalesOrderDetail] SOD
LEFT JOIN [Production].[Product] PR
ON SOD.ProductID = PR.ProductID
LEFT JOIN [Production].[ProductSubcategory] PRSubcat
ON PR.ProductSubcategoryID = PRSubcat.ProductSubcategoryID
LEFT JOIN [Production].[ProductCategory] PRCat
ON PRSubcat.ProductCategoryID = PRCat.ProductCategoryID
GROUP BY PRCat.ProductCategoryID, PRCat.Name
ORDER BY 
	1.0*SUM(SOD.OrderQty)/
	DATEDIFF(
		D,
		MIN(PR.SellStartDate),
		ISNULL(MAX(PR.SellEndDate), GETDATE())
		) DESC