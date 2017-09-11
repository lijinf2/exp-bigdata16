inputPath="hdfs://master:9000/terasort/terasort-18g"
outputPath="hdfs://master:9000/terasort/flink-out"

hadoop fs -rm -r $outputPath
$FLINK_HOME/bin/flink run \
-c terasort.TeraSort \
../target/flink-experiment-0.9.1.jar \
$inputPath \
$outputPath 
