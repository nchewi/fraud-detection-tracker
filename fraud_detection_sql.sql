SELECT * FROM fraud_detection.fraud_detection_dataset;

-- Identify patterns
SELECT transaction_type,
AVG(transaction_amount) AS avg_amount,
COUNT(*) AS total_transactions,
SUM(is_fraud) AS fraudulent_transactions
FROM fraud_detection_dataset
GROUP BY transaction_type;

-- Query for potential fraud
SELECT *
FROM fraud_detection_dataset
WHERE transaction_amount > 5000
AND card_present = 0
AND is_fraud = 1;

