<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-27 17:06:24
 * @LastEditTime: 2021-12-31 12:01:05
-->
<template>
  <div style="text-align: left">
    <el-button
      class="add-button"
      type="success"
      @click="dialogFormVisible = true"
      >添加用户</el-button
    >
    <el-dialog
      title="添加用户"
      :visible.sync="dialogFormVisible"
      @close="clear"
      width="50%"
    >
      <el-form :model="loginForm" :rules="rules" label-position="left">
        <el-form-item label="学号(工作号)" prop="id">
          <el-input
            type="text"
            v-model="loginForm.id"
            auto-complete="off"
            placeholder="12位学号"
          ></el-input>
        </el-form-item>

        <el-form-item label="真实姓名" prop="realName">
          <el-input
            type="text"
            v-model="loginForm.realName"
            auto-complete="off"
            placeholder="身份证姓名"
          ></el-input>
        </el-form-item>

        <el-form-item label="用户名" prop="username">
          <el-input
            type="text"
            v-model="loginForm.username"
            auto-complete="off"
            placeholder="用户名"
          ></el-input>
        </el-form-item>

        <el-form-item label="密码" prop="password">
          <el-input
            type="password"
            v-model="loginForm.password"
            auto-complete="off"
            placeholder="密码"
          ></el-input>
        </el-form-item>

        <el-form-item label="性别" label-width="50px" prop="sexual">
          <el-select v-model="loginForm.sexual">
            <el-option v-for="item in sexual" :key="item" :value="item">
            </el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="权限" label-width="50px" prop="permission">
          <el-select v-model="loginForm.permission">
            <el-option
              v-for="item in permission"
              :label="item.label"
              :value="item.value"
            >
            </el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="邮箱" prop="email">
          <el-input
            type="email"
            v-model="loginForm.email"
            auto-complete="off"
            placeholder="邮箱"
          ></el-input>
        </el-form-item>

        <el-form-item label="学院" prop="academy">
          <el-input
            type="text"
            v-model="loginForm.academy"
            auto-complete="off"
            placeholder="学院"
          ></el-input>
        </el-form-item>

        <el-form-item label="专业" prop="major">
          <el-input
            type="text"
            v-model="loginForm.major"
            auto-complete="off"
            placeholder="专业"
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
  name: "UserRegistry",
  data() {
    return {
      dialogFormVisible: false,
      rules: {
        username: [
          { required: true, message: "用户名不能为空", trigger: "blur" }
        ],
        password: [
          { required: true, message: "密码不能为空", trigger: "blur" }
        ],
        id: [
          { required: true, message: "学号(工作号)不能为空", trigger: "blur" }
        ],
        email: [{ required: true, message: "邮箱不能为空", trigger: "blur" }]
      },
      loginForm: {
        id: "",
        realName: "",
        username: "",
        password: "",
        sexual: "",
        permission: "",
        email: "",
        academy: "",
        major: ""
      },
      sexual: ["男", "女", "默认"],
      permission: [
        {
          value: 1,
          label: "管理员"
        },
        {
          value: 2,
          label: "普通用户"
        }
      ]
    };
  },
  methods: {
    clear() {
      this.loginForm = {
        username: "",
        password: "",
        name: "",
        phone: "",
        email: ""
      };
    },
    register() {
      this.$axios
        .post("/admin/register", this.loginForm)
        .then(successResponse => {
          if (successResponse.data.code === 200) {
            this.$alert("成功注册");
          } else if (successResponse.data.code === 400) {
            alert("这个学号或邮箱已被注册!!!");
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
