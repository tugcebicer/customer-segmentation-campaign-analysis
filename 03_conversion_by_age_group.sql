-- ================================
-- 03: CONVERSION RATE BY AGE GROUP
-- Which age segments convert best?
-- ================================

SELECT
  CASE
    WHEN age < 30 THEN '18-29'
    WHEN age BETWEEN 30 AND 39 THEN '30-39'
    WHEN age BETWEEN 40 AND 49 THEN '40-49'
    WHEN age BETWEEN 50 AND 59 THEN '50-59'
    ELSE '60+'
  END AS age_group,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN y = TRUE THEN 1 ELSE 0 END) AS converted,
  ROUND(SUM(CASE WHEN y = TRUE THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM `bank-marketing-489909.bank_marketing.raw_bank_data`
GROUP BY age_group
ORDER BY conversion_rate DESC;
