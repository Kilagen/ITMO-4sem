SELECT Pr.Name
FROM [Purchasing].[ProductVendor] PrVend
LEFT JOIN [Production].[Product] Pr
ON PrVend.ProductID = Pr.ProductID
GROUP BY Pr.ProductID, Pr.Name
HAVING COUNT(PrVend.BusinessEntityID) > 1