WITH CustomerTotal AS (
    SELECT 
        "Customername",
        ROUND(SUM("Revenue")::numeric,2) AS Total_revenue
    FROM sample_sales
    GROUP BY "Customername"
),
RevenueStats AS (
    SELECT AVG(Total_revenue) AS Avg_revenue FROM CustomerTotal
)
SELECT 
    c."Customername",
    c.Total_revenue,
    RANK() OVER(ORDER BY c.Total_revenue DESC) AS Revenue_rank
FROM CustomerTotal c
CROSS JOIN RevenueStats r
WHERE c.Total_revenue > r.Avg_revenue
ORDER BY c.Total_revenue DESC
LIMIT 5;
