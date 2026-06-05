CREATE TABLE online_sales (
    order_id INTEGER,
    order_date DATE,
    amount REAL,
    product_id INTEGER
);

INSERT INTO online_sales VALUES
(1,'2024-01-10',1200,101),
(2,'2024-01-15',1500,102),
(3,'2024-02-05',900,103),
(4,'2024-02-20',1800,104),
(5,'2024-03-10',2500,105),
(6,'2024-03-15',1700,106),
(7,'2024-04-02',2200,107),
(8,'2024-04-25',1900,108);

SELECT
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS revenue
FROM online_sales
GROUP BY year, month
ORDER BY revenue DESC
LIMIT 3;
