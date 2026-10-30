CREATE DATABASE Warehouse_db;
USE Warehouse_db;

CREATE TABLE Daily_kpis(
Order_date date,
warehouse_id VARCHAR(50),
orders_received INT,
orders_fulfilled INT,
units_picked INT,
units_packed INT,
orders_shipped INT,
orders_delayed INT,
orders_returned INT,
avg_pick_time_min DECIMAL,
avg_pack_time_min DECIMAL,
order_accuracy_pct DECIMAL,
on_time_delivery_pct DECIMAL,
warehouse_utilization_pct DECIMAL,
labor_cost_inr INT,
shipping_cost_inr INT,
total_operating_cost_inr INT,
customer_satisfaction_score INT
);

CREATE TABLE Employee(
employee_id varchar(50),
warehouse_id VARCHAR(50),
employee_name varchar(50),
shift varchar(50),
work_date DATE,
hours_worked DECIMAL,
orders_handled INT,
units_handled INT,
productivity_units_per_hour INT,
attendance_status varchar(50)
);

CREATE TABLE Inventory(
inventory_id varchar(50),
warehouse_id varchar(50),
product_id varchar(50),
zone VARCHAR(50),
opening_stock INT,
received_qty INT,
picked_qty INT,
damaged_qty INT,
reserved_qty INT,
closing_stock INT,
stock_value_inr INT,
stock_status varchar(50)
);

CREATE TABLE Orders(
order_id varchar(50),
order_date datetime,
customer_id varchar(50),
product_id varchar(50),
warehouse_id varchar(50),
quantity INT,
order_status varchar(50),
priority varchar(50),
payment_method varchar(50),
sales_amount_inr INT,
shipping_fee_inr INT,
promised_delivery_date DATE
);

CREATE TABLE Picking_Operation(
pick_operation_id varchar(50),
order_id varchar(50),
warehouse_id  varchar(50),
employee_id varchar(50),
zone varchar(50),
pick_start_time datetime,
items_picked INT,
pick_time_minutes decimal,
travel_distance_m decimal,
pick_accuracy_pct decimal,
pick_status varchar(50)
);

CREATE TABLE Product(
product_id varchar(50),
product_name varchar(50),
category varchar(50),
brand varchar(50),
unit_cost_inr int,
selling_price_inr int,
weight_kg decimal,
supplier_id varchar(50),
reorder_level int,
product_status varchar(50)
);

CREATE TABLE Returns_goods(
return_id varchar(50),
order_id varchar(50),
product_id varchar(50),
warehouse_id varchar(50),
return_date date,
return_reason varchar(50),
return_qty int,
refund_amount_inr int,
inspection_status varchar(50),
restockable varchar(50)
);


CREATE TABLE Shipping(
shipment_id varchar(50),
order_id varchar(50),
warehouse_id varchar(50),
carrier varchar(50),
shipment_date datetime,
shipping_mode varchar(50),
destination_city varchar(50),
distance_km decimal,
delivery_time_hours decimal,
shipping_cost_inr int,
delivery_status varchar(50),
delay_hours decimal
);

CREATE TABLE Warehouse(
record_id varchar(50),
warehouse_id varchar(50),
record_date date,
zone varchar(50),
shift varchar(50),
orders_received INT,
orders_processed INT,
dock_utilization_pct decimal,
storage_utilization_pct decimal,
equipment_uptime_pct decimal,
temperature_c decimal,
operational_status varchar(50)
);

CREATE TABLE Warehouse_Master(
warehouse_id varchar(50),
warehouse_city varchar(50),
state varchar(50),
region varchar(50),
warehouse_size varchar(50)
);