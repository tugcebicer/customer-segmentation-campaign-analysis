-- ================================
-- 07: IMPACT OF NUMBER OF CONTACTS
-- Does calling more times help or hurt?
-- ================================

SELECT
  CASE
    WHEN campaign = 1 THEN '1 contact'
    WHEN campaign = 2 THEN '2 contacts'
    WHEN campaign = 3 THEN '3 contacts'
    WHEN campaign BETWEEN 4 AND 6 THEN '4-6 contacts'
    ELSE '7+ contacts'
  END AS contact_frequency,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN y = TRUE THEN 1 ELSE 0 END) AS converted,
  ROUND(SUM(CASE WHEN y = TRUE THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM `bank-marketing-489909.bank_marketing.raw_bank_data`
GROUP BY contact_frequency
ORDER BY conversion_rate DESC;
