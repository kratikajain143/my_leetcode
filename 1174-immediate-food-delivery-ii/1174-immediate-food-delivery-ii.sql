# Write your MySQL query statement below
SELECT ROUND(
    100 * SUM(d1.order_date = d1.customer_pref_delivery_date) / COUNT(*),
    2
) AS immediate_percentage
FROM Delivery d1
LEFT JOIN Delivery d2
    ON d1.customer_id = d2.customer_id
    AND d2.order_date < d1.order_date
WHERE d2.customer_id IS NULL;