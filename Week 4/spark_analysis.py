from pyspark import SparkContext
from pyspark import SQLContext
from pyspark.sql.functions import UserDefinedFunction
from pyspark.sql.functions import *
from pyspark.sql.types import StringType

sc = SparkContext()
sqlContext = SQLContext(sc)
df1 = sqlContext.read.csv("/user/admin/week4-hw/Budget_-_2017_Budget_Recommendations_-_Positions_and_Salaries.csv")
#df1.write.format("csv").save("/user/ubuntu/sparkingest/raw/Budget_-_2017_Budget_Recommendations_-_Positions_and_Salaries.csv")
df2 = sqlContext.read.csv("/user/ubuntu/sparkingest/raw/Budget_-_2017_Budget_Recommendations_-_Positions_and_Salaries.csv")
df2.registerTempTable("Budget")
df3=sqlContext.sql('select * from Budget where _c0 <> "FUND TYPE"')
# Create an user defined function to replace ',' for '.'
#udf = UserDefinedFunction(lambda x: x.replace("$",""), StringType())
udf = UserDefinedFunction(lambda x: x.replace("$",""), StringType())

df4 = df3.withColumn("_c20", udf(col("_c20")))
df5 = df4.withColumn("_c21", udf(col("_c21")))
df5.write.format("orc").save("/user/ubuntu/sparkingest/stage/Budget_-_2017_Budget_Recommendations_-_Positions_and_Salaries.orc")
