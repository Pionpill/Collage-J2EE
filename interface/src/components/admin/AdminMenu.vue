<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-25 15:20:48
 * @LastEditTime: 2021-12-25 16:02:44
-->
<template>
  <el-menu
    :default-active="currentPath"
    class="el-menu-admin"
    router
    mode="vertical"
    background-color="#545c64"
    text-color="#fff"
    active-text-color="#ffd04b"
    :collapse="isCollapse"
  >
    <div style="height: 80px;"></div>
    <el-submenu index="1" style="text-align: left">
      <template slot="title">
        <i class="el-icon-user-solid"></i>
        <span slot="title" class="group">用户管理</span>
      </template>
      <el-menu-item index="1-1">用户信息</el-menu-item>
      <el-menu-item index="1-2">角色配置</el-menu-item>
    </el-submenu>
    <el-submenu index="2" style="text-align: left">
      <template slot="title">
        <i class="el-icon-s-management"></i>
        <span slot="title" class="group">图书管理</span>
      </template>
      <el-menu-item index="2-1">书籍管理</el-menu-item>
    </el-submenu>
    <el-submenu index="3" style="text-align: left">
      <template slot="title">
        <i class="el-icon-s-platform"></i>
        <span slot="title" class="group">系统管理</span>
      </template>
      <el-menu-item index="3-1">运行情况</el-menu-item>
    </el-submenu>
  </el-menu>
</template>

<script>
export default {
  name: "AdminMenu",
  data() {
    return {
      isCollapse: false
    };
  },
  computed: {
    // adminMenus() {
    //   return this.$store.state.adminMenus;
    // },
    // currentPath() {
    //   return this.$route.path;
    // }
  }
};
</script>

<style scoped>
.el-menu-admin {
  border-radius: 5px;
  height: 100%;
}

.group {
  font-size: 18px;
  font-weight: 600;
}
</style>
