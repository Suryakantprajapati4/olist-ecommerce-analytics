# 🛒 Olist E-Commerce — Industry-Level Data Analytics Dashboard

> **End-to-end data analytics project** | PostgreSQL × Power BI | Brazilian E-Commerce Dataset

---

## 📊 Dashboard Preview

| KPI | Value |
|-----|-------|
| 💰 Total Revenue | R$ 14.21M |
| 📦 Total Orders | 98,666 |
| 👥 Total Customers | 95,424 |
| 🛍️ Average Order Value | R$ 144.01 |
| 🚚 On-Time Delivery | 93.23% |
| ⭐ Average Rating | 4.03 / 5 |
| 📈 YoY Growth | 2.53x |

---

## 🧠 Project Overview

This project simulates a **real-world Business Intelligence workflow** for an e-commerce company.  
Raw transactional data is ingested into **PostgreSQL**, cleaned using **SQL views**, and visualized in a **9-page interactive Power BI dashboard** using DirectQuery mode.

**Problem:** 100,000+ orders spread across 9 separate CSV files — no unified view, no business insights.  
**Solution:** A complete analytics pipeline from raw CSV → PostgreSQL → BI views → Power BI dashboard.

---

## 🗂️ Repo Structure

```
olist-ecommerce-analytics/
│
├── sql/
│   ├── 01_create_tables.sql       ← Create 9 raw tables
│   ├── 02_load_data.sql           ← COPY CSV data into tables
│   ├── 03_foreign_keys.sql        ← Add FK constraints
│   ├── 04_create_indexes.sql      ← Performance indexes
│   └── 05_create_bi_views.sql     ← 5 optimized BI views
│
├── powerbi/
│   ├── DimDate.dax                ← Date dimension calculated table
│   ├── DAX_Measures.dax           ← All 25+ DAX measures
│   └── Sales Dashboard.pbix       ← Power BI report file (add manually)
│
├── docs/
│   └── dashboard_pages.md         ← All 9 pages — visuals & fields reference
│
├── data/                          ← ⚠️ NOT included (see below)
├── .gitignore
└── README.md
```

---

## 🚀 How to Reproduce

### Prerequisites
- [PostgreSQL 15+](https://www.postgresql.org/download/)
- [pgAdmin 4](https://www.pgadmin.org/)
- [Power BI Desktop](https://powerbi.microsoft.com/desktop/)
- [Olist Dataset from Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

---

### Step 1 — Create Database

```sql
CREATE DATABASE olist_db;
```

Open `olist_db` in pgAdmin Query Tool for all subsequent steps.

---

### Step 2 — Create Tables

Run `sql/01_create_tables.sql`

Creates 9 tables: customers, geolocation, products, sellers, orders, order_items, payments, reviews, category_translation.

---

### Step 3 — Load Data

1. Download CSV files from [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
2. Place them in a local folder (e.g., `C:/olist-data/`)
3. Open `sql/02_load_data.sql` → update `C:/your-path/` → run

---

### Step 4 — Add Foreign Keys

Run `sql/03_foreign_keys.sql`

---

### Step 5 — Create Indexes

Run `sql/04_create_indexes.sql`  
Adds 10 performance indexes for fast DirectQuery.

---

### Step 6 — Create BI Views

Run `sql/05_create_bi_views.sql`

Creates 5 views:

| View | Description |
|------|-------------|
| `bi_fact_sales` | **Main fact table** — 1 row per order item, all dims joined |
| `bi_fact_order` | Order-level metrics: delivery_days, is_late |
| `bi_dim_product` | Products with English category names |
| `bi_fact_review_latest` | Deduplicated reviews (latest per order) |
| `bi_payments_order` | Aggregated payments per order |

---

### Step 7 — Connect Power BI

1. Open Power BI Desktop
2. **Get Data → PostgreSQL**
3. Server: `localhost` | Database: `olist_db` | Mode: **DirectQuery**
4. Load only BI views (mainly `public bi_fact_sales`)

---

### Step 8 — Create DimDate

1. **Modeling → New Table**
2. Paste code from `powerbi/DimDate.dax`
3. Right-click DimDate → **Mark as Date Table** → select `[Date]`
4. Create relationship: `DimDate[Date]` → `bi_fact_sales[purchase_date]`

---

### Step 9 — Add DAX Measures

Create measures from `powerbi/DAX_Measures.dax`

Key measures:

```dax
Revenue    = SUM('public bi_fact_sales'[price])
Orders     = DISTINCTCOUNT('public bi_fact_sales'[order_id])
AOV        = DIVIDE([Revenue], [Orders])
On-time %  = DIVIDE([Delivered Orders] - [Late Orders], [Delivered Orders])
YoY %      = DIVIDE([Revenue] - [Revenue LY], [Revenue LY])
```

---

### Step 10 — Build Dashboard

See `docs/dashboard_pages.md` for all 9 pages with exact visuals and fields.

---

## 📁 Dataset

> ⚠️ CSV files are NOT included in this repo (120MB+ total, exceeds GitHub limit).  
> Download from Kaggle: [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

---

## 🛠️ Tech Stack

| Layer | Tool |
|-------|------|
| Database | PostgreSQL 18 |
| GUI | pgAdmin 4 |
| BI Tool | Power BI Desktop (DirectQuery) |
| Calc Language | DAX |
| Dataset | Kaggle — Olist |

---

## ✨ Key Features

- **DirectQuery architecture** — live SQL queries to PostgreSQL, no data duplication
- **5 optimized SQL views** — clean separation between raw data and BI layer
- **10 performance indexes** — fast response for DirectQuery visuals
- **DISTINCT ON deduplication** — prevents review row multiplication
- **Mixed storage mode** — DimDate in Import, facts in DirectQuery
- **25+ DAX measures** — organized in folders: Base, Time Intelligence, Reviews, Logistics, Payments, Sellers
- **9-page dashboard** — Executive, Sales Trends, Category, Customer Geo, Logistics, Reviews, Payments, Sellers, Drillthrough
- **Category Drillthrough** — right-click any category for deep dive with dynamic title

---

## 👤 Author

**Suryakant**  
B.Tech CSE (AI & Data Science) | Data Analyst  
📌 Inspired by Sheryians AI School — PostgreSQL × Power BI tutorial

---

## 📄 License

MIT License — free to use and modify.
