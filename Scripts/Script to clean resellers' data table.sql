-- Cleansed DIM_Reseller Table --
SELECT 
  r.ResellerKey, 
  r.ResellerName, 
  r.BusinessType,
  r.OrderFrequency AS [Frequency],
  r.AnnualSales AS [Yearly Sales],
  r.AnnualRevenue AS [Yearly Revenue],
  g.CountryRegionCode AS [Region] -- join in country region from the geography table
FROM 
  dbo.DimReseller as r
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = r.geographykey 
ORDER BY 
  ResellerKey ASC -- Ordered List by ResellerKey
