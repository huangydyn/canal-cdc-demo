开启binlog过程
1. 启动mysql  `./start.sh`
2. 建表
```
CREATE TABLE test_table(
    id int not null primary key AUTO_INCREMENT,
    name char(20)
);

INSERT INTO `test_table` (`name`) VALUES ('name01');
```
3. 查看binlog开启情况`show variables like '%log_bin%';`，binlog位于data目录下文件名以`mysql-bin`起始
4. 查询mysql binlog情况
```
# 查看配置
SHOW  GLOBAL VARIABLES LIKE '%log%';

# 查看binlog位置
show master status;

# 查询binlog
show binlog events in 'mysql-bin.000001';
```
