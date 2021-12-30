INSERT INTO user VALUES (201983290194,'吴鼎','吴鼎','673486387','男',0,'673486387@qq.com','计算机与软件学院','软件工程');
INSERT INTO user VALUES (201983290430,'潘孝飞','潘孝飞','1877329715','男',0,'1877329715@qq.com','计算机与软件学院','软件工程');
INSERT INTO user VALUES (201983290013,'汤硕','汤硕','1240104681','男',0,'1240104681@qq.com','计算机与软件学院','软件工程');
INSERT INTO user VALUES (201900000000,'超级权限','root','123456','男',0,'','','');
INSERT INTO user VALUES (201900000001,'管理员','admin','123456','男',1,'','','');
INSERT INTO user VALUES (201900000002,'普通用户','user','123456','男',2,'','','');
INSERT INTO user VALUES (201983290001,'麦克','Mike','123456','男',2,'123456@twitter.com','国际学院','汉语');
INSERT INTO user VALUES (201983290002,'海伦','Hallen','123456','女',2,'123456@meta.com','国际学院','自动化');
    

INSERT INTO `category` VALUES ('1', '计算机基础');
INSERT INTO `category` VALUES ('2', '前端开发');
INSERT INTO `category` VALUES ('3', '后端开发');
INSERT INTO `category` VALUES ('4', '人工智能');
INSERT INTO `category` VALUES ('5', '游戏开发');
INSERT INTO `category` VALUES ('6', '大数据');

INSERT INTO `saying`(book,saying,author) VALUES('流畅的Python','Python 最好的品质之一是一致性','[巴]Luciano Ramalho');
INSERT INTO `saying`(book,saying,author) VALUES('流畅的Python','致 Marta, 用我全心全意的爱','[巴]Luciano Ramalho');
INSERT INTO `saying`(book,saying,author) VALUES('JavaScript 高级程序设计','我们正迎来 JavaScript 的文艺复兴','[美]马特·弗里斯比');
INSERT INTO `saying`(book,saying,author) VALUES('Java 核心技术','书写 Java 传奇的 Sun 公司曾经堪称"日不落"帝国','[美]凯·S·霍斯特曼');
INSERT INTO `saying`(book,saying,author) VALUES('Python编程从入门到实践','Python是否值得学，已经不再是值得怀疑的问题了','[美] ZoomQuiet');
INSERT INTO `saying`(book,saying,author) VALUES('Code Complete','高质量的代码就是对程序自己最好的注释','[美] Steve McConnell');
INSERT INTO `saying`(book,saying,author) VALUES('The Design and Evolution of C++','在一种编程语言中，即使有再多的好程序被诋毁指责，也要比被说成完美无缺好 — 好的多','[美] Bjarne Stroustrup');
-- INSERT INTO `saying`(book,saying,author) VALUES('The Structure and Interpretation of Computer Programs','程序应该是写给其他人读的，让机器来运行它只是一个附带功能。','[美] Harold Abelson  Gerald Jay Sussman');
INSERT INTO `saying`(book,saying,author) VALUES('The Inmates are Running the Asylum','原型的价值就在于它对你的教育，而不是代码本身。','[美] Alan Cooper');
INSERT INTO `saying`(book,saying,author) VALUES('The Cathedral and the Bazaar','给与足够的眼球，所有的Bugs都很容易发现','[美] Eric S. Raymond');
INSERT INTO `saying`(book,saying,author) VALUES('Perl编程','懒惰：是这样一种品质，它使得你花大力气去避免消耗过多的精力。它敦促你写出节省体力的程序，同时别人也能利用它们。为此你会写出完善的文档，以免别人问你太多问题。','[美] Larry Wall');
INSERT INTO `saying`(book,saying,author) VALUES('Perl编程','急躁：是这样一种愤怒——当你发现计算机懒洋洋地不给出结果。于是你写出更优秀的代码，能尽快真正的解决问题。至少看上去是这样。','[美] Larry Wall');
INSERT INTO `saying`(book,saying,author) VALUES('Perl编程','傲慢：极度的自信，使你有信心写出（或维护）别人挑不出毛病的程序','[美] Larry Wall');
INSERT INTO `saying`(book,saying,author) VALUES('精通Rust（第2版）','Rust是一种采用过去的知识解决将来的问题的技术','[美] Graydon Hoare');
INSERT INTO `saying`(book,saying,author) VALUES('精通Rust（第2版）','高效开发的关键在于不断制造一些新的有趣错误','[美] Tom Love');
INSERT INTO `saying`(book,saying,author) VALUES('精通Rust（第2版）','一切皆有可能','[美] Ian Hickson');
INSERT INTO `saying`(book,saying,author) VALUES('精通Rust（第2版）','对发送的内容保守一点，对收到的内容宽容一点','[美] John Postel');
INSERT INTO `saying`(book,saying,author) VALUES('精通Rust（第2版）','从那时起，当计算机出现任何问题时，我们都说它里面有bug','[美] Grace Hopper');
INSERT INTO `saying`(book,saying,author) VALUES('精通Rust（第2版）','算法必须名副其实','[美] Donald Knuth');
INSERT INTO `saying`(book,saying,author) VALUES('精通Rust（第2版）','不断发展的系统会增加其复杂性，除非采取措施优化它','[美] Meir Lehman');
INSERT INTO `saying`(book,saying,author) VALUES('精通Rust（第2版）','Lisp不是一种语言，它是一种建筑材料','[美] Alan Kay');


