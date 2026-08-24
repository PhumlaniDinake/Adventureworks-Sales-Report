SELECT 
    c.CompanyName,
    a.City,
    a.StateProvince,
    a.CountryRegion,
    SUM(soh.TotalDue) AS TotalRevenue,
    COUNT(DISTINCT soh.SalesOrderID) AS OrderCount
FROM SalesLT.SalesOrderHeader soh
JOIN SalesLT.Customer c ON soh.CustomerID = c.CustomerID
JOIN SalesLT.CustomerAddress ca ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address a ON ca.AddressID = a.AddressID
GROUP BY c.CompanyName, a.City, a.StateProvince, a.CountryRegion
ORDER BY TotalRevenue DESC;