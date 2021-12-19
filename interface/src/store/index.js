/*
 * @Description: 登录拦截，储存 user 信息
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-19 11:13:07
 * @LastEditTime: 2021-12-19 11:29:58
 */

import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    user: {
      username:
        window.localStorage.getItem("user" || "[]") == null
          ? ""
          : JSON.parse(window.localStorage.getItem("user" || "[]")).username
    }
  },
  mutations: {
    login(state, user) {
      state.user = user;
      window.localStorage.setItem("user", JSON.stringify(user));
    }
  }
});
