with rainy 
as (select date
from weather
where events = 'Rain'
GROUP BY 1
),
rain_trips as (
select trip_id,duration,date(start_date) trip_date
from trips
join rainy
on rainy.date = trip_date
order by duration desc
)

select trip_date,max(duration)
from rain_trips
group by 1