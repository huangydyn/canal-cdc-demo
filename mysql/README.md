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