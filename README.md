<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-15 10:52:38
 * @LastEditTime: 2021-12-31 14:15:28
-->
文件说明:
- Collage-J2EE
  - documents: 文档文件，文档用 .md 写，只允许放入文本文件
  - interface: 前端主界面，使用 vue3 开发，vue 比较简单易学，基本上有手就行
    - vue3: 主要框架
    - element-ui: ui 框架
    - axios: 前后端交互
    - mavon-editor: md 转 html 编辑器(开源)
  - backend: 后端，使用 springboot 框架，mysql 数据库
    - lombok: 数据库操作包
    - mysql: 数据库
    - sql: 数据库脚本
- 运行步骤
  - 前端，cd 到 interface 文件夹下，使用 npm run dev 启动 vue
    - 进入 8080/login 登陆界面，正常使用
    - 前端用了 vue3 框架，确保电脑安装过 node(npm) 和 vue3
    - mavon-editor 编辑器: npm install mavon-editor --save
  - 后端: 运行 BackendApplication.java 文件