-- ============================================================
-- FILE: 02_load_data.sql
-- DESC: Load CSV files into PostgreSQL tables using COPY command
-- NOTE: Update the file path below to match your local folder
--       Use forward slashes even on Windows: C:/your-path/
-- ============================================================

-- ⚠️  IMPORTANT: Replace 'C:/your-path/' with your actual folder path
--     Example: 'C:/Users/John/Downloads/olist/'
--     Download dataset from: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

COPY olist_customers_dataset
FROM 'C:/your-path/olist_customers_dataset.csv'
DELIMITER ',' CSV HEADER;

COPY olist_geolocation_dataset
FROM 'C:/your-path/olist_geolocation_dataset.csv'
DELIMITER ',' CSV HEADER;

COPY olist_products_dataset
FROM 'C:/your-path/olist_products_dataset.csv'
DELIMITER ',' CSV HEADER;

COPY olist_sellers_dataset
FROM 'C:/your-path/olist_sellers_dataset.csv'
DELIMITER ',' CSV HEADER;

COPY olist_orders_dataset
FROM 'C:/your-path/olist_orders_dataset.csv'
DELIMITER ',' CSV HEADER;

COPY olist_order_items_dataset
FROM 'C:/your-path/olist_order_items_dataset.csv'
DELIMITER ',' CSV HEADER;

COPY olist_order_payments_dataset
FROM 'C:/your-path/olist_order_payments_dataset.csv'
DELIMITER ',' CSV HEADER;

COPY olist_order_reviews_dataset
FROM 'C:/your-path/olist_order_reviews_dataset.csv'
DELIMITER ',' CSV HEADER;

COPY product_category_name_translation
FROM 'C:/your-path/product_category_name_translation.csv'
DELIMITER ',' CSV HEADER;

-- ============================================================
-- VERIFY: Check row counts after loading
-- ============================================================
SELECT 'olist_customers_dataset'        AS table_name, COUNT(*) AS row_count FROM olist_customers_dataset
UNION ALL
SELECT 'olist_geolocation_dataset',       COUNT(*) FROM olist_geolocation_dataset
UNION ALL
SELECT 'olist_products_dataset',          COUNT(*) FROM olist_products_dataset
UNION ALL
SELECT 'olist_sellers_dataset',           COUNT(*) FROM olist_sellers_dataset
UNION ALL
SELECT 'olist_orders_dataset',            COUNT(*) FROM olist_orders_dataset
UNION ALL
SELECT 'olist_order_items_dataset',       COUNT(*) FROM olist_order_items_dataset
UNION ALL
SELECT 'olist_order_payments_dataset',    COUNT(*) FROM olist_order_payments_dataset
UNION ALL
SELECT 'olist_order_reviews_dataset',     COUNT(*) FROM olist_order_reviews_dataset
UNION ALL
SELECT 'product_category_name_translation', COUNT(*) FROM product_category_name_translation
ORDER BY table_name;
