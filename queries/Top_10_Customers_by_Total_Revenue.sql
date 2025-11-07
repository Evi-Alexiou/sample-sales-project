WITH CustomerRevenue AS (
    SELECT 
        "Customername",
        ROUND(SUM("Revenue")::numeric,2) AS Total_revenue
    FROM sample_sales
    GROUP BY "Customername"
)
SELECT 
    "Customername",
    Total_revenue,
    RANK() OVER(ORDER BY Total_revenue DESC) AS Revenue_rank
FROM CustomerRevenue
ORDER BY Total_revenue DESC
LIMIT 10;
