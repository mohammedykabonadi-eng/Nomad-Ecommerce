# Ecommerce Performance Report

|  |
| --- |
| **Client Background** **Nomad** is a US-based e-commerce company that sells popular consumer electronics and accessories to a global clientele. Established in 2018, the company has grown and expanded in the last few years, it has encountered increasing competition from peer companies as well as unique challenges and opportunities brought on by the COVID-19 pandemic. **Nomad's** book of business consists of **1,000** customers and possesses over **5,000** transactions, generating sales revenue across four years of operation. The available eCommerce data spans various dimensions and metrics, including sales, products, sales by regions, and the company's loyalty program. Reporting to the Head of Operations, an in-depth analysis was conducted to evaluate **Nomad's** performance over the past several years (2019–2022). This comprehensive review provides valuable insights that internal cross-functional teams will utilize to streamline processes and enhance **Nomad's** commercial performance. The key insights and recommendations focus on the following areas: **Northstar Metrics** * Sales trends - Focusing on key metrics of sales revenue, number of orders placed, and average order value (AOV). * Product performance - Analyzing different product lines, market impact, and refund rates to inform strategic product decisions. * Loyalty program evaluation - Evaluating the effectiveness of the company's loyalty program and providing recommendations to maximize customer engagement and retention. * Regional results - Evaluating regional demand and product performance within regions to identify areas for improvement. |

# Executive Summary

### Sales Revenue Analysis (2019–2022)

