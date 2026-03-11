-- ================================
-- 08: KPI SUMMARY VIEW
-- Dashboard-ready summary for Looker Studio & Power BI
-- Save this as a BigQuery View named: kpi_summary_view
-- ================================

SELECT
  job,
  CASE
    WHEN age < 30 THEN '18-29'
    WHEN age BETWEEN 30 AND 39 THEN '30-39'
    WHEN age BETWEEN 40 AND 49 THEN '40-49'
    WHEN age BETWEEN 50 AND 59 THEN '50-59'
    ELSE '60+'
  END AS age_group,
  contact,
  month,
  education,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN y = TRUE THEN 1 ELSE 0 END) AS converted,
  ROUND(SUM(CASE WHEN y = TRUE THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS conversion_rate,
  ROUND(AVG(campaign), 2) AS avg_contacts,
  ROUND(AVG(duration), 2) AS avg_call_duration_seconds
FROM `bank-marketing-489909.bank_marketing.raw_bank_data`
GROUP BY job, age_group, contact, month, education
ORDER BY conversion_rate DESC;
