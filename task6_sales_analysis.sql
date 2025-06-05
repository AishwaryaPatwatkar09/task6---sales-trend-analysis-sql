
-- Create table
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- Insert data
INSERT INTO online_sales VALUES
(1, '2024-01-15', 250.00, 101),
(2, '2024-01-20', 400.00, 102),
(3, '2024-02-10', 300.00, 103),
(4, '2024-02-11', 100.00, 104),
(5, '2024-03-05', 500.00, 105),
(6, '2024-03-10', 150.00, 106),
(7, '2024-03-15', 250.00, 107);

-- Query for monthly revenue and order volume
SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS monthly_order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
