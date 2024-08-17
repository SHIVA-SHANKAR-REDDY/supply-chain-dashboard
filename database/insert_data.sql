-- Sample data for Inventory
INSERT INTO Inventory (item_id, item_name, stock_level, reorder_point, safety_stock)
VALUES
(1, 'Widget A', 500, 100, 50),
(2, 'Widget B', 300, 75, 30),
(3, 'Widget C', 400, 150, 80);

-- Sample data for Orders
INSERT INTO Orders (order_id, customer_id, item_id, order_date, delivery_date, status, quantity)
VALUES
(1, 101, 1, '2024-07-01', '2024-07-05', 'Delivered', 200),
(2, 102, 2, '2024-07-02', '2024-07-07', 'Delivered', 150),
(3, 103, 3, '2024-07-03', '2024-07-08', 'Pending', 100);

-- Sample data for Suppliers
INSERT INTO Suppliers (supplier_id, supplier_name, delivery_lead_time, reliability)
VALUES
(1, 'Supplier A', 5, 95.5),
(2, 'Supplier B', 7, 90.0),
(3, 'Supplier C', 3, 98.0);

-- Sample data for Shipments
INSERT INTO Shipments (shipment_id, order_id, transport_cost, shipping_date, arrival_date)
VALUES
(1, 1, 120.50, '2024-07-02', '2024-07-05'),
(2, 2, 90.75, '2024-07-04', '2024-07-07'),
(3, 3, 110.00, '2024-07-05', NULL);

-- Sample data for Forecasts
INSERT INTO Forecasts (forecast_id, item_id, forecasted_demand, actual_demand, forecast_date)
VALUES
(1, 1, 500, 480, '2024-07-01'),
(2, 2, 300, 310, '2024-07-01'),
(3, 3, 450, 430, '2024-07-01');
