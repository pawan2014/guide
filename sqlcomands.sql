select count(1)
from events
where time between '2018-01-01' and '2018-01-31'



Find rows created within the last week:
select count(1)
from events
where time > now() - interval '1 week'; -- or '1 week'::interval, as you like


Find rows created between one and two weeks ago:


select count(1)
from events
where time between (now() - '1 week'::interval) and (now() - '2 weeks'::interval);

https://popsql.com/learn-sql/postgresql/how-to-query-date-and-time-in-postgresql
