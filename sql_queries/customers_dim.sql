select * from dbo.customers
select * from dbo.geography
------------------------------------

-- SQL statement to join dim_customers with dim_geography to enrich customer data with geographic information

SELECT
    c.CustomerID,
    c.CustomerName,
    c.Email,
    c.Gender,
    c.Age,
    g.Country,
    g.City,
    g.GeographyId
FROM dbo.customers AS c
LEFT JOIN dbo.geography AS g
    ON c.GeographyID = g.GeographyID -- Joins the two tables on the GeographyID field to match customers with their geographic information
    
