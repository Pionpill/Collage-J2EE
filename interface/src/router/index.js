/*
 * @Description: 路由配置
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-18 13:28:14
 * @LastEditTime: 2021-12-31 01:07:37
 */
import Vue from "vue";
import Router from "vue-router";
import Editor from "../components/admin/Content/ArticleEditor.vue";
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
        },
        {
          path: "/note",
          name: "note",
          component: () => import("../components/note/Articles")
        },
        {
          path: "/note/article",
          name: "Article",
          component: () => import("../components/note/ArticleDetails")
        }
      ]
    },
    {
      path: "/login",
      name: "Login",
      component: Login
    },
    {
      path: "/admin",
      name: "Admin",
      component: () => import("../components/admin/AdminIndex"),
      meta: {
        requireAuth: true
      },
      children: [
        {
          path: "/admin/User/UserInfo",
          name: "UserInfo",
          component: () => import("../components/admin/User/UserInfo"),
          meta: {
            requireAuth: true
          }
        },
        {
          path: "/admin/Book/BookInfo",
          name: "BookInfo",
          component: () => import("../components/admin/Book/BookInfo"),
          meta: {
            requireAuth: true
          }
        },
        {
          path: "/admin/Content/Editor",
          name: "Editor",
          component: Editor,
          meta: {
            requireAuth: true
          }
        },
        {
          path: "/admin/Content/Management",
          name: "ContentManagement",
          component: () =>
            import("../components/admin/Content/ArticleManagement"),
          meta: {
            requireAuth: true
          }
        }
      ]
    }
  ]
});
