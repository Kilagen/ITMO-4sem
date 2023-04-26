SELECT TOP 3 psc.Name
FROM Production.Product p
--LEFT or INNER depends on taking NULL or not
LEFT JOIN Production.ProductSubcategory psc
ON p.ProductSubcategoryID = psc.ProductSubcategoryID
GROUP BY psc.Name, psc.ProductSubcategoryID
ORDER BY COUNT(p.ProductID) DESC