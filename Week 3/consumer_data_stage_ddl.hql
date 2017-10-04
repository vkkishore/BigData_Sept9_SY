create external table consumer_complaints_partition
( date_received STRING,
product STRING,
sub_product STRING,
issue STRING,
sub_issue STRING,
company STRING,
state STRING,
zip_code STRING,
submitted_via STRING,
date_sent_to_company STRING,
timely_response STRING,
consumer_disputed STRING,
compaint_id STRING )
PARTITIONED BY (
t_year int,
t_month int,
t_day int)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS ORC
LOCATION '/data/stage/consumer_data_stage';
