select 
	trip_id,
	duration
from 
	trips
where 
	duration > 500
order by
	duration