INSERT INTO book VALUES ('1', 'https://s2.loli.net/2021/12/19/fciRzV9X4qlyshQ.jpg', 'Web前端开发精品课 HTML与CSS进阶教程', '莫振杰', '2020-10', '人民邮电出版社', '本书内容结合笔者在前后端大量开发中的实战经验，系统化知识，浓缩精华，用通俗易懂的语言直击学习者的痛点。通过本书，能让你从“野生网页设计师”水平提升达到“真正前端工程师”水平。全书分为两大部分：首部分是HTML进阶内容，主要介绍HTML开发技巧和HTML语义化；第二部分是CSS进阶内容，主要介绍CSS开发技巧、代码规范、性能优化、属性本质、重要概念（如包含块、BFC和IFC等）。除了知识讲解，教程还融入了大量的开发案例，更加注重编程思维的培养，并且提供学习者一个流畅的学习思路。','2');
INSERT INTO book VALUES ('2', 'https://s2.loli.net/2021/12/19/sKThJ94jRiHObAz.jpg', '前端开发核心知识进阶：从夯实基础到突破瓶颈', '侯策', '2020-10', '电子工业出版社', '《前端开发核心知识进阶：从夯实基础到突破瓶颈》共分8部分，涵盖33个主题，内容涉及JavaScript基础强化、JavaScript语言进阶、不可忽视的HTML和CSS、前端框架、前端工程化、性能优化、编程思维和算法、网络知识等，聚焦前端开发基础知识和进阶技能，关注前端工程化和体系化，结构清晰，循序渐进，深入浅出。在重构基础知识方面，本书将标准规范和实践代码相结合。在培养进阶技能方面，本书深度剖析了技术背后的原理和哲学。书中列举的项目设计案例涵盖了许多经典面试题目，不仅能帮助初级开发者夯实基础，还能为中、高级开发者突破瓶颈提供帮助和启发。', '2');
INSERT INTO book VALUES ('3', 'https://s2.loli.net/2021/12/19/AChrxNFqzYR594X.jpg', '疯狂前端开发讲义', '李刚', '2017-10', '电子工业出版社', '本书基于《疯狂Ajax 讲义（第3 版）》部分升级而来，全书升级了HTML 5.1 支持的XMLHttpRequest，jQuery 升级到3.1。本书的重点是新加入的两个目前十分主流的前端框架：AngularJS 和Bootstrap。本书详细、全面地介绍了AngularJS 和Bootstrap 的知识，由于这两个框架是本书的重点，因此本书花了近400 多页来介绍它们的功能和用法，这部分内容独立出来完全可以作为AngularJS 和Bootstrap 的学习手册。此外，本书还精心配备了PPT 电子课件，便于老师课堂教学和学生把握知识要点。', '2');
INSERT INTO book VALUES ('4', 'https://s2.loli.net/2021/12/19/9RN6gUP4vCS3TW2.jpg', '前端开发必知必会：从工程核心到前沿实战', '侯跃伟', '2021-9', '电子工业出版社', '《前端开发必知必会：从工程核心到前沿实战》共5 章。第1、2 章系统介绍前端工程化的核心知识，包括Babel 7、ES 规范、Deno 开发入门、脚手架、自动化部署、Nginx、Jest 测试、Webpack 5、Vite、Rollup、Parcel 等。第3、4 章着重介绍前端架构的核心思想，包括前端核心模块的6 种常用设计模式、V8 引擎、宏任务与微任务、异步加载规范和函数式编程等。第5 章通过实战详细介绍如何从0 开发微前端和WebAssembly，帮助前端人员开拓视野。前端开发必知必会：从工程核心到前沿实战》系统介绍了前端开发的工程核心及前沿实战。相信无论是初级开发人员，还是具有丰富经验的中高级开发人员都能从本书中找到需要的内容，都能从阅读本书中有所收获。', '2');
INSERT INTO book VALUES ('5', 'https://s2.loli.net/2021/12/19/f1FanxCJo6wkqE8.jpg', 'Web前端开发精品课HTMLCSSJavaScript基础教程', '莫振杰', '2020-10', '人民邮电出版社', '本书紧密围绕网页设计师在制作网页过程中的实际需要和应该掌握的技术，全面介绍了如何使用HTML、CSS、JavaScrip 以及前端框架进行网站建设和网页设计。从“内功”到“招式”，全书贯穿了不同行业的多种实例，各实例均经过精心设计，操作步骤清晰简明，技术分析深入浅出，能够帮助读者沉浸在真实的开发状态中。这样，无论以后是面对公司的面试，还是真实的工作需求，读者都能够跨过“所学”与“所用”之间的鸿沟。', '2');
INSERT INTO book VALUES ('6', 'https://s2.loli.net/2021/12/19/Mq1poQatPCATwHR.jpg', 'JavaScript & jQuery交互式Web前端开发', '[美] 达克特', '2015-6', '清华大学出版社', '欢迎选择一种更高效的学习JavaScript和jQuery的方式。你是一名JavaScript新手?或是您曾经向自己的Web页面上添加过一些脚本，但想以一种更好的方式来实现它们？本书非常适合您。本书不仅向您展示如何阅读和编写JavaScript代码，同时还会以一种简单且视觉化的方式，教您有关计算机编程的基础知识。阅读本书之前，您只需要对HTML和CSS有一些了解即可。通过将编程理论与用来演示JavaScript和jQuery如何被应用于流行站点之上的示例相结合，本书将教会您如何让网站更具交互性、吸引性、可用性。很快，您就能够像一名程序员那样去思考和编写代码了。', '2');
INSERT INTO book VALUES ('7', 'https://s2.loli.net/2021/12/19/yNEd6z9BrMiUZ17.jpg', 'Vue.js前端开发', '陈陆扬', '2017-2-', '人民邮电出版社', '本书分为10章，包括简介、基础特性、指令、过滤器、过渡、组件、状态管理、常用插件、工程实例和Weex打包。本书从简单的单个实例和基础语法，到工程实例，将系统地讲述Vue.js在项目中的适用场景和具体操作。本书的特点在于案例详实，使读者体会到框架的优点和便捷之处，提升开发效率，最后能将Vue.js运用到实际项目中，避免纸上谈兵的尴尬。', '2');
INSERT INTO book VALUES ('8', 'https://s2.loli.net/2021/12/19/f4Yk8QgDPucOmMS.jpg', 'Web前端开发', '孙俏', '2021-8', '人民邮电出版社', '本书面向Web前端开发的初学者，包含HTML、CSS和JavaScript等内容，为前端开发奠定基础。本书既可作为高等学校各专业的正式教材，也适合读者自学。书中案例丰富，很多技术点配有便于理解的示意图。对于互动性强的案例本书提供网页资源；重点和难点则配有视频等资源，均可扫描二维码获得。本书由校企联合打造，百度前端技术学院负责人祖明参与编写。内容注重实用性和操作性，逐步引领读者解决前端复杂工程问题。 本书是中国大学慕课“Web前端开发”MOOC课程的配套用书，该课程已获北京市精品优质课程奖，课程中提供了更多扩展知识点和资源。此外，可以登录高等教育出版社官网获得源代码、幻灯片等更多学习资源和技术支持。', '2');
INSERT INTO book VALUES ('9', 'https://s2.loli.net/2021/12/19/hneN1PukDg467qM.jpg', 'HTML5+CSS3Web前端开发/Web前端开发系列丛书', '唐四薪', '2018-05', '清华大学', '本书面向Web前端开发的初学者，包含HTML、CSS和JavaScript等内容，为前端开发奠定基础。本书既可作为高等学校各专业的正式教材，也适合读者自学。书中案例丰富，很多技术点配有便于理解的示意图。对于互动性强的案例本书提供网页资源；重点和难点则配有视频等资源，均可扫描二维码获得。本书由校企联合打造，百度前端技术学院负责人祖明参与编写。内容注重实用性和操作性，逐步引领读者解决前端复杂工程问题。 本书是中国大学慕课“Web前端开发”MOOC课程的配套用书，该课程已获北京市精品优质课程奖，课程中提供了更多扩展知识点和资源。此外，可以登录高等教育出版社官网获得源代码、幻灯片等更多学习资源和技术支持。', '2');
INSERT INTO book VALUES ('10', 'https://s2.loli.net/2021/12/19/dbN148lmhzoIGVe.jpg', 'React+Redux前端开发实战', '徐顺发', '2019-7', '机械工业出版社', '随着智能手机和移动互联网的普及，前端技术栈从jQuery到Backbone和Knockout，再到Angular、React和Vue，各大框架此起彼伏。如今，前端开发越来越庞大的应用规模和越来越复杂的交互效果远不是早期前端开发者们所能想象的。基于原生JavaScript来构建这些应用显得异常复杂且难以维护。但拥有创造力的开发者们并没有停下脚步，而是不断地寻求新的解决方案。其中，React逐渐成为各种方案中最耀眼的一门技术，它是众多开发者的智慧结晶。React诞生于Facebook，开源之后立即在前端领域掀起了一股巨浪，得到了众多开发者的青睐。随后，React社区也是蓬勃发展，出现了大量优秀的前端开发工具，为开发者提供了一种不一样的开发体验，也为大家指明了一条充满想象的道路。', '2');
INSERT INTO book VALUES ('11', 'https://s2.loli.net/2021/12/19/Phe2S7ZLDOE6IiF.jpg', 'JavaScript与jQuery网页前端开发与设计/Web前端开发技术丛书', '周文洁', '2019-10', '清华大学', '本书从零开始讲解JavaScript与jQuery技术，全书以项目为驱动，循序渐进、案例丰富。全书共分13章，主要内容包括4个部分。第一部分是概述篇，即第1章，内容主要有JavaScript与jQuery的简介、发展史和特点，以及开发工具的选择。第二部分是JavaScript技术篇，包括第2～5章的内容。这4章循序渐进地介绍了JavaScript入门、JavaScript数据类型与运算符、JavaScript语句与函数、JavaScript DOM和BOM。第三部分是jQuery技术篇，包括第6～12章的内容。', '2');
INSERT INTO book VALUES ('12', 'https://s2.loli.net/2021/12/19/akgip5jcxwoOTu9.jpg', 'HTML5+CSS3+JavaScript前端开发基础', '王刚', '2020-10', '清华大学出版社', '本书面向Web前端开发的初学者，包含HTML、CSS和JavaScript等内容，为前端开发奠定基础。本书既可作为高等学校各专业的正式教材，也适合读者自学。书中案例丰富，很多技术点配有便于理解的示意图。对于互动性强的案例本书提供网页资源；重点和难点则配有视频等资源，均可扫描二维码获得。本书由校企联合打造，百度前端技术学院负责人祖明参与编写。内容注重实用性和操作性，逐步引领读者解决前端复杂工程问题。 本书是中国大学慕课“Web前端开发”MOOC课程的配套用书，该课程已获北京市精品优质课程奖，课程中提供了更多扩展知识点和资源。此外，可以登录高等教育出版社官网获得源代码、幻灯片等更多学习资源和技术支持。', '2');
INSERT INTO book VALUES ('13', 'https://s2.loli.net/2021/12/19/GxiPvfZezMpQ2BF.jpg', 'Web前端开发简明教程', '邓春晖 / 秦映波', '2017-12', '人民邮电出版社', '本书较为全面地介绍了HTML、CSS、JavaScript、jQuery的相关知识，读者可以系统地学习编写HTML代码、利用CSS设置网页的样式、利用JavaScript和jQuery为网页添加动态效果及修改网页与样式等内容，书中每一章有详细的案例展示，方便读者更好地理解知识点。本书共15章，第1～6章介绍了HTML相关内容，主要包括在网页中插入文字与段落、表格、表单、列表及多媒体等；第7～11章详细阐述了CSS的相关知识，重点介绍了盒子模型与定位，利用盒子模型进行网页布局，用开发者工具查看HTML元素的CSS属性等；第12～13章讲解了JavaScript基础与应用，利用JavaScript在网页上制作动态效果（如滚动图片），以及对表单数据进行验证等；第14章描述了jQuery基础与应用，用jQuery为表单、表格设置样式；第15章为综合案例，综合利用前面章节所讲知识来制作网页。', '2');
INSERT INTO book VALUES ('14', 'https://s2.loli.net/2021/12/19/BtNhUsa4ePdC8i7.jpg', 'Vue.js 前端开发技术与实践', '李新荣', '2021-2', '西安电子科技大学出版社', '本书详细讲解了Vue.js开发技术及Vue的相关生态系统。全书共12章，内容包括Visual Studio Code编辑器、Vue项目开发中常用的ES6语法、Vue入门、Vue指令、Vue实例对象、Vue组件、Vue过渡与动画、Vue路由、Vue Cli脚手架、Vuex状态管理、前后台数据交互技术、基于Vue+Vant移动端的项目开发实践。本书语言通俗易懂，案例丰富实用，可作为高等院校计算机相关专业Web前端开发课程的教材，也可作为Web前端开发从业人员的参考书。', '2');
INSERT INTO book VALUES ('15', 'https://s2.loli.net/2021/12/19/7DvkmFNMPCExg8H.jpg', '前端架构设计', '潘泰燊 / 张　鹏 / 许金泉', ' 2017-4', '人民邮电出版社', '本书展示了一名成熟的前端架构师对前端开发全面而深刻的理解。作者结合自己在Red Hat公司的项目实战经历，探讨了前端架构原则和前端架构的核心内容，包括工作流程、测试流程和文档记录，以及作为前端架构师所要承担的具体开发工作，包括HTML、JavaScript和CSS等。', '2');
INSERT INTO book VALUES ('16', 'https://s2.loli.net/2021/12/19/t392BzcIOxCey6E.jpg', 'JS全书：JavaScript Web前端开发指南', '高鹏', '2020-5', '清华大学出版社', '本书从的基础语法开始讲解，循序渐进地介绍了的推荐知识和不错技巧，并通过大量实例带领读者掌握Web前端开发中常用的知识及开发技巧。本书着重于为编程开发人员及爱好者提供简单易懂、清晰明了的学习路径。本书结构清晰，内容编排由浅入深，能够帮助读者拥有Web开发中不可或缺的能力和技巧。本书既适合语言初学者，也适合语言进阶者。', '2');
INSERT INTO book VALUES ('17', 'https://s2.loli.net/2021/12/19/YXC7b3cUlAK6vDk.jpg', '案例学WEB前端开发（全彩版）', '明日科技', '2018-7', '吉林大学出版社', '《案例学Web 前端开发》从初学者角度出发，通过44 个实用的Web 前端应用，循序渐进地讲解一个完整网站的功能实现及开发过程。全书共分12 章，包括Web 网站初体验、搭建网站雏形、用CSS3 装饰你的网站、HTML5 多媒体实现网站“家庭影院”、通过HTML5 表单与用户交互、列表与表格——让网站更规整、CSS3 布局与动画、JavaScript 基础应用、JavaScript 事件处理、手机响应式开发、综合案例——明日学院官网等。书中所有知识点都围绕着案例进行，涉及的代码给出了详细的解释，可以使初学者能够轻松地领会代码的功能，快速学习Web 前端知识。', '2');
INSERT INTO book VALUES ('18', 'https://s2.loli.net/2021/12/19/prO1aDUtV6XcEzW.jpg', 'Web前端开发精品课 JavaScript基础教程', '莫振杰', '2017-8', '人民邮电出版社', '全书共分为2大部分，第1部分是JavaScript基础知识，主要学习JavaScript基础概念如变量、运算符、表达式等。第二部分是JavaScript进阶知识，主要学习DOM、事件操作以及各种开发技术。除了知识讲解，教程还融入了大量的开发技巧，并且更加注重编程思维的培养，使得学习者能有顺畅的学习思路，这一点是极其重要的。', '2');
INSERT INTO book VALUES ('19', 'https://s2.loli.net/2021/12/19/Mo8x3PIsKjSLg5e.jpg', 'React全家桶：前端开发与实例详解', '[美]安东尼·阿科马佐（Anthony Accomazzo） / [美]纳特·默里（Nate Murray） / [美]阿里·勒纳（Ari Lerner） / [美]克莱•奥尔索普（Clay Allsopp） / [美]大卫•古特曼（David Guttman） / [美]泰勒•麦金尼斯（Tyler McGinnis）', '2020-12', '人民邮电出版社', '使用React能让前端开发人员用更少、更安全的代码来构建更可靠、更强大的应用程序。本书分为两部分，全面介绍了React的相关主题。第一部分通过例子循序渐进地讲解基础知识，包括创建一个投票应用程序、编写组件、处理用户交互、管理富表单，以及与服务器交互，此外还探索了Create React App的工作原理，编写自动化单元测试，以及使用客户端路由构建多页面应用程序。第二部分探讨在大型应用程序产品中使用的更高级的概念——数据的架构、传输和管理的策略，讲解了Redux、GraphQL、Relay，以及如何使用React Native编写原生、跨平台的移动应用程序。书中每一章都配有示例代码，有助于读者巩固所学。', '2');
INSERT INTO book VALUES ('20', 'https://s2.loli.net/2021/12/19/ps1SR764PK39qcA.jpg', 'Web前端开发技术实验与实践-HTML.CSS.JavaScript', '储久良', '2017-8', '人民邮电出版社', '本书较为全面地介绍了HTML、CSS、JavaScript、jQuery的相关知识，读者可以系统地学习编写HTML代码、利用CSS设置网页的样式、利用JavaScript和jQuery为网页添加动态效果及修改网页与样式等内容，书中每一章有详细的案例展示，方便读者更好地理解知识点。本书共15章，第1～6章介绍了HTML相关内容，主要包括在网页中插入文字与段落、表格、表单、列表及多媒体等；第7～11章详细阐述了CSS的相关知识，重点介绍了盒子模型与定位，利用盒子模型进行网页布局，用开发者工具查看HTML元素的CSS属性等；第12～13章讲解了JavaScript基础与应用，利用JavaScript在网页上制作动态效果（如滚动图片），以及对表单数据进行验证等；第14章描述了jQuery基础与应用，用jQuery为表单、表格设置样式；第15章为综合案例，综合利用前面章节所讲知识来制作网页。', '2');

