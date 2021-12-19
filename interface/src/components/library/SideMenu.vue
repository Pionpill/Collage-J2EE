<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-18 18:59:46
 * @LastEditTime: 2021-12-19 14:00:04
-->
<template>
  <el-menu
    class="categories"
    default-active="0"
    @select="handleSelect"
    active-text-color="red"
  >
    <el-menu-item index="0">
      <i class="el-icon-menu"></i>
      <span slot="title">全部</span>
    </el-menu-item>
    <el-menu-item index="1">
      <i class="el-icon-menu"></i>
      <span slot="title">计算机基础</span>
    </el-menu-item>
    <el-menu-item index="2">
      <i class="el-icon-menu"></i>
      <span slot="title">前端开发</span>
    </el-menu-item>
    <el-menu-item index="3">
      <i class="el-icon-menu"></i>
      <span slot="title">后端开发</span>
    </el-menu-item>
    <el-menu-item index="4">
      <i class="el-icon-menu"></i>
      <span slot="title">人工智能</span>
    </el-menu-item>
    <el-menu-item index="5">
      <i class="el-icon-menu"></i>
      <span slot="title">游戏开发</span>
    </el-menu-item>
    <el-menu-item index="6">
      <i class="el-icon-menu"></i>
      <span slot="title">大数据</span>
    </el-menu-item>
  </el-menu>
</template>

<script>
export default {
  name: "SideMenu",
  data() {
    return {
      cid: ""
    };
  },
  methods: {
    handleSelect(key, keyPath) {
      this.cid = key;
      this.$emit("indexSelect");
    }
  }
};
</script>

<style scoped>
.categories {
  text-align: left;
  position: fixed;
  margin-left: 50%;
  left: -600px;
  top: 100px;
  width: 150px;
  /* background-color: #eee; */
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3), 0 5px 2px rgba(0, 0, 0, 0.22);
  border: 2px solid #fff;
  border-radius: 10px;
}
</style>
