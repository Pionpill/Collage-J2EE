-- 若之前创建过同名数据库，先删除
CREATE DATABASE J2EE;

USE J2EE;

-- 用户表
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


-- 书类型表
DROP TABLE IF EXISTS category;
CREATE TABLE category (
  id int(11) NOT NULL,  -- 1. 计算机基础  2. 前端开发  3.后端开发  4.人工智能  5. 游戏开发  6. 大数据
  name varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

-- 书表
DROP TABLE IF EXISTS book;
CREATE TABLE book (
    id int(11) NOT NULL AUTO_INCREMENT,
    cover varchar(255) DEFAULT '',  -- 封面，图床链接
    title varchar(255) NOT NULL DEFAULT '', -- 书名
    author varchar(255) DEFAULT '', -- 作者
    date varchar(20) DEFAULT '', -- 出版时间
    press varchar(255) DEFAULT '', -- 出版社
    abs varchar(512) DEFAULT NULL, -- 简介
    cid int(11) DEFAULT NULL,  -- 图书分类，外键，数值见 categoty 表
    PRIMARY KEY (id),
    KEY fk_book_category_on_cid (cid),
    CONSTRAINT fk_book_category_on_cid FOREIGN KEY (cid) REFERENCES category (id) ON DELETE SET NULL ON UPDATE CASCADE
);

-- 名言表
DROP TABLE IF EXISTS saying;
CREATE TABLE saying(
    id int(11) NOT NULL AUTO_INCREMENT,
    book varchar(50) DEFAULT '',
    saying varchar(255) NOT NULL,
    author varchar(50) DEFAULT '',
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS article;
CREATE TABLE article (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    content_html LONGTEXT,
    content_md LONGTEXT,
    abstract VARCHAR(255),
    date DATETIME
)