INSERT INTO book VALUES ('101', 'https://s2.loli.net/2021/12/19/PN4y1tjHvKbFAW3.jpg', '架构探险――从零开始写Java Web框架', '黄勇', '2015-8', '电子工业出版社', '本书首先从一个简单的 Web 应用开始，让读者学会如何使用 IDEA、Maven、Git 等开发工具搭建 Java Web 应用；接着通过一个简单的应用场景，为该 Web 应用添加若干业务功能，从需求分析与系统设计开始，带领读者动手完成该 Web 应用，完善相关细节，并对已有代码进行优化；然后基于传统 Servlet 框架搭建一款轻量级 Java Web 框架，一切都是从零开始，逐个实现类加载器、Bean 容器、IoC 框架、MVC 框架，所涉及的代码也是整个框架的核心基础。为了使框架具备 AOP 特性，从代理技术讲到 AOP 技术，从 ThreadLocal 技术讲到事务控制技术。最后对框架进行优化与扩展，通过对现有框架的优化，使其可以提供更加完备的功能，并以扩展 Web 服务插件与安全控制插件为例，教会读者如何设计一款可扩展的Web应用框架。','3');
INSERT INTO book VALUES ('102', 'https://s2.loli.net/2021/12/19/i1dIMbajTz32CXw.jpg', 'Node.js开发指南', ' 郭家寶（BYVoid）', ' 2012-7', '人民邮电出版社', 'Node.js是一种方兴未艾的新技术，诞生于2009年。经过两年的快速变化，Node.js生态圈已经逐渐走向稳定。Node.js采用了以往类似语言和框架中非常罕见的技术，总结为关键词就是：非阻塞式控制流、异步I/O、单线程消息循环。不少开发者在入门时总要经历一个痛苦的思维转变过程，给学习带来巨大的障碍。 而本书的目的就是帮助读者扫清这些障碍，学会使用Node.js进行Web后端开发，同时掌握事件驱动的异步式编程风格，以便进一步利用Node.js的高级特性。','3');
INSERT INTO book VALUES ('103', 'https://s2.loli.net/2021/12/19/jbT4ceXD7VyR3Cx.jpg', 'Node.js实战', ': [美]托马斯·亨特二世 ', '2021-11', '机械工业出版社', '从初创公司到世界500强，大多数公司都喜欢使用Node.js来构建高性能的后端服务。工程师对Node.js有很高的评价，因为它有容易理解的API和大家熟悉的语法。在全球大的包存储库的强力支持下，Node.js的生态必将更加繁荣。在本书中，作者证明了Node.js在构建可观察、可扩展且有弹性的服务方面与传统的企业平台一样适用。中高级Node.js开发人员会发现，他们可以将应用程序代码和现代服务的各个层面结合起来。','3');
INSERT INTO book VALUES ('104', 'https://s2.loli.net/2021/12/19/E7sqztHDZYQw1TM.jpg', '人工神经网络理论、设计及应用', '韩力群', ' 2007-7', '化学工业', '《人工神经网络理论.设计及应用》系统地论述了人工神经网络的主要理论和设计基础，给出了大量应用实例，旨在使读者了解神经网络的发展背景和研究对象，理解和熟悉其基本原理和主要应用，掌握其结构模型和基本设计方法，为以后的深入研究和应用开发打下基础。作者连续11年为电气信息类专业研究生及本科高年级学生开设“人工神经网络理论与应用”课程，2002年在多次修改讲义和多项科研成果基础上形成本书的第一版。本书第二版对原书约1/3的内容进行了更新，对保留内容进行了修改。取材注意内容的典型性和先进性，编排注意内容的逻辑性，阐述注重物理概念的清晰性，举例与思考练习的安排注意了内容的实践性，常用神经网络及算法的介绍着重于实用性。','3');
INSERT INTO book VALUES ('105', 'https://s2.loli.net/2021/12/19/qzVNA4oE2hZmJn6.jpg', 'Node.js入门经典', '傅强 / 陈宗斌', '2013-4', '人民邮电出版社', 'George Ornbo是英国的一位JavaScript和Ruby开发人员。他开发Web应用程序已有8年时间，一开始是以自由职业者的身份工作，最近则为伦敦的pebble {code}工作。他的博客地址是http://shapeshed.com，在网络中大多数常见的地方，他都以@shapeshed出现。','3');
INSERT INTO book VALUES ('106', 'https://s2.loli.net/2021/12/19/OzqPT8hRQojxWst.jpg', 'Django企业开发实战', '胡阳', '2019-2', '人民邮电出版社', '本书以博客系统贯穿始末，介绍了Django的方方面面。书中共分四部分，第一部分介绍了正式进入编码之前的准备工作，内容包括需求分析、基础知识和Demo系统的开发；第二部分开始实现需求，内容涉及环境配置、编码规范以及项目结构规划，编写了Model层、admin页面、Form代码和View逻辑，引入了Bootstrap框架；第三部分重点介绍xadmin、django-autocomple-light和django-rest-framework等第三方插件；最后一部分介绍调试、优化、自动化部署以及压力测试等内容。','3');
INSERT INTO book VALUES ('107', 'https://s2.loli.net/2021/12/19/iJ5KXkqzaF7ZSvx.jpg', '细说PHP', '高洛峰', '2012-10', '电子工业出版社', '《细说PHP(第2版)》共六个部分，分为30个章节，每一章都是PHP独立知识点的总结。内容涵盖了动态网站开发的前台技术（HTML+CSS）、PHP编程语言的语法、PHP的常用功能模块和实用技巧、MySQL数据库的设计与应用、PHP面向对象的程序设计思想、数据库抽象层PDO、Smarty模板技术、Web开发的设计模式、自定义框架BroPHP、Web项目开发整个流程等目前PHP开发中最主流的技术。每一章中都有大量的实用示例，以及详尽的注释，加速读者的理解和学习，也为每章的技术点设置了大量的自测试题。最后以一个比较完整的、采用面向对象思想，以及通过MVC模式设计，并结合Smarty模板，基于BroPHP框架的CMS系统为案例，详细介绍了Web系统开发从设计到部署的各个细节，便于更好地进行开发实践。','3');
INSERT INTO book VALUES ('108', 'https://s2.loli.net/2021/12/19/kIewgxaDtBOdFH2.jpg', 'php与mysql高性能应用开发', ' 杜江', '2016-9', '机械工业出版社', '本书以“PHP与MySQL高性能应用开发”为主题，选取了其中最为核心的最佳实践进行讲解，是一个有十余年PHP开发经验的老程序员的经验总结。首先从语言层面总结了PHP编程中的一些疑点和难点，然后重点讲解了PHP的缓冲、网络编程、缓存技术、命令行、调试、测试、用户验证策略、代码重构等知识；然后重点讲解了MySQL的驱动、存储引擎、性能优化、memcached、Sphinx全文搜索引擎等重要主题。','3');
INSERT INTO book VALUES ('109', 'https://s2.loli.net/2021/12/19/Ya78dfQUSo6nt3F.jpg', 'React+Node.js开发实战', '袁林 / 尹皓 / 陈宁', ' 2021-1', ' 机械工业出版社', '本书站在全栈开发的角度，通过实战形式，带领读者由点到面，由浅入深，从前端到后端逐步学习React.js+Node.js全栈开发的全貌。本书分为4篇。第1篇React.js和Node.js基础，涵盖两种技术的环境搭建及IDE用法，以及相关的语法基础；第2篇打包部署和项目开发实战，涵盖各种打包工具和部署工具，以及详细的步骤；第3篇React.js和Node.js进阶，涵盖两种技术的语法原理；第4篇项目优化和服务端渲染，涵盖缓存、压缩、懒加载、按需引入和负载均衡等。本书不仅适合想学习Web开发的读者，也适合想全面了解全栈开发的读者，另外还适合作为相关院校和培训机构的教材。','3');
INSERT INTO book VALUES ('1010', 'https://s2.loli.net/2021/12/19/kFd6C2DZOgqKi9Q.jpg', '代码逆袭 超实用的Node.js代码段', '周敏', '2021-1', '电子工业出版社', '《超实用的Node.js代码段》精选300余段Node.js代码，涵盖了服务器端脚本开发中的绝大多数要点、技巧与方法，堪称史上最实用的Node.js框架开发方面的参考书籍，是网站建设与服务器端开发人员的好帮手。《超实用的Node.js代码段》的代码跨平台、跨设备、跨浏览器，充分向读者演示了如何使用Node.js框架的各项技术。《超实用的Node.js代码段》从Node.js框架的使用原理与应用场景出发，对最实用的Node.js代码段进行了全方位的介绍和演示。','3');
INSERT INTO book VALUES ('1011', 'https://s2.loli.net/2021/12/19/siqbg5nc3MwmfOu.jpg', 'Node与Express开发（第2版）', '[美]Ethan Brown', '2021-6', '人民邮电出版社', '本书系统地讲解了使用Express开发动态Web应用的流程和步骤。作者不仅讲授了开发公共站点及REST API的基础知识，还讲解了构建单页、多页及混合Web应用的规划方式及最佳实践。为了适应中间件及相关工具在过去几年里的变化，第2版更侧重于Express作为提供API的后端服务器，并新增了单页应用的示例。','3');
INSERT INTO book VALUES ('1012', 'https://s2.loli.net/2021/12/19/tacGgIe6oO4fs1Q.jpg', '大型网站性能优化实战', '周涛明 / 张荣华 / 张新兵', '2019-1', '电子工业出版社', '性能是大型网站的一个要素，影响性能的因素非常多。本书由三位熟悉不同领域性能优化的技术专家打造，从大型网站的整体体系出发，讲述大型网站性能优化的全链路实践过程，包括核心原理、常见策略与实战案例。具体内容包括：基于用户体验的性能优化要素、前端性能优化、网站性能分析、服务端性能优化、TCP优化、DNS优化、CDN优化、大型网站性能监控体系、大型网站容量评估、高性能系统架构模式、大促保障体系、数据分析驱动性能优化。本书的初衷就是将实践分享给读者，为其展示一个性能优化相关知识的全貌。书中的很多性能优化方法和策略都是作者从实践中总结出来的，实用性非常强。本书既可供入门者了解大型网站性能优化所有的相关技术，以及解决问题的思路和方法，也可供业界同行参考，给日常工作带来启发。','3');
INSERT INTO book VALUES ('1013', 'https://s2.loli.net/2021/12/19/petChSzNfGDlgnm.jpg', '后台开发：核心技术与应用实践', '徐晓鑫', '2016-8', '机械工业出版社', '因为后台开发所需要的技术广泛而坚深，要成为一名后台开发工程师门槛很高，所以相关人才比较紧缺。作者是在腾讯工作多年的后台开发工程师，不仅技术精湛，而且在处理大量实际业务的过程中积累了丰富的开发经验。在这本书中，她不仅首次为后台开发工程师勾勒出了完整的知识能力体系结构图，而且还对后台开发工程师所需要掌握的大量复杂的技术知识进行了提炼、剥离和整合，专注于成为一名后台开发工程师所需掌握的核心技术、开发工具和实践方法，大幅度降低后台开发工程师的学习曲线。本书的内容获得了来自腾讯、Facebook、微软、阿里、百度的多位资深技术专家的高度认可。','3');
INSERT INTO book VALUES ('1014', 'https://s2.loli.net/2021/12/19/8TPVZHfdmEuAi1O.jpg', 'The Rails 4 Way', 'Obie Fernandez / Kevin Faustino', '2014-6', 'Addison-Wesley Professional', '','3');
INSERT INTO book VALUES ('1015', 'https://s2.loli.net/2021/12/19/5QwiN1Ss4B2COkm.jpg', '单页Web应用', '包勇明', '2014-6', '人民邮电出版社', '《单页Web应用：JavaScript从前端到后端》是设计和构建大规模JavaScript单页Web应用(SPA)的宝贵指南，这些应用从前端到后端都使用JavaScript：浏览器端应用、Web服务器和数据库。《单页Web应用：JavaScript从前端到后端》大约三分之二的内容专门讲解单页Web应用的客户端开发，先定义何为JavaScript单页应用，接着介绍书中使用的单页Web应用的架构，然后依次讲解Shell模块、功能模块、Model模块、Data模块和Fake模块等，其中还专门拿出一整章讲解开发单页Web应用时需要掌握的JavaScript概念和特性；剩下三分之一的内容讲解单页Web应用的服务器端开发和其他与单页Web应用相关的知识，如Node.js、MongoDB、CDN、搜索引擎优化、数据分析、错误日志以及各个层级的缓存等。本书最后的两个附录分别介绍JavaScript的编码规范和单页Web应用的测试。','3');
INSERT INTO book VALUES ('1016', 'https://s2.loli.net/2021/12/19/PzBpQS6s5VNY2Zl.jpg', 'Web开发入门经典', '波诺赛克 / 纳拉莫尔', '2009-7', '清华大学出版社', '《Web开发入门经典:使用PHP6、Apache和MySQL》以逐步深入的方式介绍了3种重要的开源技术，它们组成了构建一个最活跃的Web站点所需要的基础。《Web开发入门经典:使用PHP6、Apache和MySQL》重点阐述了如何使用Apache Web服务器、MySQL数据库系统和PHP脚本语言快速地创建一个专业的、功能丰富的站点。在这个过程中，您可以切身体会到PHP、MySQL和Apache的联合应用之所以如此流行的原因：完美的交互性、灵活性、用户化特性、成本以及能够在Linux和Windows系统上运行的能力。','3');
-- INSERT INTO book VALUES ('1017', 'https://s2.loli.net/2021/12/19/Lr2f1zWNM9gJkjA.jpg', 'Node.js 实战', '赵坤 / 寸志 / 雷宗民 / 吴中骅', '2014-5-1', 'Node.js 实战（双色）》通过8 个实例讲解了Node.js 在实战开发中的应用，涉及Node.js 常用框架、非关系型数据库、关系型数据库、运维命令和网络安全等内容。章节按照从简单到复杂的难度排序，每一章都通过一个有趣的实例指引读者从头开发一个应用，让读者可以循序渐进地学习Node.js，以及在实战开发中的编程技巧。','3');
INSERT INTO book VALUES ('1018', 'https://s2.loli.net/2021/12/19/CzbI49NlcOMhwEB.jpg', 'B端产品设计与开发', 'Blair，Reeves，Benjamin，Gaines', '2019-10', '中国电力出版社', '本书介绍了企业级和消费级产品的关键不同，给出了企业级产品开发过程各种难点的解决方案。你将从中学到如何掌握三大类知识：机构知识、产品知识和行业知识。本书重点探讨以下主题：识别客户问题和用户问题是企业级产品经理的主要挑战。高效的合作要求深入的机构知识。分析数据是理解用户为什么购买、安装使用和保有你产品的关键。你有过相关行业的工作经验，再为其开发软件，将非常吃香。产品寿命取决于产品经理对行业发展方向的认识。','3');
INSERT INTO book VALUES ('1019', 'https://s2.loli.net/2021/12/19/V8DOC6JRGPTHzBt.jpg', 'JavaScript & jQuery交互式Web前端开发', '[美]达克特(Duckett,J.)', '2015-6', '你是一名JavaScript新手?或是您曾经向自己的Web页面上添加过一些脚本，但想以一种更好的方式来实现它们？本书非常适合您。本书不仅向您展示如何阅读和编写JavaScript代码，同时还会以一种简单且视觉化的方式，教您有关计算机编程的基础知识。阅读本书之前，您只需要对HTML和CSS有一些了解即可。通过将编程理论与用来演示JavaScript和jQuery如何被应用于流行站点之上的示例相结合，本书将教会您如何让网站更具交互性、吸引性、可用性。很快，您就能够像一名程序员那样去思考和编写代码了。', '','3');
INSERT INTO book VALUES ('1020', 'https://s2.loli.net/2021/12/19/nEBWVMtSFCJb2lY.jpg', '全端Web开发', ' [美] Casimir Saternos', '2015-7', '人民邮电出版社', 'JavaScript和Java这两大生态系统之间如何协同，成为所有Web开发人员共同面临的问题。本书应运而生，全面又简练地为读者展示了最新的C/S应用开发范式。本书以Java和JavaScript这两种最流行的服务器与客户端开发环境为例，全面讲解了最新的C/S应用开发范式。作者不仅讲解了很多实用的C/S开发架构，还通过各种实例进一步强化了读者的认知。','3');

