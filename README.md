# Grocery Retail Sales Analysis 2022-2024

End-to-end sales trend analysis of 1.7M grocery transactions using PostgreSQL, Python, and Power BI.

## Project Overview
This project analyzes 1.7 million synthesized grocery store transactions across 
6 Midwest stores from 2022 to 2024. The goal was to identify revenue trends, 
seasonal patterns, category performance, and promotional effectiveness using 
SQL, Python, and Power BI. The analysis mirrors real-world work performed at 
food manufacturers and distributors, where understanding sales trends is critical 
for inventory planning and promotional strategy.

## Tools Used
- **PostgreSQL** - Created tables, loaded data, wrote analysis queries
- **Python / Jupyter Notebook** - Data cleaning & validation, seasonality analysis, year-over-year comparison, category analysis, promotion effectiveness analysis
- **Power BI** - Built interactive dashboard with DAX measures, KPI cards, slicers, and dynamic visualizations

## Dataset
Synthetically generated dataset simulating 3 years of grocery store transactions 
across 6 Midwest stores (2022-2024).

- 1,694,390 transactions
- 50 SKUs across 8 categories
- 6 store locations across the Midwest

Download Dataset: https://github.com/anna-jessica/grocery-retail-sales-analysis/releases/tag/v1.0

## Key Findings
- Revenue Growth:
Revenue is increasing by $3,432 per month on average across the 3-year period, indicating consistent year-over-year growth. Revenue dips every February, likely reflecting post-holiday slowdowns, and spikes in July and December, driven by summer and holiday shopping seasons. A smaller spike in March may reflect early spring purchasing behavior.
- Seasonality:
Average monthly revenue follows a consistent seasonal pattern across all three years. Average revenue peaks in July and August, driven by summer gatherings and grilling season. December is the third highest month, resulting from holiday demand. February is consistently the weakest month, likely due to fewer days in the month and a post-holiday spending slowdown.
The seasonal shape (February dip, summer peak, December spike) is consistent across all three years, reinforcing that these patterns are reliable and predictable, which is valuable for inventory planning and promotional scheduling.
- Category Performance:
Aside from the dip in February the Bread & Bakery and Snacks & Candy categories are showing stable revenue throughout the year likely because they are lower price items. Frozen Foods and Meat & Seafood categories have the most significant revenue spikes in the summer which aligns with barbecued meat and frozen treats at summer time gatherings. Pantry & Dry and Frozen Foods categories show a dip in revenue during the spring. Frozen Foods and Beverage categories show a dip in the fall driven by reduction in get togethers as the weather gets cooler and kids return to school. Frozen Foods, Meat & Seafood, and Beverage categories are driving revenue in December.
These seasonal patterns suggest category managers should increase Meat & Seafood and Frozen Foods inventory ahead of summer and consider Pantry & Dry promotions to counteract the spring revenue dip.
- Promotional Effectiveness:
Revenue and gross profit decrease during promotions while average quantity sold remains the same, suggesting promotions are not driving incremental volume and only reducing margin. This could indicate that promotions are being run on items customers would have purchased anyway at full price. This is a common issue known as baseline cannibalization. Category managers should evaluate promotional depth and timing to drive true volume lift, or consider reallocating promotional spend to higher-impact activities.

## Dashboard Preview
<img width="1315" height="733" alt="dashboard_screenshot" src="https://github.com/user-attachments/assets/42abe269-8d57-42a9-a209-440f5cfd12fc" />


## How to Run
1. Download the dataset from the release link above and load into PostgreSQL using `sql/02_load_data.sql`
2. Update the database connection string in the Jupyter notebook and run all cells
3. Load `retail_transactions.csv` into Power BI Desktop to recreate the dashboard

## Skills Demonstrated
-	**SQL:** Schema design, foreign keys, aggregations, CTEs, window functions (LAG, RANK, PARTITION BY)
-	**Python:** Pandas, Matplotlib, Seaborn, time series analysis, seasonality decomposition, PostgreSQL integration via SQLAlchemy
-	**Power BI:** DAX measures, data modeling, interactive slicers, KPI cards
