SELECT COUNT(u_id)
FROM transfers
WHERE send_amount_currency IS NOT NULL;