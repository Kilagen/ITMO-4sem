SELECT V.CreditRating, COUNT(PV.ProductID) AS ProductCount FROM
[Purchasing].[Vendor] V
JOIN
[Purchasing].[ProductVendor] PV
ON V.BusinessEntityID = PV.BusinessEntityID
GROUP By V.CreditRating