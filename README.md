# customer-segmentation-campaign-analysis
Customer segmentation and campaign performance analysis using SQL (BigQuery), Looker Studio, and Power BI. Based on UCI Bank Marketing dataset with 41,000+ records
# Customer Segmentation & Campaign Performance Analysis
Project Overview

This project analyzes a real-world bank telemarketing dataset to identify which customer segments are most likely to subscribe to a term deposit, and to optimize campaign strategy based on data-driven insights.
The analysis was conducted entirely in SQL (BigQuery) and visualized using Looker Studio and Power BI.
# Business Questions Answered

What is the overall campaign conversion rate?

Which age groups convert best?

Which job types are most likely to subscribe?

Which contact channel (cellular vs telephone) performs better?

Which months should campaigns be focused on?

Does contacting customers more times improve conversion?
# Dataset

Source: UCI Bank Marketing Dataset

Size: 41,188 customer records

Context: Portuguese bank telemarketing campaigns (2008–2013)

Target variable: Whether the customer subscribed to a term deposit (yes/no)
# Tool & Technologies
| Tool            | Purpose                         |
| --------------- | ------------------------------- |
| Google BigQuery | SQL analysis & data storage     |
| Looker Studio   | Interactive dashboard           |
| Power BI        | Business intelligence dashboard |
| GitHub          | Version control & portfolio     |
# Key Findings
Overall Conversion Rate

Only 11.27% of contacted customers subscribed — highlighting the need for smarter targeting.
# Best Age Segments
| Age Group | Conversion Rate |
| --------- | --------------- |
| 60+       | 39.56%          |
| 18-29     | 16.26%          |
| 30-39     | 11.78%          |
| 40-49     | 8.73%           |
| 50-59     | 10.16%          |

Older customers (60+) are nearly 4x more likely to subscribe than the average
# Best Job Segments
| Job        | Conversion Rate |
| ---------- | --------------- |
| Student    | 31.43%          |
| Retired    | 25.23%          |
| Unemployed | 14.20%          |

Students and retired customers are the highest-converting segments.
# Contact Channel Performance
| Channel   | Conversion Rate |
| --------- | --------------- |
| Cellular  | 14.74%          |
| Telephone | 5.23%           |

Cellular outperforms telephone by nearly 3x.
# Best Months to Campaign
| Month     | Conversion Rate |
| --------- | --------------- |
| March     | 50.55%          |
| December  | 48.90%          |
| September | 44.91%          |

Campaigns in March, December, and September yield dramatically higher conversion.
# Contact Frequency Impact
| Contacts     | Conversion Rate |
| ------------ | --------------- |
| 1 contact    | 13.04%          |
| 2 contacts   | 11.46%          |
| 3 contacts   | 10.75%          |
| 4-6 contacts | 8.49%           |
| 7+ contacts  | 5.35%           |

The first call is the most effective. More calls = lower conversion rate.
# Business Recommendations
1. Prioritize 60+ and student segments for term deposit campaigns
2. Use cellular contact exclusively — telephone is significantly less effective
3. Focus campaign budgets on March, December, and September
4. Limit outreach to 1-2 contacts per customer — additional calls waste resources and reduce conversion
# SQL Scripts
| Script                               | Description                                |
| ------------------------------------ | ------------------------------------------ |
| 01_data_exploration.sql              | Total record count and data validation     |
| 02_overall_conversion_rate.sql       | Campaign-wide subscription rate            |
| 03_conversion_by_age_group.sql       | Conversion rate by age segment             |
| 04_conversion_by_job.sql             | Conversion rate by profession              |
| 05_conversion_by_contact_channel.sql | Cellular vs telephone performance          |
| 06_best_months.sql                   | Monthly campaign performance               |
| 07_contact_frequency_impact.sql      | Effect of number of contacts on conversion |
| 08_kpi_summary_view.sql              | Combined KPI view powering dashboards      |
