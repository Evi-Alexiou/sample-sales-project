WITH OrdersRanked AS (
    SELECT
        "Customername",
        "Ordernumber",
        "Revenue",
        ROW_NUMBER() OVER(PARTITION BY "Customername" ORDER BY "Revenue" DESC) AS Order_rank
    FROM sample_sales
)
SELECT *
FROM OrdersRanked
WHERE Order_rank <= 5
ORDER BY "Customername", Order_rank
LIMIT 5;
