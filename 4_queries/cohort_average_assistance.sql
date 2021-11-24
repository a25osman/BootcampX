SELECT avg(total_duration) AS average_total_duration
FROM 
  (
  SELECT sum(completed_at-started_at) AS total_duration
  FROM assistance_requests
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohorts.id = students.cohort_id
  GROUP BY cohorts.name
  ) AS foo;