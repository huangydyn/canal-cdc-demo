sh run.sh -e canal.auto.scan=false \
		  -e canal.instance.master.address=10.72.18.18:3306 \
		  -e canal.instance.dbUsername=root  \
		  -e canal.instance.dbPassword=123456  \
		  -e canal.instance.connectionCharset=UTF-8 \
		  -e canal.instance.tsdb.enable=true \
		  -e canal.instance.gtidon=false  \
		  -e canal.serverMode=kafka  \
		  -e kafka.bootstrap.servers=10.72.18.18:9092 \
		  -e kafka.batch.size=50 \
		  -e canal.mq.topic=canal_mysql \
		  -e canal.mq.partition=0

