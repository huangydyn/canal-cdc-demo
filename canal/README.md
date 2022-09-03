1. 在mysql增加canal用户
```
CREATE USER canal IDENTIFIED BY 'canal';  
GRANT SELECT, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'canal'@'%';
-- GRANT ALL PRIVILEGES ON *.* TO 'canal'@'%' ;
FLUSH PRIVILEGES;
```
2. 启动kafka，新建topic `canal_mysql`
3. 启动canal，修改run.sh中mysql地址与kafka地址
```
sh start.sh
```
4. 查询kafka topic下消息
```
/opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic canal_mysql --from-beginning
```
5. 查看canal日志，在容器的canal-server/log下，`tail -f canal-server/logs/example/example.log`
