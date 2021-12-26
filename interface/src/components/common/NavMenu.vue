<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-18 18:59:46
 * @LastEditTime: 2021-12-26 19:48:39
-->
<template>
  <el-menu
    id="nav"
    :default-active="'/index'"
    router
    mode="horizontal"
    text-color="white"
    active-text-color="rgb(36,133,245)"
    style="min-width: 1300px"
  >
    <el-menu-item v-for="(item, i) in navList" :key="i" :index="item.name">
      {{ item.navItem }}
    </el-menu-item>
    <a href="#nowhere" style="color: #fff;float: right;padding: 20px;"
      >芜湖起飞</a
    >
    <i
      class="el-icon-menu"
      style="float:right;font-size: 45px;color: #fff;padding-top: 8px"
    ></i>
    <span
      style="position: absolute;padding-top: 20px;right: 43%;font-size: 20px;font-weight: bold"
      >校园图书管理系统</span
    >
  </el-menu>
</template>

<script>
export default {
  name: "NavMenu",
  data() {
    return {
      navList: [
        { name: "/index", navItem: "首页" },
        { name: "/notebook", navItem: "笔记本" },
        { name: "/library", navItem: "图书馆" },
        { name: "/admin", navItem: "个人中心" }
      ]
    };
  }
};
</script>

<style scoped>
#nav {
  background-color: rgb(36, 41, 47);
  color: white;
  font-weight: 500;
}

a {
  text-decoration: none;
}

span {
  pointer-events: none;
}
</style>
