docker run --platform linux/amd64 -p 3306:3306 --name myMysql -v $(pwd)/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456  -d mysql:5.7 \
  mysqld \
  --datadir=/var/lib/mysql \
  --user=mysql \
  --server-id=1 \
  --binlog-format=ROW  \
  --log-bin=/var/lib/mysql/mysql-bin.log  \
  --character-set-server=utf8mb4 \
  --collation-server=utf8mb4_unicode_ci