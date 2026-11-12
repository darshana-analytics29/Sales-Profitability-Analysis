# Sales & Profitability Analysis

**A Retail Business Performance & Profitability Case Study | 2014–2017**

## Project Overview

This project focuses on analysing retail sales and profitability using the Sample Superstore dataset. The analysis covers 9,994 transaction-level records from 2014 to 2017.

The objective is to understand overall business performance, identify profitable and loss-making products, evaluate regional and customer-segment performance, and examine the relationship between discount levels and profitability.

The project follows an end-to-end data analytics workflow, including data preparation, SQL analysis, Power BI visualization, and business recommendations.

## Tools & Technologies

- **Microsoft Excel** – Data inspection and validation
- **Power Query** – Data cleaning and transformation
- **PostgreSQL** – Data querying and analysis
- **Power BI** – Interactive dashboards and data visualization

## Dataset Overview

The dataset contains retail transaction information, including:

- Order ID and Order Date
- Customer ID and Customer Segment
- Product Category and Sub-Category
- Region, State and City
- Sales and Quantity
- Discount and Profit
- Shipping Mode

**Dataset Statistics:**

| Attribute | Details |
|---|---:|
| Transaction Records | 9,994 |
| Original Columns | 21 |
| Cleaned Dataset Columns | 22 |
| Unique Orders | 5,009 |
| Unique Customers | 793 |
| Analysis Period | 2014–2017 |
| Currency | USD |

The cleaned dataset includes an additional derived **Profit Margin** column.

## Data Cleaning & Preparation

The raw dataset was inspected and prepared before conducting the analysis.

Key preparation activities included:

- Reviewing column names and data types.
- Standardizing date formats.
- Checking missing values and duplicate records.
- Validating unique Row IDs.
- Standardizing Sales and Profit values to two decimal places.
- Creating a derived Profit Margin column.

The cleaned dataset retains the same 9,994 transaction records as the raw dataset.

## Key Performance Indicators (KPIs)

The following KPIs were calculated using the cleaned analytical dataset:

| KPI | Result |
|---|---:|
| Total Sales | $2,297,200.65 |
| Total Profit | $286,396.59 |
| Unique Orders | 5,009 |
| Quantity Sold | 37,873 |
| Overall Profit Margin | 12.47% |

**Profit Margin Formula:**

`Profit Margin = (Total Profit / Total Sales) × 100`

For category, regional, and segment comparisons, profit margin is calculated using total profit divided by total sales.

## Power BI Dashboard

The interactive Power BI dashboard consists of three analytical pages, providing insights into sales performance, profitability, and overall business performance.

### 1. Sales Overview

This dashboard page provides an overview of business performance through KPI cards, annual sales and profit trends, monthly performance, and category-level comparisons.

**Key metrics:**
- Total Sales
- Total Profit
- Unique Orders
- Quantity Sold
- Overall Profit Margin
- Sales and Profit by Category
- Annual and Monthly Trends

![Sales Overview](PowerBI/Sales%20Overview.png)

---

### 2. Profitability Analysis

This page focuses on identifying profitable and loss-making areas across product sub-categories, discount levels, and individual products.

**Key analysis:**
- Profit and Profit Margin by Sub-Category
- Discount vs. Profitability
- Top 10 Most Profitable Products
- Sub-Category Filtering

![Profitability Analysis](PowerBI/Profitability%20Analysis.png)

---

### 3. Business Performance

This page evaluates business performance across geographical regions, customer segments, and shipping modes.

**Key analysis:**
- Sales and Profit by Region
- Sales and Profit by Customer Segment
- Sales and Profit by Shipping Mode
- Profit Margin by Region

![Business Performance](PowerBI/Business%20Performance.png)

## SQL Analysis – PostgreSQL

PostgreSQL was used to perform structured queries and calculate business performance metrics.

The SQL analysis covers:

- Dataset inspection and record counts
- Overall business KPIs
- Yearly sales and profit performance
- Category and sub-category profitability
- Regional performance
- Customer-segment analysis
- Discount-level profitability
- Top and bottom product performance

## Key Findings & Business Insights

**1. Category Performance**

Technology was the strongest main category, generating $836,154.02 in sales and $145,455.54 in profit, with a 17.40% profit margin.

Furniture generated $741,999.74 in sales but had a comparatively low profit margin of 2.49%.

**2. Sub-Category Profitability**

Tables recorded the largest sub-category loss of $17,725.58. Bookcases and Supplies also recorded negative profits.

Copiers generated the highest sub-category profit of $55,617.88.

**3. Regional Performance**

The West region generated the highest sales of $725,457.75 and profit of $108,418.30.

Central recorded the lowest regional profit margin at 7.92%.

**4. Customer Segment Analysis**

Consumer generated the highest total sales and profit, while Home Office achieved the highest profit margin of 14.03%.

**5. Discount Analysis**

Discount levels of 30% and above were associated with negative aggregate profitability in the observed dataset.

This is an observed relationship and does not establish that discounts alone caused the losses.

**6. Product-Level Analysis**

The Canon imageCLASS 2200 Advanced Copier was the most profitable individual product, generating $25,199.94 in profit.

The Cubify CubeX 3D Printer Double Head Print recorded the largest product-level loss of $8,879.97.

## Business Recommendations

Based on the analysis, the following recommendations were identified:

1. **Discount Governance:** Review high-discount transactions and evaluate their impact on profit margins.
2. **Loss-Making Products:** Investigate products with negative profits and review their pricing and discount strategies.
3. **Furniture Profitability:** Review pricing, discounting, and product mix, particularly for Tables and Bookcases.
4. **Regional Performance:** Investigate the comparatively lower profit margin in the Central region.
5. **Profit-Led Planning:** Track profit and margin alongside sales when evaluating products and promotions.

## Limitations & Future Scope

The analysis is based on historical transaction data. The available dataset does not contain detailed procurement costs, inventory information, marketing expenditure, competitor pricing, or customer lifetime value.

Future analysis could include:

- Product cost and inventory analysis.
- Customer retention and repeat-purchase analysis.
- Testing different promotional offers to identify more profitable strategies.

## Project Report

The detailed project report includes the business context, methodology, data preparation, analytical findings, dashboard explanations, recommendations, and conclusion.

Refer to the **Report** folder for the complete project documentation.

---

**Project Type:** Data Analytics Portfolio Project  
**Analysis Period:** 2014–2017  
**Tools:** Excel | Power Query | PostgreSQL | Power BI
