SELECT transfers.send_amount_currency AS transaction_volume,
transfers.kind, wallets.ledger_location
FROM wallets
INNER JOIN transfers ON wallets.when_created=transfers.when_created;
ALTER TABLE transfers ADD COLUMN transaction_count int,
ADD COLUMN unique_sender_number int;