<div align="center">

# 🛒 Olist E-Commerce Analytics Dashboard

### Industry-Level End-to-End Data Analytics Project

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18-336791?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Power BI](https://img.shields.io/badge/Power_BI-DirectQuery-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![DAX](https://img.shields.io/badge/DAX-25%2B_Measures-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)](https://learn.microsoft.com/en-us/dax/)
[![Dataset](https://img.shields.io/badge/Kaggle-Olist_Dataset-20BEFF?style=for-the-badge&logo=kaggle&logoColor=white)](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

<br/>

> **Full pipeline:** Raw CSV → PostgreSQL → SQL Views → Power BI Dashboard
> Built on real Brazilian E-Commerce data from 2016–2018

<br/>

<img width="2232" height="1240" alt="Screenshot 2026-06-06 173005" src="https://github.com/user-attachments/assets/a9eca7ae-4e54-46d3-bb04-b23967aade4d" />

<img width="2337" height="1302" alt="Screenshot 2026-06-06 155427" src="https://github.com/user-attachments/assets/d1243e37-87dc-4f13-8f91-113a7797e5ce" />

<img width="2321" height="1297" alt="Screenshot 2026-06-06 155456" src="https://github.com/user-attachments/assets/5a0a7dbb-0532-4af2-ab4b-5f2488930396" />

<img width="2336" height="1307" alt="Screenshot 2026-06-06 155522" src="https://github.com/user-attachments/assets/1b50a7a4-f64f-4b96-b604-57b42411a1da" />

<img width="2345" height="1299" alt="Screenshot 2026-06-06 155549" src="https://github.com/user-attachments/assets/bac80ad7-b560-46bf-8d30-153ca92369ea" />

<img width="2345" height="1279" alt="Screenshot 2026-06-06 155613" src="https://github.com/user-attachments/assets/6408a8aa-8b4e-4ea3-bd53-250f9bbca20c" />

<img width="2317" height="1274" alt="Screenshot 2026-06-06 155638" src="https://github.com/user-attachments/assets/8803ef6c-7867-4d54-a154-4fe59db92f2e" />

<img width="2352" height="1318" alt="Screenshot 2026-06-06 155700" src="https://github.com/user-attachments/assets/8cf317b3-26d7-4383-8174-56078cc4b4f7" />

<img width="2336" height="1299" alt="Screenshot 2026-06-06 155726" src="https://github.com/user-attachments/assets/894d53c9-b7c9-4e10-a9e0-2e70d0d3cf51" />

</div>

<br/>

## 📊 Key Results

<div align="center">

| Metric | Value | Metric | Value |
|--------|-------|--------|-------|
| 💰 **Total Revenue** | R$ 14.21M | 🚚 **On-Time Delivery** | 93.23% |
| 📦 **Total Orders** | 98,666 | ⭐ **Avg Rating** | 4.03 / 5 |
| 👥 **Total Customers** | 95,424 | 📈 **YoY Growth** | 2.53x |
| 🛍️ **Avg Order Value** | R$ 144.01 | 🏪 **Total Sellers** | 3,095 |

</div>

<br/>

---

## 🧩 Problem Statement

Brazilian e-commerce company **Olist** had 100,000+ real orders across **9 separate CSV files** — but no way to answer critical business questions:

| ❓ Business Question | 😤 Before This Project |
|---------------------|------------------------|
| Which product category is growing fastest? | Manual Excel work — hours per report |
| Which states have the most late deliveries? | No visibility at all |
| How does delivery speed affect customer ratings? | Unknown connection |
| What payment method drives highest revenue? | Scattered across files |
| Which sellers are underperforming? | No consolidated view |

**This project solves all of these** — with a live, interactive dashboard answering 50+ business questions in real time.

<br/>

---

## 💡 Solution Architecture

```
┌──────────────┬──────────────┬──────────────┬────────────────┐
│   LAYER 1    │   LAYER 2    │   LAYER 3    │    LAYER 4     │
│              │              │              │                │
│  Raw Data    │  PostgreSQL  │  SQL Views   │   Power BI     │
│  (9 CSVs)   │  Database    │  (BI Layer)  │  Dashboard     │
│              │              │              │                │
│ 120MB+       │ 9 Tables     │ 5 Optimized  │ 9 Pages        │
│ 500K+ rows   │ FK + Indexes │ Views        │ 25+ Measures   │
└──────────────┴──────────────┴──────────────┴────────────────┘
```

<br/>

---

## 🛠️ Tech Stack

| Layer | Tool | Why This Tool |
|-------|------|---------------|
| 🗄️ **Database** | PostgreSQL 18 | Production-grade RDBMS, handles 1M+ rows efficiently |
| 🖥️ **DB GUI** | pgAdmin 4 | Visual query tool for table and view management |
| 📊 **BI Tool** | Power BI Desktop | Industry-standard BI platform with DirectQuery support |
| 🔢 **Calc Engine** | DAX | Native Power BI language for time intelligence and KPIs |
| 📁 **Dataset** | Kaggle — Olist | Real Brazilian e-commerce data, 2016–2018 |
| 🔗 **Connection** | DirectQuery Mode | Live SQL queries to PostgreSQL — no stale data |

<br/>

---

## 📁 Repository Structure

```
olist-ecommerce-analytics/
│
├── 📂 sql/
│   ├── 01_create_tables.sql       → Define 9 raw tables with correct data types
│   ├── 02_load_data.sql           → COPY command bulk import from CSV files
│   ├── 03_foreign_keys.sql        → Referential integrity (FK constraints)
│   ├── 04_create_indexes.sql      → 10 performance indexes for fast DirectQuery
│   └── 05_create_bi_views.sql     → 5 optimized BI views (core business logic)
│
├── 📂 powerbi/
│   ├── DimDate.dax                → Date dimension calculated table (DAX)
│   ├── DAX_Measures.dax           → All 25+ measures with folder organization
│   └── Olist_Analytics_Dashboard.pbix  → Power BI report file
│
├── 📂 docs/
│   └── dashboard_pages.md         → All 9 pages: visuals, fields, filters reference
│
├── 📂 assets/
│   └── dashboard_preview.png      → (Add your screenshot here)
│
├── .gitignore
└── README.md
```

<br/>

---

## 🗃️ Database Design

### Raw Tables — 9 Tables

| Table | Rows | Description |
|-------|------|-------------|
| `olist_orders_dataset` | 99,441 | Order header — status, all timestamps |
| `olist_customers_dataset` | 99,441 | Customer info — city, state, unique ID |
| `olist_order_items_dataset` | 112,650 | Line items — product, seller, price, freight |
| `olist_order_payments_dataset` | 103,886 | Payments — type, value, installments |
| `olist_order_reviews_dataset` | 99,224 | Customer reviews — score, comments, dates |
| `olist_products_dataset` | 32,951 | Product catalog — category, weight, dimensions |
| `olist_sellers_dataset` | 3,095 | Seller info — city, state |
| `olist_geolocation_dataset` | 1,000,163 | Zip code → lat/lng coordinates |
| `product_category_name_translation` | 71 | Portuguese → English category names |

<br/>

### BI Views — 5 Views (used in Power BI)

| View | Type | Key Logic |
|------|------|-----------|
| `bi_fact_sales` | ⭐ **Main Fact** | 1 row per order item — all dimensions joined in one place |
| `bi_fact_order` | Fact | Calculates `delivery_days` and `is_late` flag (0/1) in SQL |
| `bi_dim_product` | Dimension | English category via `COALESCE` + `volume_cm3` calculated field |
| `bi_fact_review_latest` | Fact | `DISTINCT ON (order_id)` — keeps only latest review, prevents duplication |
| `bi_payments_order` | Aggregated | `GROUP BY order_id` — prevents fan-out when joining to fact table |

<br/>

---

## 📈 Dashboard Pages (9 Pages)

<details>
<summary><b>📌 Page 1 — Executive Dashboard</b></summary>
<br/>

**Purpose:** Company health at a glance — the first page every stakeholder sees

| Visual | Type | Fields Used |
|--------|------|-------------|
| 7 KPI Cards | Card | Revenue, Orders, Customers, AOV, On-time %, Avg Rating, YoY % |
| Revenue Trend | Line Chart | DimDate[Year-Month] × Revenue · Tooltip: Orders, AOV, YoY% |
| Orders by Month | Clustered Bar | DimDate[Year-Month] × Orders |
| Top 10 Categories | Bar Chart | category × Revenue · Top N filter = 10 |
| Revenue by State | Filled Map | customer_state × Revenue · Tooltip: Orders, AOV |
| Order Status Share | Donut | order_status × Orders |

</details>

<details>
<summary><b>📌 Page 2 — Sales Trends</b></summary>
<br/>

Revenue vs Last Year · Rolling 30-Day Revenue · Revenue YTD area chart · Category × Year matrix (Revenue, Orders, AOV)

</details>

<details>
<summary><b>📌 Page 3 — Category & Product</b></summary>
<br/>

Treemap (revenue share) · AOV vs Orders scatter · Top 10 by Rating bar · Top 20 Categories table with 5 metrics

</details>

<details>
<summary><b>📌 Page 4 — Customer Geographic</b></summary>
<br/>

Brazil filled map · Top 10 States by Revenue · Top 10 Cities · State × Category cross-matrix

</details>

<details>
<summary><b>📌 Page 5 — Delivery & Logistics</b></summary>
<br/>

On-Time % card · Late Orders card · Late orders by Month · Late % by State · Avg Delivery Days by Category

</details>

<details>
<summary><b>📌 Page 6 — Reviews</b></summary>
<br/>

Avg Rating 4.03 · Positive 75.48% · Negative 16.96% · Rating distribution donut · Rating by Late vs On-Time comparison

</details>

<details>
<summary><b>📌 Page 7 — Payments</b></summary>
<br/>

Payment type share donut · Avg installments by type · Payment value trend line · Payment summary table

</details>

<details>
<summary><b>📌 Page 8 — Sellers</b></summary>
<br/>

Total Sellers · Revenue per Seller · Top sellers bar · Revenue by seller state map · Seller × Category matrix

</details>

<details>
<summary><b>📌 Page 9 — Category Drillthrough</b></summary>
<br/>

Right-click any category on any page → drills to this page · Dynamic title via `COALESCE(SELECTEDVALUE(category), "All")` · Revenue trend · Top 10 States · Full KPI cards

</details>

<br/>

---

## ⚡ Technical Highlights

| Feature | Implementation |
|---------|----------------|
| **DirectQuery Architecture** | Power BI sends live SQL to PostgreSQL per visual — no data duplication, always fresh |
| **Row Deduplication** | `DISTINCT ON (order_id)` prevents review fan-out — standard production data quality pattern |
| **Mixed Storage Mode** | DimDate → Import (fast filtering) + bi_fact_sales → DirectQuery (live data) |
| **Star Schema Design** | `bi_fact_sales` as central fact + `bi_dim_product` + `DimDate` as dimensions |
| **10 Performance Indexes** | On `order_id`, `customer_id`, `product_id`, `seller_id`, `purchase_timestamp`, `customer_state` |
| **25+ DAX Measures** | Organized in folders: Base, Time Intelligence, Reviews, Logistics, Payments, Sellers |
| **Calculated Column** | `Review Bucket` as column (not measure) — enables row-level `SWITCH` classification |
| **Dynamic Drillthrough Title** | `COALESCE(SELECTEDVALUE(category), "All")` — changes per category selected |

<br/>

---

## 🔍 Key Business Insights

```
💡 Health & Beauty = #1 Revenue Category  →  R$1.30M — prime strategic focus area
💡 Late Delivery Kills Ratings            →  Late orders: 2.3★  vs  On-time: 4.2★
💡 São Paulo = 38% of All Revenue         →  SP dominates customers, sellers, orders
💡 Credit Card = 76.76% of Payments      →  Avg 3.63 installments — EMI buying preference
💡 2018 Late Order Crisis                 →  1,328 late orders in a single month — spike worth investigating
```

<br/>

---

## 🚀 How to Reproduce

### Prerequisites

- [PostgreSQL 15+](https://www.postgresql.org/download/)
- [pgAdmin 4](https://www.pgadmin.org/)
- [Power BI Desktop](https://powerbi.microsoft.com/desktop/)
- [Olist Dataset — Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

<br/>

### Steps

**1. Create the database**
```sql
CREATE DATABASE olist_db;
```

**2. Run SQL files in order** (in pgAdmin Query Tool)
```
sql/01_create_tables.sql    →  Creates 9 raw tables
sql/02_load_data.sql        →  Update your CSV path → run to load data
sql/03_foreign_keys.sql     →  Adds FK constraints
sql/04_create_indexes.sql   →  Adds 10 performance indexes
sql/05_create_bi_views.sql  →  Creates 5 optimized BI views
```

**3. Connect Power BI**
```
Get Data → PostgreSQL → server: localhost → olist_db → DirectQuery
Load only BI views (bi_fact_sales + others)
```

**4. Create DimDate**
```
Modeling → New Table → paste code from powerbi/DimDate.dax
Right-click → Mark as Date Table → select [Date] column
Create relationship: DimDate[Date] → bi_fact_sales[purchase_date]
```

**5. Add DAX Measures**
```
New Measure → paste each measure from powerbi/DAX_Measures.dax
Organize into Display Folders
```

**6. Build the 9 pages**
```
See docs/dashboard_pages.md for exact visuals, fields, and filters
```

<br/>

> ⚠️ **Dataset not included** — CSV files are 120MB+ total (GitHub limit exceeded).
> Download free from [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) → update path in `02_load_data.sql`

<br/>

---

## 👤 Author

**Suryakant**
B.Tech CSE — AI & Data Science | Data Analyst


<br/>

---

## 📄 License

MIT License — free to use, modify, and share.

---

<div align="center">

**⭐ If this project helped you, please star the repo!**

</div>