[![Sales Revenue](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_sales_revenue.png)]([https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_sales_revenue.png](https://github.com/mohammedykabonadi-eng/Nomad-Ecommerce/blob/main/Charts/chart_sales_revenue.png))

|  |  |
| --- | --- |
| 1. **Revenue Growth and Peak Performance:** * 2020 was the strongest year, with sales consistently growing each quarter as a result of the COVID-19 pandemic. * Q4 2020 saw the highest revenue, making it the best-performing period across all four years. * Early 2021 also maintained strong sales, though a downward trend began shortly afterward. 2. **Declining Trend in 2022** * A significant sales decline occurred in 2022, particularly in Q3 and Q4, marking the lowest revenue months. * The decline suggests a major downturn, likely caused by external market conditions, reduced consumer demand, or internal operational shifts. | 3. **Quarterly Insights & Seasonal Trends** * Q3 and Q4 of each year typically show strong performance due to seasonal shopping trends and holiday marketing. * Q1 2022 started reasonably well but revenue quickly dropped, signaling overall weak performance. 4. **Key Takeaways & Recommendations** * Investigate the causes of the 2022 decline (e.g., market changes, competition, internal factors). * Leverage high-performing periods to refine marketing and sales strategies. * Reassess business strategy for 2023, focusing on pricing, promotions, and customer engagement. |

## Dataset Structure and ERD (Entity relationship diagram)

The database structure as seen below consists of four tables: orders, customers, geo_lookup, and order_status, with a total row count of 6,017 records.

[![ERD](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_erd.png)](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_erd.png)

# Insights Deep-Dive

# Sales Trend

|  |  |  |
| --- | --- | --- |
| [![AOV](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_aov_year.png)](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_aov_year.png) | [![Orders](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_order_count.png)](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_order_count.png) | |

|  |
| --- |
| **Sales Revenue** 1. Sharp Decline in Q4 2022 – A Major Sales Anomaly * Historically, Q4 (Oct-Dec) has been the strongest quarter due to holiday shopping (Black Friday, Cyber Monday, Christmas sales). However, in 2022, **Q4 sales plummeted**. * 2022 revenue was significantly lower across all quarters compared to the 2020 peak, representing a **~30-40% drop** in order volume year over year. 2. Post-Pandemic Sales Normalization (2020-2022 Trends) * 2020 Sales Surge: The pandemic led to a significant boost in eCommerce sales — **Q4 2020 was nearly double Q4 2019**. * 2021 Slight Slowdown: Sales remained high but started stabilizing. * 2022 Major Decline: A **consistent drop in sales across all quarters** suggests a post-pandemic correction, with inflation, lower consumer spending, or increased competition. 3. Declining Growth Throughout 2022 – Indicating Weak Consumer Demand * Each quarter in 2022 experienced a downward trend. * Q4: **Historic low, indicating critical demand issues**. Nomad may need to re-strategize through marketing, promotions, or changes in pricing. **Average Order Value** 1. Sharp AOV Surge in 2020, followed by a Decline in 2021–2022 * **2020 saw the highest AOV growth**, aligning with pandemic-driven eCommerce boom. * Post-pandemic correction (2021–2022) led to a steady decline, with AOV returning close to 2019 levels. 2. Long-Term AOV Decline May Indicate Price Sensitivity * AOV in 2022 is likely **not** a major factor in the decline — order count is the primary driver. **Order Count** 1. Order counts closely follow revenue, indicating the decline is primarily due to **fewer orders** rather than a drop in AOV. 2. The anomaly **started in mid-2022**, with order volume falling sharply through Q3 and Q4. 3. The **decline in order frequency** directly results in lower overall sales revenue. |

# Product Performance

### Product Sales Surged in 2020 but were not Sustained at High Levels

[![Product Revenue](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_product_revenue.png)](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_product_revenue.png)

|  |  |  |
| --- | --- | --- |
| **The Best and Worst** * The **27in 4K Gaming Monitor** had consistently strong sales year over year and is the highest revenue generating product overall. * The second and third best-performing products are the **Apple AirPods Headphones** and the **MacBook Air Laptop**. * The **Bose SoundSport Headphones** had near-zero orders across all years. * Despite being typically a high-demand product, the **Apple iPhone** is among the lowest sales performers. | **AOV Over Time** * AOV peaked in 2020 then declined in 2021 and 2022. * **MacBook Air Laptop**, **ThinkPad Laptop**, and **Apple iPhone** are the biggest contributors to AOV due to their high price points. * Samsung Charging Cable Pack and Webcam are stable but do not significantly impact AOV. * AOV is trending downward, mainly due to a decline in product sales volume rather than price changes. | **Seasonal Findings** * Consistent Q4 spikes due to Black Friday, Cyber Monday, and the holiday shopping season. * Biggest Q4 Performers: The 27-inch 4K Gaming Monitor and Apple AirPods saw the biggest spikes. * Sales dip in January and February after the holiday season. * MacBook Air, ThinkPad, and the 27-inch 4K Gaming Monitor maintain consistent demand through Q2 and Q3. |

# Loyalty Program Learnings

|  |  |
| --- | --- |
| [![Loyalty AOV](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_loyalty_aov.png)](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_loyalty_aov.png) | [![Loyalty Orders](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_loyalty_orders.png)](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_loyalty_orders.png) |

|  |
| --- |
| * Loyalty members have sustained AOV growth beyond the pandemic boom, continuing to purchase higher-priced products and place more orders after 2020. * Non-loyalty members have not sustained sales revenue and AOV growth beyond the pandemic boom, with both declining post-2020. * In 2022, **loyalty members spent more on average than non-loyalty members**. AOV for loyalty members has steadily increased year over year, while non-loyalty members' AOV declined. * Loyalty members outspend non-loyalty members on returning orders, whereas non-loyalty members have historically spent more on their first Nomad orders. |

# Refund Rates

|  |  |
| --- | --- |
| **Refund Rate per Product Type** [![Refund Rates](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_refund_rates.png)](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_refund_rates.png) | * Laptops have the highest return rate — **ThinkPad Laptop** and **MacBook Air Laptop** lead all products at ~20%. * These are also Nomad's most expensive products — high refund rates are costly to revenue. * The **Bose SoundSport Headphones** have a near-zero return rate — but also near-zero sales volume. * The **Samsung Charging Cable Pack** maintains a low return rate with stable order volume. * High refund rates on premium laptops suggest potential product quality or expectation issues that warrant investigation. |

# Regional Results

[![Regional Dumbbell](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_dumbbell.png)](https://raw.githubusercontent.com/mohammedykabonadi-eng/Nomad-Ecommerce/main/charts/chart_dumbbell.png)

|  |
| --- |
| * The **North American region** contributes the most to sales revenue for each Nomad product. + An average of ~52% of total sales per product originate from NA. + United States is the single largest country by order volume. * In contrast, Nomad sales have underperformed in the **Latin American region**. + Each product accounts for only an average of ~6% of total sales. + Significant growth opportunity exists in Brazil, Mexico, and Colombia. * The **27-Inch 4K Gaming Monitor** is the most popular product across all regions. + Accounts for the largest share of total product sales globally. * The **Bose SoundSport Headphones** are the least favored product across all regions. + Sales are close to 0% across all regions and years. |

# Recommendations

#### Based on the uncovered insights, here are actionable items that Nomad can take away from our analysis.

### Sales

* Remedy sales lows due to seasonal fluctuations in January and February by increasing marketing campaigns during these low-sales periods.
  + Average sales growth year-over-year is weakest in Q1 — targeted promotions can offset this dip.
  + Average Sales Growth for Q4 post-pandemic is significantly negative.
* Win back lost customers after the pandemic boom by implementing re-engagement and promotional campaigns.
  + The average year-over-year order count growth post-pandemic is negative.
  + Retaining existing customers is more cost-effective than acquiring new ones.

### Products

* Optimize inventory for high-performing products year-round.
  + The 27-Inch 4K Gaming Monitor is the strongest product in terms of sales.
  + The Apple AirPods are also a strong-selling product with consistent demand.
* Deprioritize inventory for low-performing products.
  + Bose SoundSport Headphones and Apple iPhone constitute nearly 0% of total purchase orders.
* Investigate sales for MacBook Air laptops.
  + MacBook Air Laptops rank high in revenue but carry a ~20% return rate that warrants investigation.

### Loyalty Program

* Continue a strong push for the loyalty program to boost and stabilize sales, as loyalty members are more likely to return and purchase high-priced items.
  + Loyalty member AOV has grown year over year from 2019 to 2022.
  + Loyalty members consistently spend more per order than non-loyalty members.
* Offer incentives for loyalty members to target MacBook Air laptop purchases.
  + Loyalty members align with the ideal buyer persona for premium laptops.

### Refund Rates

* Streamline product quality control for high AOV products as they are the most frequently returned.
  + MacBook Air Laptops carry an average return rate of ~20%.
  + ThinkPad Laptops carry a similarly high return rate that impacts revenue retention.

### Regions

* Maximize market share in North America, as this region dominates sales across all Nomad products.
  + ~52% of product sales were in the North American region.
* Diversify the portfolio in the Latin American region by expanding localized product offerings, sales channels, and market reach.
  + Only ~6% of product sales were in the Latin American region — a significant untapped opportunity.
* Continue to streamline high-performing products globally.
  + The demand for the 27-inch 4K Gaming Monitor and Apple AirPods headphones remains high across all regions.
