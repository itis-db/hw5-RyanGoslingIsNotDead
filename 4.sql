SELECT
  task_id,
  project_id,
  start_date,
  MIN(start_date) OVER (PARTITION BY project_id) AS first_task_start,
  MAX(start_date) OVER (PARTITION BY project_id) AS last_task_start
FROM project_tasks;
