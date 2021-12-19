/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-18 13:28:14
 * @LastEditTime: 2021-12-19 11:28:05
 */
import ElementUI from "element-ui";
import "element-ui/lib/theme-chalk/index.css";
import Vue from "vue";
import App from "./App";
import router from "./router";
import store from "./store";

// 设置反向代理，前端请求默认发送到 http://localhost:8484/api
var axios = require("axios");
axios.defaults.baseURL = "http://localhost:8484/api";
// 全局注册，之后可在其他组件中通过 this.$axios 发送数据
Vue.prototype.$axios = axios;
Vue.config.productionTip = false;

Vue.use(ElementUI);

router.beforeEach((to, from, next) => {
  if (to.meta.requireAuth) {
    if (store.state.user.username) {
      next();
    } else {
      next({
        path: "login",
        query: { redirect: to.fullPath } // 存储访问的路径，方便在登录后访问
      });
    }
  } else {
    next();
  }
});

new Vue({
  el: "#app",
  render: h => h(App),
  router,
  store,
  components: { App },
  template: "<App/>"
});
