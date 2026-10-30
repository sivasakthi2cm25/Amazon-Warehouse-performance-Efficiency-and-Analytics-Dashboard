# Amazon-Warehouse-performance-Efficiency-and-Analytics-Dashboard

## 1. Industrial Project Title
**Amazon Warehouse Operations Performance & Efficiency Analytics Dashboard**

## 2. Project Overview
This industrial analytics project develops an end-to-end SQL + Power BI Business Intelligence solution for analyzing warehouse performance across the complete operational lifecycle:

**Orders → Inventory → Picking → Employees → Shipping → Delivery → Returns → Cost**

The project helps management identify warehouse bottlenecks, delayed orders, inventory problems, employee productivity, picking efficiency, shipping performance, operating costs, customer satisfaction, and warehouse utilization. The dashboard is structured into six Power BI pages for executive and operational analysis.

## 3. Project Objectives
- Analyze orders received, processed, fulfilled, and shipped.
- Measure fulfillment, cancellation, accuracy, and delivery performance.
- Compare warehouse performance and utilization.
- Identify delayed and priority orders.
- Analyze picking time, accuracy, travel distance, and exceptions.
- Measure employee productivity by employee, role, and shift.
- Identify low-stock and out-of-stock products.
- Analyze inventory value, reserved units, and damaged quantities.
- Evaluate carrier and shipping-mode performance.
- Analyze delivery delays and shipping costs.
- Measure return rate, refund value, and restockable returns.
- Calculate operating cost and cost per order.
- Provide interactive management reporting and decision support.

## 4. Tools & Technologies
- **SQL** — data analysis, aggregation, filtering, joins, and KPI calculations
- **Microsoft Power BI** — interactive dashboard and reporting
- **Power Query** — data cleaning and transformation
- **DAX** — calculated measures and business KPIs
- **Data Modeling** — dimension/fact model
- **Data Visualization** — KPI cards, charts, matrices, maps, treemaps, and scatter plots
- **GitHub / Markdown** — project repository and documentation

## 5. Dataset Description

The project contains operational datasets covering warehouse activities.

| Table | Description |
|---|---|
| `Orders` | Orders, quantities, sales, shipping fees, and order status |
| `Inventory` | Closing stock, stock value, damaged quantity, reserved quantity, and stock status |
| `Employees` | Employee information, hours worked, units handled, and productivity |
| `Picking_Operations` | Picking operations, items picked, pick time, accuracy, travel distance, and exceptions |
| `Shipping` | Shipments, delivery status, delivery time, shipping cost, and delay hours |
| `Returns` | Returns, return quantity, refund amount, reason, and restockable status |
| `Daily_KPIs` | Daily warehouse KPIs including orders, accuracy, delivery, utilization, labor cost, and operating cost |
| `Warehouse` | Warehouse operational information including orders processed |
| `Warehouse_Master` | Warehouse master/dimension information |
| `Products` | Product and category information |
| `Dim_Date` | Date dimension for time-based analysis |

## 6. SQL Analysis

SQL is used as the analytical layer for extracting and validating warehouse performance information.

### Order Analysis
- Total orders
- Total order quantity
- Total sales
- Shipping fees
- Fulfilled orders
- Delayed orders
- Cancelled orders
- Fulfillment rate
- Cancellation rate

Example:
```sql
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_order_quantity,
    SUM(sales_amount_inr) AS total_sales,
    SUM(shipping_fee_inr) AS total_shipping_fees
FROM Orders;
```

### Warehouse Analysis
- Orders processed
- Fulfillment percentage
- Order accuracy
- On-time delivery
- Warehouse utilization
- Operating cost

### Inventory Analysis
- Closing stock
- Stock value
- Low-stock products
- Out-of-stock products
- Damaged units
- Reserved units
- Inventory value by category and warehouse

### Employee Analysis
- Total employees
- Hours worked
- Units handled
- Average productivity
- Productivity by role and shift
- Labor cost by warehouse

### Picking Analysis
- Pick operations
- Items picked
- Average pick time
- Pick accuracy
- Travel distance
- Exception operations
- Exception rate

### Shipping Analysis
- Total shipments
- Delivered shipments
- Delayed shipments
- Delivery delay rate
- Average delivery time
- Shipping cost
- Delay hours

### Returns Analysis
- Total returns
- Return quantity
- Refund amount
- Restockable returns
- Restockable return percentage
- Return rate
- Return reasons and warehouse performance

## 7. Power BI Dashboard

### Page 1 — Executive Overview
**KPIs:** Total Orders, Total Sales, Fulfillment Rate, On-Time Delivery %, Order Accuracy %, Return Rate, Operating Cost, Customer Satisfaction.

