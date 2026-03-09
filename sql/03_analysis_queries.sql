--Total revenue, units sold, and gross profit by year and month
SELECT year, month,month_name,
ROUND(SUM(revenue),2) AS total_revenue, 
ROUND(SUM(gross_profit),2) as total_gross_profit, 
SUM(quantity) AS total_quantity,
ROUND((SUM(gross_profit)/SUM(revenue))*100,2)AS gross_margin
FROM retail_transactions
GROUP BY year, month,month_name
ORDER BY year,month;

--Top 10 products by revenue
SELECT product_name, category, 
ROUND(SUM(revenue),2) AS total_revenue, 
ROUND(SUM(gross_profit),2) as total_gross_profit,
ROUND((SUM(gross_profit)/SUM(revenue))*100,2)AS gross_margin,
ROUND((SUM(revenue)/SUM(SUM(revenue))OVER())*100,2)AS pct_of_total_revenue
FROM retail_transactions
GROUP BY product_name,category
ORDER BY total_revenue DESC
LIMIT 10;

--Month-over-month revenue change using CTE and LAG()
WITH monthly_revenue AS (
SELECT year,month,month_name,
ROUND(SUM(revenue),2) AS monthly_revenue
FROM retail_transactions
GROUP BY year, month, month_name
ORDER BY year,month
)

SELECT year,month, month_name, 
monthly_revenue, 
LAG(monthly_revenue) OVER(ORDER BY year,month) AS prev_month_revenue,
ROUND(monthly_revenue - LAG(monthly_revenue) OVER(ORDER BY year,month),2) AS difference,
ROUND(((monthly_revenue - LAG(monthly_revenue) OVER(ORDER BY year,month))/monthly_revenue)*100,2) AS pct_change
FROM monthly_revenue;
