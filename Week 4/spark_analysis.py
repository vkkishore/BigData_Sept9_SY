from pyspark import SparkContext
from pyspark import SQLContext
sc = SparkContext()
sqlContext = SQLContext(sc)
data = sqlContext.read.csv("/user/admin/week4-hw/Budget_-_2017_Budget_Recommendations_-_Positions_and_Salaries.csv")
data.write.format("csv").save("/user/ubuntu/sparkingest/raw/Budget_-_2017_Budget_Recommendations_-_Positions_and_Salaries.csv")
