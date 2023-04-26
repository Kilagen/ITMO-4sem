SELECT psc.Name, MAX(p.ListPrice) AS MaxPrice
FROM Production.Product p
RIGHT JOIN Production.ProductSubcategory psc
ON p.ProductSubcategoryID = psc.ProductSubcategoryID
WHERE p.Color = 'Red'
GROUP BY psc.Name, psc.ProductSubcategoryID, p.Color