create external table consumer_complaints_partition 
( date_received  STRING,
product STRING, 
sub_product STRING, 
issue STRING, 
sub_issue STRING, 
company STRING,
state STRING, 
zip STRING, 
submitted_via STRING,  
date_sent_to_company STRING,  
timely_response STRING, 
consumer_disputed STRING, 
compaint_id  STRING )
