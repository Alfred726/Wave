SELECT agent_transactions.atx_id AS transaction_volume,
agents.agent_id, agents.city,
agents.country
FROM agents
INNER JOIN agent_transactions ON agents.agent_id=agent_transactions.agent_id;