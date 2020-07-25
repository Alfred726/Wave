select extract(year from when_created) as yr, extract(month from when_created) as mon,
       count(atx_id)
from agent_transactions
where when_created between '01-01-2018' and '31-12-2018'
group by extract(year from when_created), extract(month from when_created)
order by yr, mon;