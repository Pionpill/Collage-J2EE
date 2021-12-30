<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Rooter
 * @Date: 2021-12-27 17:06:24
 * @LastEditTime: 2021-12-30 23:10:45
-->
<template>
  <div style="text-align: left">
    <el-button
      class="add-button"
      type="success"
      @click="dialogFormVisible = true"
      >添加书本</el-button
    >
    <el-dialog
      title="添加书本"
      :visible.sync="dialogFormVisible"
      @close="clear"
      width="50%"
    >
      <el-form :model="loginForm" :rules="rules" label-position="left">
        <el-form-item label="编号" prop="id">
          <el-input
            type="text"
            v-model="loginForm.id"
            auto-complete="off"
            placeholder="书的编号"
          ></el-input>
        </el-form-item>

        <!-- <el-form-item label="封面" prop="cover">
          <el-input
            type="text"
            v-model="loginForm.cover"
            auto-complete="off"
            placeholder="图片"
          ></el-input>
        </el-form-item> -->

        <el-form-item label="书名" prop="title">
          <el-input
            type="text"
            v-model="loginForm.title"
            auto-complete="off"
            placeholder="书名"
          ></el-input>
        </el-form-item>

        <el-form-item label="作者" prop="author">
          <el-input
            type="text"
            v-model="loginForm.author"
            auto-complete="off"
            placeholder="作者"
          ></el-input>
        </el-form-item>

          <el-form-item label="出版时间" prop="date">
          <el-input
            type="text"
            v-model="loginForm.date"
            auto-complete="off"
            placeholder="出版时间"
          ></el-input>
        </el-form-item>

        <!-- <el-form-item label="性别" label-width="50px">
          <el-select v-model="loginForm.sexual">
            <el-option :value="男" label="男"></el-option>
            <el-option :value="女" label="女"></el-option>
            <el-option :value="默认" label="默认"></el-option>
          </el-select>
        </el-form-item> -->

        <!-- <el-form-item label="权限" label-width="50px">
          <el-select v-model="loginForm.permission">
            <el-option :value="0" label="超级权限"></el-option>
            <el-option :value="1" label="管理员"></el-option>
            <el-option :value="2" label="普通用户"></el-option>
          </el-select>
        </el-form-item> -->

        <el-form-item label="出版社" prop="press">
          <el-input
            type="text"
            v-model="loginForm.press"
            auto-complete="off"
            placeholder="出版社"
          ></el-input>
        </el-form-item>

        <!-- <el-form-item label="简介" prop="abs">
          <el-input
            type="text"
            v-model="loginForm.abs"
            auto-complete="off"
            placeholder="简介"
          ></el-input>
        </el-form-item> -->

        <el-form-item label="类别" prop="category">
          <el-input
            type="text"
            v-model="loginForm.category"
            auto-complete="off"
            placeholder="类别"
          ></el-input>
        </el-form-item>

        <el-form-item style="width: 100%">
          <el-button
            type="primary"
            style="width: 40%;background: #505458;border: none"
            @click="register"
            >添加</el-button
          >
        </el-form-item>
      </el-form>
    </el-dialog>
  </div>
</template>

<script>
export default {
  name: "BookRegistry",
  data() {
    return {
      dialogFormVisible: false,
      rules: {
        bookname: [
          { required: true, message: "书名不能为空", trigger: "blur" }
        ],
        author: [
          { required: true, message: "作者不能为空", trigger: "blur" }
        ],
        id: [
          { required: true, message: "编号不能为空", trigger: "blur" }
        ],
        date: [{ required: true, message: "出版时间不能为空", trigger: "blur" }]
      },
      loginForm: {
        category: "",
        title: "",
        author: "",
        date: "",
        press: "",
        id: "",
      },
    };
  },
  methods: {
    clear() {
      this.loginForm = {
        bookname: "",
        author: "",
        date: "",
        press: "",
        cid: ""
      };
    },
    register() {
      this.$axios
        .post("/registerBook", this.loginForm)
        .then(successResponse => {
          if (successResponse.data.code === 200) {
            this.$alert("成功注册");
          } else if (successResponse.data.code === 400) {
            alert("这个编号已被注册!!!");
          }
        })
        .catch(failResponse => {});
    }
  }
};
</script>

<style scoped>
.add-button {
  margin: 18px 0 0 10px;
}
</style>
