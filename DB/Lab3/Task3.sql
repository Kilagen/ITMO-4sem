SELECT pc.Name, COUNT(p.ProductID) AS ProductCount
FROM Production.Product p
LEFT JOIN Production.ProductSubcategory psc
ON p.ProductSubcategoryID = psc.ProductSubcategoryID
LEFT JOIN Production.ProductCategory pc
ON pc.ProductCategoryID = psc.ProductCategoryID
GROUP BY pc.Name