**Visuals:** Monthly order trend, orders by warehouse, sales by warehouse, order status distribution, and warehouse performance ranking.

**Management Question:** How is the Amazon warehouse network performing overall?

### Page 2 — Warehouse Performance
**KPIs:** Orders Received, Orders Processed, Orders Fulfilled, Warehouse Utilization %, Storage Utilization %, Dock Utilization %, Equipment Uptime %, Operating Cost.

**Visuals:** Warehouse vs Orders Processed, Warehouse vs Utilization %, warehouse performance matrix, and warehouse location map.

### Page 3 — Order & Fulfillment Analysis
**KPIs:** Total Orders, Fulfilled Orders, Shipped Orders, Delayed Orders, Cancelled Orders, Fulfillment Rate.

**Visuals:** Orders Received vs Fulfilled over time, order status donut, order status by warehouse, delayed orders by priority, and warehouse × order status matrix.

### Page 4 — Inventory & Product Analytics
**KPIs:** Total Stock, Stock Value, Low Stock Products, Out-of-Stock Products, Damaged Units, Reserved Units.

**Visuals:** Stock Status, Stock Value by Category, Low Stock Products by Warehouse, Inventory Value by Product Category, and product inventory table.

### Page 5 — Picking & Employee Productivity
**KPIs:** Total Units Picked, Average Pick Time, Average Pick Accuracy, Total Travel Distance, Exception Operations, Productivity per Hour.

**Visuals:** Average Pick Time by Warehouse, Productivity by Employee Role, Productivity by Shift, Travel Distance vs Pick Time, and employee productivity table.

### Page 6 — Shipping, Returns & Customer Experience
**Shipping KPIs:** Total Shipments, Delivered Shipments, Delayed Shipments, Average Delivery Time, Average Shipping Cost, Delay Hours.

**Shipping visuals:** Delivery Status, Carrier Performance, Shipping Mode Performance, Delay by Destination City, Shipping Cost by Carrier.

**Returns KPIs:** Total Returns, Return Rate, Refund Amount, Restockable Returns.

**Returns visuals:** Returns by Reason, Returns by Warehouse, Refund Amount by Reason, Restockable vs Non-Restockable.

## 8. Key KPIs

| KPI | Business Purpose |
|---|---|
| Total Orders | Overall workload |
| Fulfillment Rate | Warehouse efficiency |
| On-Time Delivery % | Customer service |
| Order Accuracy % | Operational quality |
| Warehouse Utilization % | Capacity management |
| Average Pick Time | Picking efficiency |
| Employee Productivity | Workforce efficiency |
| Stock-out Rate | Inventory health |
| Shipping Cost / Order | Cost optimization |
| Return Rate | Customer/product quality |

Additional KPIs include Total Sales, Operating Cost, Cost per Order, Total Stock Value, Average Pick Accuracy, Exception Rate, Average Delivery Time, Average Shipping Cost, Refund Amount, Customer Satisfaction, Labor Cost, and Orders per Labor Hour.

## 9. Key Insights

The dashboard is designed to identify:

### Warehouse
- Best and worst-performing warehouses
- High-utilization and underperforming locations
- High operating-cost warehouses
- Warehouses with lower accuracy or on-time delivery

### Orders
- Order-volume trends
- Fulfillment bottlenecks
- Delayed and cancelled orders
- Priority-order delays

### Inventory
- Products requiring replenishment
- Low-stock and out-of-stock products
- High-value inventory locations
- Damaged inventory

### Picking & Employees
- Warehouses with high picking time
- Productivity by role and shift
- Relationship between travel distance and pick time
- Picking exceptions and accuracy
- High labor-cost warehouses

### Shipping & Returns
- Carrier delay performance
- Best shipping mode
- Destinations with frequent delays
- Shipping-cost patterns
- Major return reasons
- High-return warehouses
- Refund and restockable-return patterns

**Note:** The source project specification defines the analytical questions and KPIs but does not provide final numerical findings. Actual numerical insights should be added after the dataset is analyzed.

## 10. Project Workflow

```text
Raw Warehouse Data
        ↓
Data Collection
        ↓
Data Cleaning & Transformation
        ↓
SQL Analysis
        ↓
Data Validation
        ↓
Power BI Data Model
        ↓
DAX Measures & KPIs
        ↓
Dashboard Development
        ↓
Interactive Analysis
        ↓
Business Insights
        ↓
Management Decision Support
```

## 11. Repository Structure

