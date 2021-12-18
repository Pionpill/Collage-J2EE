-- 若之前创建过同名数据库，先删除

CREATE DATABASE J2EE;

USE J2EE;

CREATE TABLE account (
    ID char(12) NOT NULL PRIMARY KEY,   -- 12 位对应学号
    realName varchar(20),
    userName varchar(20) NOT NULL,
    passWord varchar(20) NOT NULL,
    sexual varchar(5),
    permission INT NOT NULL,    -- 0:超级权限 1: 管理员 2: 普通
    email varchar(25),
    academy varchar(20),
    major varchar(20)
);
