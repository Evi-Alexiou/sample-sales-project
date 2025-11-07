WITH CountryRevenue AS (
    SELECT 
        "Country",
        ROUND(SUM("Revenue")::numeric,2) AS Total_revenue
    FROM sample_sales
    GROUP BY "Country"
)
SELECT 
    "Country",
    Total_revenue,
    ROUND((Total_revenue * 100.0)::numeric / SUM(Total_revenue) OVER()::numeric, 2) AS Revenue_percent
FROM CountryRevenue
ORDER BY Total_revenue DESC
LIMIT 5;
