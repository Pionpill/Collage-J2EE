<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-18 13:28:14
 * @LastEditTime: 2021-12-25 15:02:02
-->
<template>
  <div>
    <nav-menu> </nav-menu>
    <router-view />
  </div>
</template>

<script>
import NavMenu from "./common/NavMenu";
export default {
  name: "Home",
  components: { NavMenu }
};
</script>

<style scoped></style>