```text
Amazon-Warehouse-Analytics/
│
├── README.md
├── data/
│   ├── Orders.csv
│   ├── Inventory.csv
│   ├── Employees.csv
│   ├── Picking_Operations.csv
│   ├── Shipping.csv
│   ├── Returns.csv
│   ├── Daily_KPIs.csv
│   ├── Warehouse.csv
│   ├── Warehouse_Master.csv
│   ├── Products.csv
│   └── Dim_Date.csv
│
├── sql/
│   ├── 01_order_analysis.sql
│   ├── 02_warehouse_analysis.sql
│   ├── 03_inventory_analysis.sql
│   ├── 04_employee_analysis.sql
│   ├── 05_picking_analysis.sql
│   ├── 06_shipping_analysis.sql
│   └── 07_returns_analysis.sql
│
├── powerbi/
│   └── Amazon_Warehouse_Analytics.pbix
│
├── screenshots/
│   ├── executive_overview.png
│   ├── warehouse_performance.png
│   ├── order_fulfillment.png
│   ├── inventory_product.png
│   ├── picking_employee.png
│   └── shipping_returns.png
│
└── documentation/
    └── project_report.pdf
```

## 12. Dashboard Screenshots

Add your actual Power BI screenshots to the `screenshots/` folder.

Recommended screenshots:
1. Executive Overview
2. Warehouse Performance
3. Order & Fulfillment Analysis
4. Inventory & Product Analytics
5. Picking & Employee Productivity
6. Shipping, Returns & Customer Experience

Example Markdown:

```markdown
![Executive Overview](screenshots/executive_overview.png)
![Warehouse Performance](screenshots/warehouse_performance.png)
![Order & Fulfillment Analysis](screenshots/order_fulfillment.png)
![Inventory & Product Analytics](screenshots/inventory_product.png)
![Picking & Employee Productivity](screenshots/picking_employee.png)
![Shipping, Returns & Customer Experience](screenshots/shipping_returns.png)
```

## 13. How to Run the Project

### Step 1 — Clone the Repository
```bash
git clone <your-github-repository-url>
cd Amazon-Warehouse-Analytics
```

### Step 2 — Prepare the Dataset
Place the required CSV/data files inside the `data/` folder.

### Step 3 — Run SQL Analysis
Open the SQL scripts in your preferred SQL environment and execute the analysis scripts.

### Step 4 — Open Power BI
Open:
```text
powerbi/Amazon_Warehouse_Analytics.pbix
```

### Step 5 — Refresh Data
- Verify the data-source paths.
- Refresh the dataset.
- Verify table relationships.
- Check DAX measures.
- Validate KPI values.

### Step 6 — Explore the Dashboard
Use slicers such as Date, Warehouse, City, Region, Warehouse Size, Order Status, Priority, Product Category, Product Brand, Shift, Employee Role, Carrier, Shipping Mode, Delivery Status, and Stock Status.

## 14. Data Model

### Dimension Tables
```text
Dim_Date
Warehouse_Master
Products
```

### Fact Tables
```text
Orders
Inventory
Employees
Picking_Operations
Shipping
Returns
Daily_KPIs
Warehouse
```

Common dimensions such as Date, Warehouse, and Product should be used wherever appropriate instead of directly connecting every fact table to every other fact table.

## 15. Project Deliverables

- Cleaned warehouse datasets
- SQL analysis scripts
- Power BI data model
- DAX KPI measures
- Six-page interactive Power BI dashboard
- Dashboard screenshots
- Business insights
- Project documentation
- GitHub repository

## 16. Conclusion

The **Amazon Warehouse Operations Performance & Efficiency Analytics Dashboard** provides an integrated view of warehouse operations from order receipt through returns.

The project combines order fulfillment, warehouse utilization, inventory health, picking efficiency, employee productivity, shipping performance, delivery delays, returns, operating costs, and customer satisfaction into a centralized Business Intelligence solution.

The strongest project story is:

**Orders → Inventory → Picking → Employees → Shipping → Delivery → Returns → Cost**

This end-to-end approach transforms operational data into actionable business intelligence for management decision-making.

## 17. Author

**Author:** Sivasakthi R |AF05266746|
Data and Business Analyst With AI -(Anudip Foundation,Pallavaram,Chennai)

**Project:** Amazon Warehouse Operations Performance & Efficiency Analytics Dashboard

**Tools:** SQL | Power BI | Power Query | DAX | Data Visualization

**GitHub:** `<Add your GitHub repository link>`

**LinkedIn:** `<Add your LinkedIn profile link>`

## 18. Project Status

**Status:** Completed 

Update the status according to the current stage of 
