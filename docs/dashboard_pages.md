# Dashboard Pages Reference
# File: dashboard_pages.md
# All 9 Power BI report pages — visuals, fields, and measures

---

## Page 1: Executive Dashboard (Overview)

| Visual | Type | Fields |
|--------|------|--------|
| KPI Cards (x7) | Card | Revenue, Orders, Customers, AOV, On-time %, Avg Rating, YoY % |
| Revenue Trend | Line Chart | Axis: DimDate[Year-Month] · Values: Revenue · Tooltip: Orders, AOV, YoY % |
| Orders by Month | Clustered Column | Axis: DimDate[Year-Month] · Values: Orders |
| Top 10 Categories | Bar Chart | Axis: category · Values: Revenue · Top N filter: 10 · Tooltip: Orders, AOV, Avg Rating |
| Revenue by State | Filled Map | Location: customer_state · Size: Revenue · Tooltip: Orders, AOV |
| Order Status Share | Donut | Legend: order_status · Values: Orders |

---

## Page 2: Sales Trends

| Visual | Type | Fields |
|--------|------|--------|
| Revenue vs Last Year | Line Chart | Axis: DimDate[Year-Month] · Values: Revenue, Revenue LY |
| Rolling 30D Revenue | KPI Card | Value: Rolling 30D Revenue |
| Revenue YTD | Area Chart | Axis: DimDate[Date] · Values: Revenue YTD |
| Category × Year Matrix | Matrix | Rows: category · Columns: DimDate[Year] · Values: Revenue, Orders, AOV |

---

## Page 3: Category & Product

| Visual | Type | Fields |
|--------|------|--------|
| Category Revenue Share | Treemap | Group: category · Values: Revenue |
| AOV vs Orders Scatter | Scatter | X: Orders · Y: AOV · Details: category · Size: Revenue · Tooltip: Avg Rating, On-time % |
| Top Categories by Rating | Bar Chart | Axis: category · Values: Avg Rating · Tooltip: Orders, Revenue |
| Top 20 Categories Table | Table | category, Revenue, Orders, AOV, Avg Rating, On-time % |

---

## Page 4: Customer Geographic

| Visual | Type | Fields |
|--------|------|--------|
| Revenue by State | Filled Map | Location: customer_state · Size: Revenue |
| Top 10 States | Bar Chart | Axis: customer_state · Values: Revenue · Top N: 10 |
| Top 10 Cities | Bar Chart | Axis: customer_city · Values: Orders · Top N: 10 |
| State × Category Matrix | Matrix | Rows: customer_state · Columns: category · Values: Revenue, Orders |

---

## Page 5: Delivery & Logistics

| Visual | Type | Fields |
|--------|------|--------|
| KPI Cards | Card | On-time %, Late Orders |
| Late Orders by Month | Column Chart | Axis: DimDate[Year-Month] · Values: Late Orders |
| Late % by State | Bar Chart | Axis: customer_state · Values: Late % |
| Avg Delivery Days by Category | Bar Chart | Axis: category · Values: Avg Delivery Days |

---

## Page 6: Reviews

| Visual | Type | Fields |
|--------|------|--------|
| KPI Cards | Card | Avg Rating, Positive Reviews %, Negative Reviews % |
| Rating Distribution | Donut | Legend: Review Bucket (Calculated Column) · Values: Orders |
| Avg Rating by Category | Bar Chart | Axis: category · Values: Avg Rating |
| Avg Rating Late vs On-Time | Bar Chart | Axis: is_late · Values: Avg Rating |

---

## Page 7: Payments

| Visual | Type | Fields |
|--------|------|--------|
| Payment Type Share | Donut | Legend: payment_type · Values: Payment Value |
| Avg Installments by Type | Column Chart | Axis: payment_type · Values: Avg Installments |
| Payment Value Trend | Line Chart | Axis: DimDate[Year-Month] · Values: Payment Value · Legend: payment_type |
| Payment Summary Table | Table | payment_type, Payment Value, Orders, AOV |

---

## Page 8: Sellers

| Visual | Type | Fields |
|--------|------|--------|
| KPI Cards | Card | Sellers, Revenue per Seller |
| Top 10 Sellers by Revenue | Bar Chart | Axis: seller_id · Values: Revenue · Top N: 10 |
| Revenue by Seller State | Filled Map | Location: seller_state · Size: Revenue |
| Seller State × Category | Matrix | Rows: seller_state · Columns: category · Values: Revenue, Orders |

---

## Page 9: Drillthrough

**Setup:** New page → Drillthrough fields: category

| Visual | Type | Fields |
|--------|------|--------|
| Dynamic Title | Text Box | Use Drill Title measure |
| KPI Cards | Card | Revenue, Orders, AOV, Avg Rating, On-time % |
| Revenue Trend | Line Chart | Axis: DimDate[Year-Month] · Values: Revenue |
| Top 10 States Table | Table | customer_state, Revenue, Orders, AOV, Avg Rating, On-time % |

**How to use:** Right-click any category in other pages → Drillthrough → this page
