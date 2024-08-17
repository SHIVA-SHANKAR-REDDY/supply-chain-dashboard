CREATE TABLE Inventory (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    stock_level INT,
    reorder_point INT,
    safety_stock INT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    item_id INT,
    order_date DATE,
    delivery_date DATE,
    status VARCHAR(50),
    quantity INT
);

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    delivery_lead_time INT,
    reliability DECIMAL(5, 2)
);

CREATE TABLE Shipments (
    shipment_id INT PRIMARY KEY,
    order_id INT,
    transport_cost DECIMAL(10, 2),
    shipping_date DATE,
    arrival_date DATE
);

CREATE TABLE Forecasts (
    forecast_id INT PRIMARY KEY,
    item_id INT,
    forecasted_demand INT,
    actual_demand INT,
    forecast_date DATE
);
