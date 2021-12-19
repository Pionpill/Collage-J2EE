INSERT INTO user VALUES (201983290194,'吴鼎','吴鼎','673486387','男',0,'673486387@qq.com','计算机与软件学院','软件工程');
INSERT INTO user VALUES (201983290430,'潘孝飞','潘孝飞','1877329715','男',0,'1877329715@qq.com','计算机与软件学院','软件工程');
INSERT INTO user VALUES (201983290013,'汤硕','汤硕','1240104681','男',0,'1240104681@qq.com','计算机与软件学院','软件工程');
INSERT INTO user VALUES (000000000000,'超级权限','root','123456','男',0,'','','');
INSERT INTO user VALUES (000000000001,'管理员','admin','123456','男',1,'','','');
INSERT INTO user VALUES (000000000002,'普通用户','user','123456','男',2,'','','');
    

INSERT INTO `category` VALUES ('1', '计算机基础');
INSERT INTO `category` VALUES ('2', '前端开发');
INSERT INTO `category` VALUES ('3', '后端开发');
INSERT INTO `category` VALUES ('4', '人工智能');
INSERT INTO `category` VALUES ('5', '游戏开发');
INSERT INTO `category` VALUES ('6', '大数据');

INSERT INTO book VALUES ('1', 'https://s2.loli.net/2021/12/19/xoCV7HzDg6ItkOK.jpg', 'Python 编程基础', '[美] 埃里克·马瑟斯 [译]袁国忠', '2020-10', '人民邮电出版社', '本书是针对所有层次Python读者而作的Python入门书。全书分两部分：第一部分介绍用Python编程所必须了解的基本概念，包括Matplotlib等强大的Python库和工具，以及列表、字典、if语句、类、文件与异常、代码测试等内容；第二部分将理论付诸实践，讲解如何开发三个项目，包括简单的2D游戏、利用数据生成交互式的信息图以及创建和定制简单的Web应用，并帮助读者解决常见编程问题和困惑。第2版进行了全面修订，简化了Python安装流程，新增了f字符串、get()方法等内容，并且在项目中使用了Plotly库以及新版本的Django和Bootstrap，等等。', '1');
INSERT INTO book VALUES ('2', 'https://s2.loli.net/2021/12/19/ykixSoPZ5pXHvrw.jpg', 'JavaScript百炼成仙', '杨逸飞', '2021-06', '清华大学出版社', '这是一本讲解JavaScript编程语言的技术书籍，只不过，本书采用了一种全新的写作手法。如果你厌倦了厚厚的、如同字典般的编程书籍，不妨尝试一下新的口味！通过本书，你可以领悟到JavaScript的函数七重关秘籍；通过本书，你可以轻松学会使用jQuery操作DOM对象；通过本书，你可以学会目前流行的Vue基础语法；通过本书，你还可以学会最新的ES6常用语法。本书可作为JavaScript初学者入门的趣味读物。', '1');
INSERT INTO book VALUES ('3', 'https://s2.loli.net/2021/12/19/R9hYErVGcJezxp8.jpg', 'C++ Primer中文版（第5版）', '[美] Stanley B. Lippman[美] Josée Lajoie[美] Barbara E. Moo [译]王刚 杨巨峰', '2013-09', '电子工业出版社', '这本久负盛名的C++经典教程，时隔八年之久，终于迎来史无前例的重大升级。除令全球无数程序员从中受益，甚至为之迷醉的——C++大师Stanley B.Lippman的丰富实践经验，C++标准委员会原负责人Josée Lajoie对C++标准的深入理解，以及C++先驱Barbara E.Moo在C++教学方面的真知灼见外，更是基于全新的C++11标准进行了全面而彻底的内容更新。非常难能可贵的是，书中所有示例均全部采用C++11标准改写，这在经典升级版中极其罕见——充分体现了C++语言的重大进展及其全面实践。书中丰富的教学辅助内容、醒目的知识点提示，以及精心组织的编程示范，让这本书在C++领域的权威地位更加不可动摇。无论是初学者入门，或是中高级程序员提升使用，本书均为不容置疑的首选。', '1');
INSERT INTO book VALUES ('4', 'https://s2.loli.net/2021/12/19/GfFSyDLVPzxg6dp.jpg', 'SQL必知必会（第4版）', '[美] Ben Forta [译]钟鸣刘晓霞', '2013-05', '人民邮电出版社', '本书由浅入深地讲解了SQL的基本概念和语法，涉及数据的排序、过滤和分组，以及表、视图、联结、子查询、游标、存储过程和触发器等内容，实例丰富，便于查阅。新版增加了针对ApacheOpen Office Base、MariaDB、SQlite等DBMS的描述，并根据Oracle、SQLServer、MySQL和Postgre SQL更新了相关示例。', '1');