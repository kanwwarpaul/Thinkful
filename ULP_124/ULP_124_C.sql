select start_station,dockcount,count(*)
from trips
join stations
on stations.name=trips.start_station
group by 1, 2
order by 2 desc