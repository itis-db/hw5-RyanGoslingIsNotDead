SELECT
  log_time,
  temperature,
  ROUND(
    AVG(temperature) OVER (
      ORDER BY log_time 
      ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    )::numeric,
    2
  ) AS moving_avg
FROM temperature_logs;
