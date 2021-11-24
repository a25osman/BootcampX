SELECT day, count(*) AS total_requests, sum(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;