-- Query to calculate total orders, average shipping cost, and demand forecast accuracy
SELECT
    i.item_name,
    SUM(o.quantity) AS total_orders,
    AVG(s.transport_cost) AS avg_shipping_cost,
    f.forecasted_demand,
    f.actual_demand,
    (f.actual_demand - f.forecasted_demand) / f.forecasted_demand * 100 AS forecast_accuracy
FROM
    Inventory i
JOIN
    Orders o ON i.item_id = o.item_id
JOIN
    Shipments s ON o.order_id = s.order_id
JOIN
    Forecasts f ON i.item_id = f.item_id
WHERE
    o.status = 'Delivered'
GROUP BY
    i.item_name, f.forecasted_demand, f.actual_demand;
