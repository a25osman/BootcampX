SELECT students.name as student,
  avg(assignment_submissions.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS null
GROUP BY students.name
ORDER BY average_assignment_duration DESC;