-- 若之前创建过同名数据库，先删除
CREATE DATABASE J2EE;

USE J2EE;

DROP TABLE IF EXISTS user;
CREATE TABLE user (
    id varchar(12) NOT NULL PRIMARY KEY,   -- 12 位对应学号
    realName varchar(20) DEFAULT NULL,
    userName varchar(20) NOT NULL,
    passWord varchar(20) NOT NULL,
    sexual varchar(5) DEFAULT NULL,
    permission INT DEFAULT 2,    -- 0:超级权限 1: 管理员 2: 普通  (默认注册为普通权限)
    email varchar(25) NOT NULL,
    academy varchar(20) DEFAULT NULL,
    major varchar(20) DEFAULT NULL
);

DROP TABLE IF EXISTS book;
CREATE TABLE book (
    id int(11) NOT NULL AUTO_INCREMENT,
    cover varchar(255) DEFAULT '',
    title varchar(255) NOT NULL DEFAULT '',
    author varchar(255) DEFAULT '',
    date varchar(20) DEFAULT '',
    press varchar(255) DEFAULT '',
    abs varchar(255) DEFAULT NULL,
    cid int(11) DEFAULT NULL,  -- 图书分类，外键
    PRIMARY KEY (id),
    KEY fk_book_category_on_cid (cid),
    CONSTRAINT fk_book_category_on_cid FOREIGN KEY (cid) REFERENCES category (id) ON DELETE SET NULL ON UPDATE CASCADE
);

DROP TABLE IF EXISTS category;
CREATE TABLE category (
  id int(11) NOT NULL,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;