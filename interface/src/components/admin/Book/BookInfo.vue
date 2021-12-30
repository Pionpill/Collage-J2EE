<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-25 15:21:08
 * @LastEditTime: 2021-12-30 16:36:15
-->
<template>
  <div>
    <el-dialog title="修改用户信息" :visible.sync="dialogFormVisible">
      <el-form v-model="selectedUser" style="text-align: left" ref="dataForm">
        <el-form-item label="用户名" label-width="120px" prop="username">
          <label>{{ selectedUser.username }}</label>
        </el-form-item>
        <el-form-item label="真实姓名" label-width="120px" prop="name">
          <el-input
            v-model="selectedUser.realName"
            autocomplete="off"
          ></el-input>
        </el-form-item>
        <el-form-item label="邮箱" label-width="120px" prop="email">
          <el-input v-model="selectedUser.email" autocomplete="off"> </el-input>
        </el-form-item>
        <el-form-item label="学院" label-width="120px" prop="email">
          <el-input
            v-model="selectedUser.academy"
            autocomplete="off"
          ></el-input>
        </el-form-item>
        <el-form-item label="专业" label-width="120px" prop="email">
          <el-input v-model="selectedUser.major" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="密码" label-width="120px" prop="password">
          <el-button type="warning" @click="resetPassword(selectedUser)"
            >重置密码</el-button
          >
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="onSubmit(selectedUser)"
          >确 定</el-button
        >
      </div>
    </el-dialog>
    <el-row style="margin: 18px 0px 0px 18px ">
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/admin/User/UserInfo' }"
          >管理中心</el-breadcrumb-item
        >
        <el-breadcrumb-item>用户管理</el-breadcrumb-item>
        <el-breadcrumb-item>用户信息</el-breadcrumb-item>
      </el-breadcrumb>
    </el-row>
    <el-card style="margin: 18px 2%;width: 95%">
      <el-table
        :data="users"
        stripe
        :default-sort="{ prop: 'id', order: 'ascending' }"
        style="width: 100%"
        :max-height="tableHeight"
      >
        <el-table-column type="selection" width="55"> </el-table-column>
        <el-table-column prop="id" label="编号" sortable width="150">
        </el-table-column>
        <el-table-column prop="username" label="用户名" fit> </el-table-column>
        <el-table-column prop="realName" label="真实姓名" fit>
        </el-table-column>
        <el-table-column prop="sexual" label="性别" width="80">
        </el-table-column>
        <el-table-column prop="email" label="邮箱" width="200">
        </el-table-column>
        <el-table-column prop="academy" label="学院" fit> </el-table-column>
        <el-table-column prop="major" label="专业" fit> </el-table-column>
        <el-table-column prop="permission" label="管理员" sortable width="100">
          <!-- :inactive-value 必须有前缀: 因为权限是 int 值，妈的这个 BUG 真烦 -->
          <template slot-scope="scope">
            <el-switch
              v-model="scope.row.permission"
              active-color="#13ce66"
              inactive-color="#ff4949"
              :inactive-value="2"
              :active-value="1"
              @change="value => commitPermissionChange(value, scope.row)"
            >
              >
            </el-switch>
          </template>
        </el-table-column>
        <el-table-column label="操作" width="120">
          <template slot-scope="scope">
            <el-button @click="editUser(scope.row)" type="text" size="small">
              编辑
            </el-button>
            <el-button
              @click="deleteUserButton(scope.row)"
              type="text"
              size="small"
            >
              移除
            </el-button>
          </template>
        </el-table-column>
      </el-table>
      <div style="margin: 20px 0 20px 0;float: right">
        <book-registry @onSubmit="listUsers()"></book-registry>
      </div>
    </el-card>
  </div>
</template>

<script>
import BookRegistry from "./BookRegistry";
export default {
  name: "UserInfo",
  components: { BookRegistry },
  data() {
    return {
      users: [],
      dialogFormVisible: false,
      selectedUser: []
    };
  },
  mounted: function() {
    this.loadUsers();
  },
  computed: {
    tableHeight() {
      return window.innerHeight - 320;
    }
  },
  methods: {
    loadUsers() {
      var _this = this;
      this.$axios.get("/admin/user").then(resp => {
        if (resp) {
          _this.users = resp.data;
        } else {
          alert("数据库返回数据失败！");
        }
      });
    },
    commitPermissionChange(value, user) {
      if (user.username == "root") {
        this.$alert("禁止在前端修改超级权限组成员");
      } else {
        this.$axios.post("/admin/user/permission", user).then(resp => {
          if (resp.data.code === 200) {
            alter("DEBUG");
            if (value) {
              this.$message("用户 [" + user.username + "] 已被修改为管理员");
            } else {
              this.$message("用户 [" + user.username + "] 已被取消管理员资格");
            }
          } else {
            alert("后端出错");
          }
        });
      }
    },

    editUser(user) {
      if (user.username == "root") {
        this.$alert("超级权限不允许进行修改！");
      } else {
        this.dialogFormVisible = true;
        this.selectedUser = user;
      }
    },

    deleteUserButton(user) {
      if (user.username == "root") {
        this.$alert("超级权限不允许进行修改！");
      } else {
        this.$confirm("确定要删除该用户吗?", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        })
          .then(() => {
            this.deleteUser(user);
            location.reload();
          })
          .catch(() => {
            alert("DEBUG");
          });
      }
    },

    deleteUser(user) {
      this.$axios.post("/admin/user/deleteUser", user).then(resp => {
        if (resp && resp.data.code === 200) {
          this.$alert("已删除该用户");
        }
      });
    },

    resetPassword(user) {
      this.$axios.post("/admin/user/password", user).then(resp => {
        if (resp && resp.data.code === 200) {
          this.$alert("已将改用户密码已重置为 123456");
        }
      });
    }
  }
};
</script>

<style scoped></style>
