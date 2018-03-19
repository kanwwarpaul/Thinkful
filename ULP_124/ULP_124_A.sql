with rainy 
as (
select date
from weather
where events = 'Rain'
)

select trip_id, duration,DATE(start_date) trip_date
from trips
join rainy
on rainy.date = trip_date
order by duration DESC
limit 3