insert into table consumer_complaints_partition partition(t_year,t_month,t_day) select date_received,product, 
sub_product, 
issue, 
sub_issue, 
company, 
state, 
zip, 
submitted_via, 
date_sent_to_company, 
timely_response, 
consumer_disputed, 
compaint_id,
month(from_unixtime(unix_timestamp(date_received,'mm/dd/yyyy'))) as t_month,
day(from_unixtime(unix_timestamp(date_received,'mm/dd/yyyy'))) as t_day,
year(from_unixtime(unix_timestamp(date_received,'mm/dd/yyyy'))) as t_year
from consumer_complaints
where state is not null and zip is not null and zip not like "%XX"
