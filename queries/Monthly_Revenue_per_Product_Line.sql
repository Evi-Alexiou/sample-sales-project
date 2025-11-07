WITH MonthlyRevenue AS (
    SELECT 
        "Productline",
        "Year_id",
        "Month_id",
        ROUND(SUM("Revenue")::numeric,2) AS Monthly_revenue
    FROM sample_sales
    GROUP BY "Productline", "Year_id", "Month_id"
)
SELECT *
FROM MonthlyRevenue
ORDER BY "Productline", "Year_id", "Month_id"
LIMIT 12;
