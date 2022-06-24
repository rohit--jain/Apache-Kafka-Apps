cd \
cd kafka
echo Creating Kafka Subscription Topic
set /p topicName = Please enter a topic name:
.\bin\windows\kafka-topics.bat --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic %topicName%
pause
echo Listing all Topics
.\bin\windows\kafka-topics.bat --list --bootstrap-server localhost:9092
pause
echo 
.\bin\windows\kafka-console-producer.bat --broker-list localhost:9092 --topic %topicName%
pause