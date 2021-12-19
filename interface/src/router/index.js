/*
 * @Description: 路由配置
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-18 13:28:14
 * @LastEditTime: 2021-12-19 11:17:07
 */
import Vue from "vue";
import Router from "vue-router";
import Home from "../components/Home";
// 导入刚才编写的组件
import AppIndex from "../components/home/AppIndex";
import LibraryIndex from "../components/library/LibraryIndex";
import Login from "../components/Login";

Vue.use(Router);

export default new Router({
  mode: "history",
  routes: [
    {
      path: "/home",
      name: "Home",
      component: Home,
      // 重定向，index 也可以访问
      redirect: "/index",
      children: [
        {
          path: "/index",
          name: "AppIndex",
          component: AppIndex,
          meta: {
            requireAuth: true // 拦截
          }
        },
        {
          path: "/library",
          name: "Library",
          component: LibraryIndex,
          meta: {
            requireAuth: true
          }
        }
      ]
    },
    {
      path: "/login",
      name: "Login",
      component: Login
    }
  ]
});
