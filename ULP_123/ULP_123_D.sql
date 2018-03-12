select end_station,AVG(duration) as 'Average Duration'
from trips
group by end_station


