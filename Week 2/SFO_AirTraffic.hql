hive> CREATE EXTERNAL TABLE IF NOT EXISTS airline
    > (
    > Activity_Period     STRING,
    > Operating_Airline   STRING,
    > Operating_Airline_IATA_Code   STRING,
    > Published_Airline   STRING,
    > Published_Airline_IATA_Code   STRING,
    > GEO_Summary   STRING,
    > GEO_Region   STRING,
    > Activity_Type_Code   STRING,
    > Price_Category_Code   STRING,
    > TERMINAL   STRING,
    > Boarding_Area  STRING,
    > Passenger_Count   INT
    > )
    > ROW FORMAT DELIMITED
    > FIELDS TERMINATED BY ","
    > LINES TERMINATED BY '\n' STORED AS TEXTFILE
    > LOCATION '/user/ubuntu/airline'
    > ;
OK
Time taken: 1.739 seconds
