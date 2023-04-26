SELECT psc.Name, COUNT(p.ProductID) AS ProductCount
FROM Production.Product p
LEFT JOIN Production.ProductSubcategory psc
ON p.ProductSubcategoryID = psc.ProductSubcategoryID
GROUP BY psc.Name, psc.ProductSubcategoryID