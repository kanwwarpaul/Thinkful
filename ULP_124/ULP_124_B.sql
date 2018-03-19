select status.station_id,stations.name,
couont(case when docks_available=0 then 1 end) empty_count
from status
join stations
on stations.station_id = status.station_id
order by empty_count desc