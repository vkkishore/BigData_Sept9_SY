select date_received, 
product, 
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
compaint_id 
from consumer_complaints
where state is not null and Zip is not null and Zip not like "%XX";
