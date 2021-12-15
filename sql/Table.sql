CREATE DATABASE J2EE;

USE J2EE;

CREATE TABLE account (
    ID INT NOT NULL PRIMARY KEY,
    realName varchar(20),
    userName varchar(20) NOT NULL,
    passWord varchar(20) NOT NULL,
    sexual varchar(5),
    permission INT NOT NULL,    -- // 0:超级权限 1: 管理员 2: 普通
    email varchar(25),
    partment varchar(20),
);

CREATE TABLE goods (
    ID INT NOT NULL PRIMARY KEY,
    name VARCHAR(20),
    brand varchar(20),
    productor varchar(20),
    price varchar(10),
    quantity varchar(10) NOT NULL,
    entyTime smalldatetime,
    checker varchar(20),
    checkerID INT,
    buyer varchar(20),
    buyerID INT,
    text varchar(200),
);

CREATE TABLE records (
    ID INT NOT NULL PRIMARY KEY,
    entryTime smalldatatime,
    personnel varchar(20),
    personnelID INT,
    driver varchar(20),
)

INSERT INTO account
VALUES
    (201983290194,'吴鼎', 'pionpill', '673486387', '男', 0, '673486387@qq.com', '董事会'),
    (201983290424,'徐淳', 'Liar', '2486420157', '男', 0, '2486420157@qq.com', '管理部'),
    (201983290430,'潘孝飞', 'zero', '1877329715', '男', 0, '1877329715@qq.com', '管理部'),
    (201983290013,'汤硕', 'Titc', '1240104681', '男', 0, '1240104681@qq.com', '管理部'),
    (201900000001,'蒋沁廷', '韩小陌', '462131867', '男', 1, '462131867@qq.com', '生产部'),
    (201900000002,'周肖桐', 'chaos', '1428147954', '男', 1, '1428147954@qq.com', '生产部'),
    (201900000003,'丁一平', '001', '12345678', '女', 2, '12345678@qq.com', '生产部'),
    (201900000004,'王红', '002', '12345678', '女', 2, '12345678@qq.com', '生产部'),
    (201900000005,'朱江', '003', '12345678', '男', 2, '12345678@qq.com', '生产部'),
    (201900000006,'王燕燕', '004', '12345678', '女', 2, '12345678@qq.com', '生产部'),
    (201900000007,'王波', '005', '12345678', '女', 2, '12345678@qq.com', '生产部'),
    (201900000008,'赵红涛', '006', '12345678', '女', 2, '12345678@qq.com', '生产部'),
    (201900000009,'朱平平', '007', '12345678', '女', 2, '12345678@qq.com', '生产部'),
    (201900000010,'李进', '111', '12345678', '男', 2, '12345678@qq.com', '生产部');

-- INSERT INTO goods VALUES
--     ('001', 'RTX3080Ti', 'NVIDIA', 'NVIDIA', '8999', '10', '2021-06-01', '徐淳', '吴鼎', '空气'),
--     ('002', 'RTX3080', 'NVIDIA', 'NVIDIA', '5499', '10', '2021-05-01', '徐淳', '吴鼎', '空气'),
--     ('003', 'RTX3070Ti', 'NVIDIA', 'NVIDIA', '4299', '10', '2021-05-01', '徐淳', '吴鼎', '空气'),
--     ('004', 'RTX3070', 'NVIDIA', 'NVIDIA', '3899', '10', '2021-05-01', '徐淳', '吴鼎', '空气'),
--     ('005', 'RTX3060Ti', 'NVIDIA', 'NVIDIA', '2999', '10', '2021-05-01', '徐淳', '吴鼎', '空气'),
--     ('006', 'RTX3060', 'NVIDIA', 'NVIDIA', '2499', '10', '2021-05-01', '徐淳', '吴鼎', '空气'),
--     ('007', 'RX6900XT', 'AMD', 'AMD', '7999', '20', '2021-05-01', '潘孝飞', '汤硕', '光追？'),
--     ('008', 'RX6800XT', 'AMD', 'AMD', '5099', '20', '2021-05-01', '潘孝飞', '汤硕', '光追？'),
--     ('009', 'RX6800', 'AMD', 'AMD', '4599', '20', '2021-05-01', '潘孝飞', '汤硕', '光追？'),
--     ('003-1-01', 'TUF-RTX3070Ti', 'NVIDIA', 'ASUS', '4499', '0', '2021-06-11', '徐淳', '吴鼎', '未到货'),
--     ('003-1-02', 'TUF-RTX3070Ti-OC', 'NVIDIA', 'ASUS', '5699', '0', '2021-06-11', '徐淳', '吴鼎', '未到货'),
--     ('003-1-03', '猛禽-RTX3070Ti-OC', 'NVIDIA', 'ASUS', '6499', '0', '2021-06-11', '徐淳', '吴鼎', '未到货'),
--     ('003-2-01', '万图师-RTX3070Ti', 'NVIDIA', 'msi', '4499', '0', '2021-06-11', '徐淳', '吴鼎', '未到货'),
--     ('003-2-02', '魔龙-RTX3070Ti', 'NVIDIA', 'msi', '5499', '0', '2021-06-11', '徐淳', '吴鼎', '未到货'),
--     ('003-2-03', '丢龙-RTX3070Ti', 'NVIDIA', 'msi', '6699', '0', '2021-06-11', '徐淳', '吴鼎', '未到货'),
--     ('003-3-01', '战斧-RTX3070Ti', 'NVIDIA', '凄惨红', '4499', '0', '2021-06-11', '徐淳', '吴鼎', '未到货'),
--     ('003-4-01', '黑将-RTX3070Ti', 'NVIDIA', 'Galaxy', '4499', '0', '2021-06-11', '徐淳', '吴鼎', '未到货'),
--     ('003-4-02', '金属大师-RTX3070Ti', 'NVIDIA', 'Galaxy', '5999', '0', '2021-06-11', '徐淳', '吴鼎', '未到货'),
--     ('003-4-03', '星耀-RTX3070Ti', 'NVIDIA', 'Galaxy', '6599', '0', '2021-06-11', '徐淳', '吴鼎', '未到货'),
--     ('003-5-01', '追风-RTX3070Ti', 'NVIDIA', 'GAINWARD', '4499', '0', '2021-06-11', '徐淳', '吴鼎', '未到货'),
--     ('003-5-02', '炫光-RTX3070Ti', 'NVIDIA', 'GAINWARD', '6999', '0', '2021-06-11', '徐淳', '吴鼎', '未到货');