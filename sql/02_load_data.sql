-- Update file paths to match your local machine before running

COPY store_master(store_id,store_name,city,state,region,store_type)
FROM 'C:/your_file_path/store_master.csv'
DELIMITER ','
CSV HEADER;

COPY sku_master(sku_id,product_name,category,base_price,unit_cost)
FROM 'C:/your_file_path/sku_master.csv'
DELIMITER ','
CSV HEADER;

COPY retail_transactions(transaction_id,date,year,month,month_name,quarter,day_of_week,is_weekend,
store_id,store_name,city,state,region,store_type,sku_id,product_name,category,quantity,unit_price,base_price,
unit_cost,is_promo,promo_discount_pct,revenue,cogs,gross_profit)
FROM 'C:/your_file_path/retail_transactions.csv'
DELIMITER ','
CSV HEADER;
