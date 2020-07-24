SELECT source_wallet_id,
send_amount_currency
FROM transfers
WHERE send_amount_currency>'$10000000';