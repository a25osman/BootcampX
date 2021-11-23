SELECT cohorts.name, count(assignment_submissions.*) AS total_submissions
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;