CREATE TABLE store_master(
store_id VARCHAR,
store_name VARCHAR,
city VARCHAR,
state VARCHAR,
region VARCHAR,
store_type VARCHAR,
PRIMARY KEY (store_id)	
);

CREATE TABLE sku_master(
sku_id VARCHAR,
product_name VARCHAR,
category VARCHAR,
base_price NUMERIC(10,2),
unit_cost NUMERIC(10,2),
PRIMARY KEY (sku_id)	
);

CREATE TABLE retail_transactions(
	transaction_id VARCHAR,
	date DATE,
	year INTEGER,
	month INTEGER,
	month_name VARCHAR,
	quarter VARCHAR,
	day_of_week VARCHAR,
	is_weekend BOOLEAN,
	store_id VARCHAR,
	store_name VARCHAR,
	city VARCHAR,
	state VARCHAR,
	region VARCHAR,
	store_type VARCHAR,
	sku_id VARCHAR,
	product_name VARCHAR,
	category VARCHAR,
	quantity INTEGER,
	unit_price NUMERIC(10,2),
	base_price NUMERIC(10,2),
	unit_cost NUMERIC(10,2),
	is_promo BOOLEAN,
	promo_discount_pct NUMERIC(3,2), 
	revenue NUMERIC(10,2),
	cogs NUMERIC(10,2),
	gross_profit NUMERIC(10,2),
	PRIMARY KEY (transaction_id),
	FOREIGN KEY (sku_id) references sku_master(sku_id),
	FOREIGN KEY (store_id) references store_master(store_id)
	
);
