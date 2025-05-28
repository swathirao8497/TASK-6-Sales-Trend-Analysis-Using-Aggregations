create database data_for_practice;
use data_for_practice;
show tables;
select * from online_sales_data;
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(total_revenue) AS Total_revenue,
    COUNT(DISTINCT Transaction_ID) AS order_volume
FROM
    online_sales_data
WHERE
    order_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    year,
    month
limit 2;

