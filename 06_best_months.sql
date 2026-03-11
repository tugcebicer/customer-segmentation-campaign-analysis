-- ================================
-- 06: BEST MONTHS TO CONTACT CUSTOMERS
-- When should campaigns run?
-- ================================

SELECT
  month,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN y = TRUE THEN 1 ELSE 0 END) AS converted,
  ROUND(SUM(CASE WHEN y = TRUE THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM `bank-marketing-489909.bank_marketing.raw_bank_data`
GROUP BY month
ORDER BY conversion_rate DESC;
