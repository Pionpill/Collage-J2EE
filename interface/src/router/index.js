import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import Login from "../views/Login.vue";
import Register from "../views/Register.vue";
import Welcome from "../views/Welcome.vue";
import Main from "../views/Main.vue";

import Goods from "../views/mainViews/Goods.vue";
import Personnel from "../views/mainViews/Personnel.vue";
import Records from "../views/mainViews/Records.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/login",
    name: "登录页",
    component: Login,
  },
  {
    path: "/register",
    name: "注册页",
    component: Register,
  },
  {
    path: "/main",
    name: "主页",
    component: Main,
    children: [
      {
        path: "/main/goods",
        name: "货物管理",
        component: Goods,
      },
      {
        path: "/main/personnel",
        name: "人员管理",
        component: Personnel,
      },
      {
        path: "/main/records",
        name: "仓库记录",
        component: Records,
      },
    ],
  },
  {
    path: "/welcome",
    name: "欢迎页",
    component: Welcome,
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
