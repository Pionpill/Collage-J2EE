<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-25 15:20:53
 * @LastEditTime: 2021-12-25 15:34:52
-->
<template>
  <el-card class="admin-header">
    <a href="/index">
      <img
        src="../../assets/images/book.png"
        alt=""
        width="55px"
        style="float: left;margin-top: -5px;"
      />
    </a>
    <span
      style="font-size: 24px;font-weight: bold;position:absolute;left: 100px"
      >后台管理</span
    >
    <i
      class="el-icon-switch-button"
      v-on:click="logout"
      style="font-size: 40px;float: right"
    ></i>
  </el-card>
</template>

<script>
export default {
  name: "Header",
  methods: {
    logout() {
      var _this = this;
      this.$axios
        .get("/logout")
        .then(resp => {
          if (resp && resp.data.code === 200) {
            _this.$store.commit("logout");
            _this.$router.replace("/index");
            // 清空路由，防止路由重复加载
            const newRouter = createRouter();
            _this.$router.matcher = newRouter.matcher;
          }
        })
        .catch(failResponse => {});
    }
  }
};
</script>

<style scoped>
.admin-header {
  height: 80px;
  opacity: 1;
  line-height: 40px;
  min-width: 900px;
}
.el-icon-switch-button {
  cursor: pointer;
  outline: 0;
}
</style>
