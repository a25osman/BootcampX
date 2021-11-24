SELECT sum(completed_at - started_at) / count(*)
  AS average_assistance_request_duration
FROM assistance_requests;