SELECT status, COUNT(status) FROM (
SELECT SUM(amount),
CASE
 WHEN SUM(amount)>0 THEN 'net depositors'
 WHEN SUM(amount)<0 THEN 'net withdrawer'
END AS status
FROM agent_transactions
WHERE when_created > NOW() - INTERVAL '7days'
GROUP BY u_id
ORDER BY u_id ASC
)
AS net
GROUP BY status
;