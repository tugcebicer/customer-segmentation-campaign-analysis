-- ================================
-- 02: OVERALL CAMPAIGN CONVERSION RATE
-- What % of customers subscribed to a term deposit?
-- ================================

SELECT 
  y AS subscribed,
  COUNT(*) AS total,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM `bank-marketing-489909.bank_marketing.raw_bank_data`
GROUP BY y
ORDER BY y;