INSERT INTO book VALUES ('202', 'https://s2.loli.net/2021/12/19/ykixSoPZ5pXHvrw.jpg', 'JavaScript百炼成仙', '杨逸飞', '2021-06', '清华大学出版社', '这是一本讲解JavaScript编程语言的技术书籍，只不过，本书采用了一种全新的写作手法。如果你厌倦了厚厚的、如同字典般的编程书籍，不妨尝试一下新的口味！通过本书，你可以领悟到JavaScript的函数七重关秘籍；通过本书，你可以轻松学会使用jQuery操作DOM对象；通过本书，你可以学会目前流行的Vue基础语法；通过本书，你还可以学会最新的ES6常用语法。本书可作为JavaScript初学者入门的趣味读物。', '1');
INSERT INTO book VALUES ('203', 'https://s2.loli.net/2021/12/19/R9hYErVGcJezxp8.jpg', 'C++ Primer中文版（第5版）', '[美] Stanley B. Lippman[美] Josée Lajoie[美] Barbara E. Moo [译]王刚 杨巨峰', '2013-09', '电子工业出版社', '这本久负盛名的C++经典教程，时隔八年之久，终于迎来史无前例的重大升级。除令全球无数程序员从中受益，甚至为之迷醉的——C++大师Stanley B.Lippman的丰富实践经验，C++标准委员会原负责人Josée Lajoie对C++标准的深入理解，以及C++先驱Barbara E.Moo在C++教学方面的真知灼见外，更是基于全新的C++11标准进行了全面而彻底的内容更新。非常难能可贵的是，书中所有示例均全部采用C++11标准改写，这在经典升级版中极其罕见——充分体现了C++语言的重大进展及其全面实践。书中丰富的教学辅助内容、醒目的知识点提示，以及精心组织的编程示范，让这本书在C++领域的权威地位更加不可动摇。无论是初学者入门，或是中高级程序员提升使用，本书均为不容置疑的首选。', '1');
INSERT INTO book VALUES ('204', 'https://s2.loli.net/2021/12/19/GfFSyDLVPzxg6dp.jpg', 'SQL必知必会（第4版）', '[美] Ben Forta [译]钟鸣刘晓霞', '2013-05', '人民邮电出版社', '本书由浅入深地讲解了SQL的基本概念和语法，涉及数据的排序、过滤和分组，以及表、视图、联结、子查询、游标、存储过程和触发器等内容，实例丰富，便于查阅。新版增加了针对ApacheOpen Office Base、MariaDB、SQlite等DBMS的描述，并根据Oracle、SQLServer、MySQL和Postgre SQL更新了相关示例。', '1');
INSERT INTO book VALUES ('205', 'https://s2.loli.net/2021/12/19/7tJ5OD3wFZMXSqn.jpg', 'C语言从入门到精通（第5版）', '明日科技', '2021-09', '清华大学出版社', '《C语言从入门到精通（第5版）》从初学者的角度出发，以通俗易懂的语言、丰富多彩的实例，详细介绍了使用C语言进行程序开发需要掌握的各方面知识。全书分为4篇，共18章，内容包括C语言概述、算法、数据类型、运算符与表达式、常用的数据输入/输出函数、选择结构程序设计、循环控制、数组、函数、指针、结构体和共用体、位运算、预处理、文件、存储管理、网络套接字编程、单词背记闯关游戏和防空大战游戏。书中所有知识都结合具体实例进行介绍，涉及的程序代码给出了详细的注释，读者可以轻松领会C语言程序开发的精髓，快速提高开发技能。', '1');
INSERT INTO book VALUES ('206', 'https://s2.loli.net/2021/12/19/Y2wrMS1zIBvLQdU.jpg', 'Scala函数式编程', '[美] Paul Chiusano[美] Rúnar Bjarnason [译]王宏江钟伦甫曹静静', '2016-04', '电子工业出版社', '函数式编程越来越多地从学术界走向工业界，很多和人们日常相关的重要系统背后都有函数式编程的身影，并且比例越来越高。在这种大的趋势下，甚至很多指令式编程语言也受其影响加入了对一些函数式特征的支持，比如Java 8终于将lambda加了进来。这本书对想要接触函数式编程，或在实际业务中已经使用函数式但想要系统巩固函数式编程知识的程序员来说，是一本非常有价值的书。它以Scala为载体，涵盖了函数式的基础和高阶特性。尤其里面的一些高阶特性是在其他书籍中极少介绍到的。因而，非常值得亟待解决高并发问题，或大数据领域从业的开发人员学习。', '1');
INSERT INTO book VALUES ('207', 'https://s2.loli.net/2021/12/19/k5thq7i3RpWGYyI.jpg', 'Vue.js从入门到项目实战', '刘汉伟', '2019-04', '清华大学出版社', '本书从Vue框架的基础语法讲起，逐步深入Vue进阶实战，并在最后配合项目实战案例，重点演示了Vue在项目开发中的一些应用。在系统地讲解Vue的相关知识之余，本书力图使读者对Vue项目开发产生更深入的理解。本书共分为11章，涵盖的主要内容有前端的发展历程、Vue的基本介绍、Vue的语法、Vue中的选项、Vue中的内置组件、Vue项目化、使用Vue开发电商类网站、使用Vue开发企业官网、使用Vue开发移动端资讯类网站、使用Vue开发工具类网站。', '1');
INSERT INTO book VALUES ('208', 'https://s2.loli.net/2021/12/19/CH5iBbST3PvyOM6.jpg', 'Python数据分析、挖掘与可视化（慕课版）', '董付国', '2020-01', '人民邮电出版社', '全书共9章，内容包括Python开发环境的搭建与编码规范，数据类型、运算符与内置函数，列表、元组、字典、集合与字符串，选择结构、循环结构、函数定义与使用，文件操作，numpy数组与矩阵运算，pandas数据分析实战，sklearn机器学习实战，matplotlib数据可视化实战等。本书适合作为高等院校计算机、大数据、数据科学或相关专业的教材，也适合从事相关工作的工程师和爱好者阅读。', '1');
INSERT INTO book VALUES ('209', 'https://s2.loli.net/2021/12/19/odRC162YjryTtX9.jpg', 'UNIX编程艺术', '[美] Eric S.Raymond [译]姜宏何源蔡晓骏', '2012-08', '电子工业出版社', '本书主要介绍了Unix系统领域中的设计和开发哲学、思想文化体系、原则与经验，由公认的Unix编程大师、开源运动领袖人物之一Eric S.Raymond倾力多年写作而成。包括Unix设计者在内的多位领域专家也为本书贡献了宝贵的内容。本书内容涉及社群文化、软件开发设计与实现，覆盖面广、内容深邃，完全展现了作者极其深厚的经验积累和领域智慧。', '1');
INSERT INTO book VALUES ('2010', 'https://s2.loli.net/2021/12/19/fIkztXM3N9EOU2V.jpg', '零基础入门Python深度学习', '刘文如', '2020-04', '机械工业出版社', '本书从基础知识开始讲解深度学习的原理和应用，包括该领域的发展、深度学习的入门知识、深度学习模型的理论、代码和实际应用中的优化。本书共12章，主要内容包括深度学习基础、深度学习的环境准备、深度学习的知识准备、神经网络基础知识、使用Keras构建神经网络、神经网络的进一步优化、卷积神经网络、使用Keras构建卷积神经网络、卷积神经网络可视化、迁移学习、循环神经网络和使用Keras构建循环神经网络等。对于本书中介绍的深度学习模型，我们提供了实例代码供读者学习。本书作为深度学习的入门书籍，适合希望从零开始了解深度学习技术，并且快速掌握深度学习理论和使用深度学习工具的学生和技术人员阅读。', '1');
INSERT INTO book VALUES ('2011', 'https://s2.loli.net/2021/12/19/jnvJ2zE1g5KLtIA.jpg', 'Python编程之美：最佳实践指南', '[美] Kenneth Reitz（肯尼思·赖茨）[美] Tanya Schlusser（坦尼娅·胥卢瑟）[译]夏永锋 廖邦杰', '2018-09', '电子工业出版社', '《Python编程之美：最佳实践指南》是Python用户的一本百科式学习指南，由Python社区数百名成员协作奉献。全书内容分为三大部分。第1部分是关于如何配置和使用Python编辑工具的；第2部分深入讲解地道Python风格的代码范例；第3部分研究Python社区常用的一些代码库。', '1');
INSERT INTO book VALUES ('2012', 'https://s2.loli.net/2021/12/19/D95oLCF2HTbKSwu.jpg', '深入理解Flask', '[美] 杰克·史都华（Jack Stouffer）', '2016-07', '电子工业出版社', '本书从一个简单的Flask应用开始，通过解决若干实战中的问题，对一系列进阶的话题进行了探讨。书中使用MVC（模型-视图-控制器）架构对示例应用进行了转化重构，以演示如何正确地组织应用代码结构。有了可扩展性强的应用结构之后，接下来的章节使用Flask扩展为应用提供了额外的功能，包括用户登录和注册、NoSQL查询、REST API、一套后台管理界面，以及其他特性。然后，你会学到如何使用单元测试，保障代码持续按照正确的方式工作，避免极具风险的猜测式编程。本书最后会讨论可用于部署Flask应用的诸多不同平台，以及你必须考虑的，每个平台的优劣利弊。', '1');
INSERT INTO book VALUES ('2013', 'https://s2.loli.net/2021/12/19/FcTR3lha1AkYBVX.jpg', 'Python数据可视化之Matplotlib与Pyecharts', '王国平', '2020-05', '清华大学出版社', '本书以某上市电商企业的客户数据、订单数据、股价数据为基础，由浅入深、循序渐进地介绍Python可视化技术，重点介绍Matplotlib与Pyecharts在数据可视化应用中的基本功能和使用技巧。全书以案例为主线，既包括软件的操作与应用，又融入了数据可视化的基础知识，绘图案例大多选自工作实践，可使读者真正掌握专业的可视化方法与技巧，提升数据分析的整体能力。本书配套资源包含案例采用的数据源文件、源代码和教学视频，供读者在阅读本书时进行操作练习和参考。本书可作为管理、经济、社会人文等领域的人员学习Python软件进行大数据可视化分析的参考书，也可以作为大中专院校相关专业的教学用书或参考书。', '1');
INSERT INTO book VALUES ('2014', 'https://s2.loli.net/2021/12/19/cEfVK1owBhTaPz5.jpg', 'Go语言学习笔记', '雨痕', '2016-06', '电子工业出版社', '作为时下流行的一种系统编程语言，Go简单易学，性能很好，且支持各类主流平台。已有大量项目采用Go编写，这其中就包括Docker等明星作品，其开发和执行效率早已被证明。本书经四年多逐步完善，内容覆盖了语言、运行时、性能优化、工具链等各层面知识。且内容经大量读者反馈和校对，没有明显的缺陷和错误。上卷细致解析了语言规范相关细节，便于读者深入理解语言相关功能的使用方法和注意事项。下卷则对运行时源码做出深度剖析，引导读者透彻了解语言功能背后的支持环境和运行体系，诸如内存分配、垃圾回收和并发调度等。本书不适合编程初学入门，可供有实际编程经验或正在使用Go工作的人群参考。', '1');
INSERT INTO book VALUES ('2015', 'https://s2.loli.net/2021/12/19/8ZreA3iEDUgPfMv.jpg', '深入Java虚拟机：JVM G1GC的算法与实现', '[日] 中村成洋 [译]吴炎昌 杨文轩', '2021-01', '人民邮电出版社', '本书深入Java虚拟机底层原理，对JVM内存管理中的垃圾回收算法G1GC进行了详细解读。全书分为“算法篇”和“实现篇”两大部分：前一部分主要介绍G1GC的算法原理，内容包括G1GC的并发标记、转移功能、软实时性的实现和分代G1GC模式；后一部分聚焦算法篇中没有详细讲解的实现部分，基于HotSpotVM源码，讲解对象管理功能、内存分配器的机制、线程管理方法和G1GC的具体实现。本书以图配文，通俗易懂，既系统介绍了G1GC的基础算法，又贴近现实，剖析了实用JVM中的G1GC实现，同时还包含了作者对G1GC的研究成果和独到见解，是深入理解JVM和G1GC机制的佳作。', '1');
INSERT INTO book VALUES ('2016', 'https://s2.loli.net/2021/12/19/hUEP8dRfM9b3Dsz.jpg', '深入浅出Electron', '刘晓伦', '2021-12', '机械工业出版社', '本书能帮助读者夯实Electron基础进而开发出稳定、健壮的Electron应用的著作。书中对Electron的工作原理、大型工程构建、常见技术方案、周边生态工具等进行了细致、深入地讲解。对Electron及其周边工具的原理进行了深入讲解，包括Electron依赖包的原理、Electron原理、electron-builder的原理等。', '1');
INSERT INTO book VALUES ('2017', 'https://s2.loli.net/2021/12/19/GnNTcoUHQBpvOb7.jpg', '精通Django 3 Web开发', '黄永祥', '2020-06', '清华大学出版社', '本书是一本Django Web的技术总结，以Django 3.0版本实现。全书以一个完整的商城网站开发流程为主线，讲解了Django 3.0版本的知识点和新特性以及每一个功能模块的要点和实现方式。主要内容包括：Django基础、商城的设计说明与配置、商城网址的规划与设计、商城的数据模型搭建与使用、商城的数据业务处理、商城的数据渲染与展示、商品信息模块、用户信息模块、购物功能模块、商城后台管理系统、项目上线与部署等内容。', '1');
INSERT INTO book VALUES ('2018', 'https://s2.loli.net/2021/12/19/RXEKaQADCLO7lPp.jpg', 'OpenCV 4计算机视觉项目实战（原书第2版）', '[西] 大卫·米兰·埃斯克里瓦（David Millán Escrivá）[西] 维尼休斯·G.门东萨（Vinícius G.Mendonça）[美] 普拉蒂克·乔希（Prateek Joshi）[译]冀臻', '2019-07', '机械工业出版社', '本书通过实例和项目讲解OpenCV概念及其算法。首先介绍OpenCV的安装和图像处理的基础知识。然后，覆盖用户界面并深入讲解图像处理，读者将学到复杂的计算机视觉算法，并探索机器学习和人脸检测。之后，本书将介绍如何在复杂场景中创建光流视频分析和背景减除，还将讲解文本分割和识别，以及新的和改进的深度学习模块的基础知识。最后，本书介绍了OpenCV的基础知识，例如矩阵运算、滤波器和直方图，帮读者掌握常用的计算机视觉技术，从头开始构建OpenCV项目。', '1');
INSERT INTO book VALUES ('2019', 'https://s2.loli.net/2021/12/19/Lqr8n1ZVNjysWTl.jpg', 'C++程序设计教程（第3版）（通用版）', '钱能', '2019-06', '清华大学出版社', 'C++是一种高效实用的程序设计语言，它既可进行过程化程序设计，也可进行面向对象程序设计，因而成为编程人员最广泛使用的工具。学好C++，再学习其他软件就很容易，C++架起了通向强大、易用、真正的软件开发应用的桥梁。本书共分两大部分：第一部分包括第1章～第10章，是基础部分，主要介绍C++程序设计语言、程序结构和过程化基础；第二部分包括第11章～第21章，是面向对象程序设计部分，它建立在C++程序设计基础之上，讲述了面向对象程序设计方法。', '1');
INSERT INTO book VALUES ('2020', 'https://s2.loli.net/2021/12/19/8D3teYBKOQs9jxq.jpg', 'Qt Quick核心编程', '安晓辉', '2015-01', '电子工业出版社', '《Qt Quick核心编程》起始于基础的开发环境搭建和Qt Creator快速介绍，帮助读者正确使用开发环境；着力于QML语言基础、事件、Qt Quick基本元素，辅以简要的ECMAScript（JavaScript）语言介绍，使得读者能够快速熟悉Qt Quick的基本知识和开发过程；对于Qt Quick中的关键主题，如动画、Model-View、Component、网络、多媒体，做了详尽入微的讲解，让读者一册在手，别无他求；QML与C++混合编程、Canvas、定制及自定义控件等高级主题，《Qt Quick核心编程》也做了详细讲解，同时提供了多个精彩的实作实例，力求概念清晰，用途明确。《Qt Quick核心编程》的内容适用于桌面与Android平台。值得一提的是，《Qt Quick核心编程》覆盖了Android开发的多个主题，如拍照、定位、录音、国际化、可伸缩界面等，也是使用Qt Quick进行移动开发不可错过的。', '1');
INSERT INTO book VALUES ('3021', 'https://s2.loli.net/2021/12/19/JOAPuxQFVrSaWsH.jpg', '大数据时代：生活、工作与思维的大变革', '英] 维克托·迈尔·舍恩伯格（Viktor Mayer-Schönberger）[译]周涛', '2012-12', '浙江人民出版社', '国外大数据研究的先河之作，讲述了大数据时代的思维变革、商业变革和管理变革。本书作者维克托•迈尔•舍恩伯格被誉为“大数据商业应用第一人”，拥有在哈佛大学、牛津大学、耶鲁大学和新加坡国立大学等多个互联网研究重镇任教的经历，早在2010年就在《经济学人》上发布了长达14页对大数据应用的前瞻性研究。', '6');
INSERT INTO book VALUES ('3022', 'https://s2.loli.net/2021/12/19/oh6QVkye15am7ct.jpg', '大数据技术原理与应用（第2版）', '林子雨', '2017-02', '人民邮电出版社', '本书系统介绍了大数据的相关知识，分为大数据基础篇、大数据存储与管理篇、大数据处理与分析篇、大数据应用篇。全书共15章，内容包含大数据的基本概念、大数据处理架构Hadoop，分布式文件系统HDFS，分布式数据库HBase，NoSQL数据库、云数据库、MapReduce，Spark流计算、图计算、数据可视化以及大数据在互联网、生物医学领域和其他行业的应用。本书在Hadoop，HDFS，HBase，MapReduce和Spark等重要章节安排了入门级的实践操作，以便读者更好地学习和掌握大数据关键技术。', '6');
INSERT INTO book VALUES ('3023', 'https://s2.loli.net/2021/12/19/uh86tW1rZEdRecs.jpg', '大数据系统构建', '[美] 南森·马茨[美] 詹姆斯·沃伦 [译]马延辉 向磊 魏东琦', '2016-12', '机械工业出版社', '机械工业出版社', '6');
INSERT INTO book VALUES ('3024', 'https://s2.loli.net/2021/12/19/QhfHgnKP7eBbYzC.jpg', '大数据处理框架Apache Spark设计与实现', '许利杰 方亚芬', '2020-08', '电子工业出版社', '近年来，以Apache Spark为代表的大数据处理框架在学术界和工业界得到了广泛的使用。本书以Apache Spark框架为核心，总结了大数据处理框架的基础知识、核心理论、典型的Spark应用，以及相关的性能和可靠性问题。本书分9章，主要包含四部分内容。第一部分大数据处理框架的基础知识（第1～2章）：介绍大数据处理框架的基本概念、系统架构、编程模型、相关的研究工作，并以一个典型的Spark应用为例概述Spark应用的执行流程。第二部分Spark大数据处理框架的核心理论（第3～4章）：介绍Spark框架将应用程序转化为逻辑处理流程，进而转化为可并行执行的物理执行计划的一般过程及方法。第三部分典型的Spark应用（第5章）：介绍迭代型的Spark机器学习应用和图计算应用。第四部分大数据处理框架性能和可靠性保障机制（第6～9章）：介绍Spark框架的Shuffle机制、数据缓存机制、错误容忍机制、内存管理机制等。', '6');
INSERT INTO book VALUES ('3025', 'https://s2.loli.net/2021/12/19/crgfEHIkmz4WD3i.jpg', '大数据技术体系详解：原理、架构与实践', '董西成', '2018-01', '机械工业出版社', '机械工业出版社', '6');
INSERT INTO book VALUES ('3026', 'https://s2.loli.net/2021/12/19/DSzsGvpQNKiCFU9.jpg', '数据中台实战', '董超华', '2020-10', '电子工业出版社', '本书从“数据采集”“数据存储”“数据打通”“数据应用”的角度，基于作者多年搭建数据中台的实战经验，毫无保留地为大家解析从0到1搭建数据中台的全过程。每个章节都有大量的实战案例，希望本书能够对国内数据化工作者提供一定的帮助。', '6');
INSERT INTO book VALUES ('3027', 'https://s2.loli.net/2021/12/19/mxXvSzEkFuyL9cP.jpg', 'Alluxio：大数据统一存储原理与实践', '范斌 顾荣', '2019-07', '电子工业出版社', 'Alluxio这一以内存为中心的分布式虚拟文件系统，最初诞生于加州大学伯克利分校的AMPLab，其开源社区在目前大数据生态系统中发展很快。本书以广泛使用的Alluxio 1.8.1版本为基础进行编写，是一本全面介绍Alluxio相关技术原理与实践案例的书籍。本书主要内容包括Alluxio系统快速入门、Alluxio系统架构及读写工作机制、Alluxio与底层存储系统的集成、Alluxio与上层计算框架的集成、Alluxio基本功能和高级功能的介绍与使用。此外，本书还详细介绍了Alluxio的应用案例与生产实践，并详细解读了Alluxio的核心框架和技术应用，旨在为大数据从业人员和大数据存储技术爱好者提供一个深入学习的平台，也可用作开源社区开发者指南。', '6');
INSERT INTO book VALUES ('3028', 'https://s2.loli.net/2021/12/19/XuJdAkS9bnBZLiC.jpg', '大数据与人力资源', '[美] 罗斯·斯帕克曼（Ross Sparkman）[译]谢淑清', '2019-09', '浙江大学出版社', '本书揭开了全球互联网巨头Facebook人力资源管理的神秘面纱，为企业提供了高效的人才评估、管理、储备的实用框架和实践指南。本书作者，Facebook现任战略人力资源规划主管，将15年实战经验倾囊相授，结合真实案例和大数据分析，向我们展示了战略人力资源规划的详细策略。无论是初创企业、小公司，还是大企业，本书都将帮助你实现人力资源管理与公司战略的匹配，在激烈角逐的商业世界为公司注入强劲的竞争优势。', '6');
INSERT INTO book VALUES ('3029', 'https://s2.loli.net/2021/12/19/UySe8RnTXuoZIvl.jpg', '大数据技术', '刘化君 吴海涛 毛其林 等', '2019-07', '电子工业出版社', '本书是《网络工程师教育丛书》的第7册，介绍和讨论大数据的基础知识、技术原理和应用。全书内容分为6章，包括绪论、大数据采集和预处理、大数据存储与管理、大数据分析与计算、大数据可视化和大数据应用。本书既介绍大数据技术基础知识，又将这些知识与具体应用有机结合起来，并借助可视化图表深入剖析大数据技术原理和洞见数据价值的方法。各章均配有练习、本章小结及小测验，以便理解掌握重要知识点。另外，考虑到大数据技术涉及许多新名词和专业性极强的词汇，书末以附录形式给出了相关术语的注释，以方便读者查阅。', '6');
INSERT INTO book VALUES ('3030', 'https://s2.loli.net/2021/12/19/tyg3qOK2kbsnQuL.jpg', 'openGauss数据库核心技术', '李国良 周敏奇', '2020-07', '清华大学出版社', '本书系统论述了openGauss数据库理论、技术及应用。本书共11章，首先介绍数据库发展历史，包括传统的网状数据库、层次数据库、关系数据库、NoSQL数据库、NewSQL数据库、云数据库、多模数据库、分布式数据库等。其次介绍结构化查询语言（SQL）、SQL语法、存储过程、触发器、游标、数据库设计规范和E-R模型等数据库基础知识。再次介绍数据库未来发展趋势，包括新硬件、不同部署形态、新应用对数据库的影响。最后重点介绍开源数据库openGauss的核心技术、openGauss的发展历史和核心架构、面向鲲鹏和昇腾等新硬件的优化技术、SQL引擎、执行器技术、数据库存储技术、数据库事务机制、数据库安全、数据库自治技术等。为方便读者掌握数据库教学内容，本书每章都提供了小结和习题（含答案）。', '6');
INSERT INTO book VALUES ('31', 'https://s2.loli.net/2021/12/24/yb8VA6OIJ5F7NmQ.jpg', '数据分析即未来', '[美] 格雷戈里·S.纳尔逊 [译]陈道斌 万芊 等', '2020-06', '机械工业出版社 ', '数据已经成为一种新的“货币资产”。很多组织都沉浸在其中，但很少有组织能从中获取真正的价值。本书将整个分析生命周期转化为可操作、可执行的洞察力，为构建有效的分析能力和将数据转化为行动的实操流程提供了一个框架。本书第壹部分描述了现代企业开展数据分析的“参与者”（who）、“如何做”（how）和“为什么这样做”（why），让能够清楚地了解组织在战略层面具备协调一致的能力的价值；第二部分详细介绍了分析生命周期很好实践，包括问题理解、数据探查、模型开发、变革管理、数据管理、产品管理等；第三部分讨论了如何保持分析能力长期很好，以及如何将分析嵌入业务发展的新阶段，以此进一步充实本书的研究结论。', '6');
INSERT INTO book VALUES ('32', 'https://s2.loli.net/2021/12/24/san6QV4GkCyqMhP.jpg', 'Python金融大数据挖掘与分析全流程详解', '王宇韬 房宇亮 肖金鑫', '2019-08', '机械工业出版社', '全书共16章，内容涉及Python基础知识、网络数据爬虫技术、数据库存取、数据清洗、数据可视化、数据相关性分析、IP代理、浏览器模拟操控、邮件发送、定时任务、文件读写、云端部署、机器学习等，可以实现舆情监控、智能投顾、量化金融、大数据风控、金融反欺诈模型等多种金融应用。无论是编程知识还是金融相关知识，本书都力求从易到难、循序渐进地讲解，并辅以商业实战案例来加深印象。', '6');
INSERT INTO book VALUES ('33', 'https://s2.loli.net/2021/12/24/Jg4Ls8WuRUIPNkM.jpg', '数据预处理从入门到实战 ：基于SQL、R、Python', '[日] 本桥智光 [译]陈涛', '2021-02', '人民邮电出版社', '在大数据、人工智能时代，数据分析必不可少。本书以数据分析中至关重要的数据预处理为主题，通过54道例题具体介绍了基于SQL、R、Python的处理方法和相关技巧。全书共4个部分：第1部分介绍预处理的基础知识；第2部分介绍以数据结构为对象的预处理，包括数据提取、数据聚合、数据连接、数据拆分、数据生成和数据扩展；第3部分介绍以数据内容为对象的预处理，涉及数值型、分类型、日期时间型、字符型和位置信息型；第4部分为预处理实战，介绍与实际业务相同的预处理流程。本书适合新手数据科学家、系统工程师、具备编程及数理基础的技术人才，以及对数据挖掘和数据分析等感兴趣的人阅读。', '6');
INSERT INTO book VALUES ('34', 'https://s2.loli.net/2021/12/24/9BFvkunaUj1YIet.jpg', '从0到1：数据分析师养成宝典', '高峰 王先平 罗代忠', '2021-08', '电子工业出版社', '随着互联网技术的普及，数据产生的速度加快，数据规模越来越庞大，企业对数据分析师的需求也随之增加。数据分析师需要做好日常的数据收集与积累的工作，通过数据分析制订适合企业的发展计划，帮助企业在激烈的市场竞争中赢得主动权，实现跨越发展。目前世界领先的企业中，大多已经建立了数据分析部门，知名互联网公司如IBM、谷歌等企业尤其注重发展投资数据分析部门，培养数据分析团队。数据分析师的分析结论与建议已经成为企业决策的重要参考。本书从数据分析师培养的角度，结合大量的图表、案例，提炼出新手数据分析师最急需了解的内容，帮助读者从宏观角度全面了解数据分析师的工作流程。对于想要入行的新手来说，这是一本非常实用的工具书。', '6');
INSERT INTO book VALUES ('35', 'https://s2.loli.net/2021/12/24/j1pPkb3u98DqThL.jpg', '数据化运营：系统方法与实践案例', '赵宏田 江丽萍 李宁', '2018-07', '机械工业出版社', '本书从方法、技术、业务、实践4个维度全面构建数据化运营的系统方法论，为数据化运营提供了接地气的、科学的指导。作者均在数据科学和数据化运营领域工作多年，本书从实践出发，以他们在实际工作中遇到的应用场景为切入点，通过“业务分析+代码实现”的方式接地气地讲解了如何才能做好数据化运营。其中，重点对搭建数据监控指标体系、数据分析、数据挖掘、ABtest、埋点策略、用户画像建模等常见数据运营方式做了详细的介绍。', '6');
INSERT INTO book VALUES ('36', 'https://s2.loli.net/2021/12/24/buF83dZf2ylE4JP.jpg', '大数据技术和应用', '陈建平 陈志德 席进爱', '2020-01', '清华大学出版社', '这是一本大数据技术入门的简明教材。全书理论和实践相结合，以应用实战为主，深入浅出地讲解每个知识点，对每个应用实验按学习习惯，分步骤讲解，每个步骤都有文字说明和效果截图，使读者能清晰地知晓动手实操的效果和错误之处。全书分为9章，全面介绍了大数据技术的相关基础知识、HDFS和数据库、采集传输工具、挖掘分析算法、Spark计算框架、可视化、大数据安全、大数据应用等内容，着重介绍了HDFS分布式文件系统、NoSQL等各种数据库、数据仓库Hive，以及数据采集分析技术，并配套了详细的实验教程以及练习题。本书适合作为高等院校计算机、软件工程、大数据专业高职、本科生的教材，同时可供企业中从事大数据开发的工程师和科技工作者参考。', '6');
INSERT INTO book VALUES ('37', 'https://s2.loli.net/2021/12/24/YAIDsOqlVzWwgeK.jpg', '决战大数据（升级版）', '车品觉', '2016-04', '浙江人民出版社', '在数据无限的时代，我们如何利用大数据实现商业大洗牌？传统行业又该如何通过挖掘隐藏在大数据背后的信息，冲出层层危机，实现行业质和量的飞跃？企业如何才能实现数据化运营，在大数据时代站稳脚跟？大数据实践的先行者、阿里巴巴集团前副总裁车品觉倾力新增8万字纯干货，倾情解读企业在大数据时代顽强生存的答案！只有稳抓趋势中的观战重点，才能在海量数据中挖掘商机！', '6');
INSERT INTO book VALUES ('38', 'https://s2.loli.net/2021/12/24/zUxG8WVACy4eKH3.jpg', '数据治理与数据安全', '张莉 主编 中国电子信息产业发展研究院 编著', '2019-09', '人民邮电出版社', '本书对数据治理的对象、丰题、框架和方式等进行分析，使读者认识到数字经济时代数据流动的重要性和巨大意义。然后，本书从国内、国际两个方面进行阐述，力图为政府和企业开展个人信息保护、推进数据开放共享及跨境流动战略出谋划策。最后，本书基于我国的实际情况，借鉴国际经验，针对数据开放共享中存在的问题提出了具体落地的数据治理策略。总之，本书具有很高的理论意义和应用推广价值。本书适合政府机构、科研机构、企事业单位中从事数据治理与安全工作的人员及离等院校相关专业的师生阅读。', '6');
INSERT INTO book VALUES ('39', 'https://s2.loli.net/2021/12/24/9Nq1tL2rmyP56ua.jpg', '政务大数据应用方法与实践', '张毅', '2021-07', '中信出版社', '深化政务大数据应用，有利于提高数字政府建设水平，推进国家治理体系和治理能力现代化。本书首先解读了中央关于大数据的重要论述，阐述了大数据特征、相关技术和重要意义，指出领导干部要强化大数据思维，加快发展政务大数据，并介绍了国内外大数据发展情况。然后论述了大数据在经济调节、市场监管、社会治理、公共服务、应急管理和疫情防控领域的应用，提出了政务数据资源整合、共享与开放以及保障大数据安全的方法。最后介绍了黑龙江全省以及哈尔滨、齐齐哈尔、牡丹江、佳木斯等地市政务大数据应用情况和典型案例，总结了浙江、上海、江苏、广东、贵州、海南等省市政务大数据发展经验。', '6');
INSERT INTO book VALUES ('40', 'https://s2.loli.net/2021/12/24/rag3xnouwvKf4by.jpg', '离线和实时大数据开发实战', '朱松岭', '2018-05', '机械工业出版社', '本书分为三篇。第壹篇：从整体上给出数据大图和数据平台大图，主要介绍数据的主要流程、各个流程的关键技术、数据的主要从业者及他们的职责等；数据平台大图分离线和实时分别给出数据平台架构、关键数据概念和技术等；第二篇：介绍离线数据开发的主要技术，包含Hadoop、Hive、维度建模等，另外此部分还将综合上述各种离线技术给出离线数据处理实战；第三篇：集中介绍实时数据处理的各项技术，包含Storm、SparkSteaming、Flink、Beam等。', '6');
