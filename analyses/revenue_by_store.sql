SELECT
    o.storeid,
    SUM(oi.TotalPrice) AS total_revenue
FROM {{ ref('orders') }} o
JOIN {{ ref('orders_items') }} oi
    ON o.orderid = oi.orderid
GROUP BY o.storeid
ORDER BY total_revenue DESC