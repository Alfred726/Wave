select extract(year from when_created) as yr, extract(month from when_created) as mon,
       count(atx_id)
from agent_transactions
group by extract(year from when_created), extract(month from when_created)
order by yr, mon;