<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-18 18:59:46
 * @LastEditTime: 2021-12-25 15:01:38
-->
<template>
  <el-container>
    <el-aside style="width: 200px;margin-top: 20px">
      <switch></switch>
      <SideMenu @indexSelect="listByCategory" ref="sideMenu"></SideMenu>
    </el-aside>
    <el-main>
      <books class="books-area" ref="booksArea"></books>
    </el-main>
  </el-container>
</template>

<script>
import SideMenu from "./SideMenu";
import Books from "./Books";

export default {
  name: "AppLibrary",
  components: { Books, SideMenu },
  methods: {
    listByCategory() {
      var _this = this;
      var cid = this.$refs.sideMenu.cid;
      var url = "categories/" + cid + "/books";
      this.$axios.get(url).then(resp => {
        if (resp && resp.status === 200) {
          _this.$refs.booksArea.books = resp.data;
        }
      });
    }
  }
};
</script>

<style scoped>
.books-area {
  width: 1000px;
  margin-left: auto;
  margin-right: auto;
}
</style>
