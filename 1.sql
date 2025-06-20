SELECT
    date,
    amount,
    SUM(amount) OVER (ORDER BY date) AS cumulative_sum
FROM transactions
ORDER BY date;
