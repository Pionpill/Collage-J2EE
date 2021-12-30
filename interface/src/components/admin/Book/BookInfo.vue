<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Rooter
 * @Date: 2021-12-25 15:21:08
 * @LastEditTime: 2021-12-30 22:31:13
-->
<template>
  <div>
    <el-dialog title="修改图书信息" :visible.sync="dialogFormVisible">
      <el-form v-model="selectedBook" style="text-align: left" ref="dataForm">
        <el-form-item label="图书名" label-width="120px" prop="title">
          <label>{{ selectedBook.title }}</label>
        </el-form-item>
        <el-form-item label="作者" label-width="120px" prop="author">
          <el-input
            v-model="selectedBook.author"
            autocomplete="off"
          ></el-input>
        </el-form-item>
        <el-form-item label="出版时间" label-width="120px" prop="date">
          <el-input v-model="selectedBook.date" autocomplete="off"> </el-input>
        </el-form-item>
        <el-form-item label="出版社" label-width="120px" prop="press">
          <el-input
            v-model="selectedBook.press"
            autocomplete="off"
          ></el-input>
        </el-form-item>
        <el-form-item label="简介" label-width="120px" prop="abs">
          <el-input v-model="selectedBook.abs" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="类别" label-width="120px" prop="category">
          <el-input v-model="selectedBook.category" autocomplete="off"></el-input>
        </el-form-item>
        <!-- <el-form-item label="密码" label-width="120px" prop="password">
          <el-button type="warning" @click="resetPassword(selectedUser)"
            >重置密码</el-button
          >
        </el-form-item> -->
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="onSubmit(selectedBook)"
          >确 定</el-button
        >
      </div>
    </el-dialog>
    <el-row style="margin: 18px 0px 0px 18px ">
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/admin/Book/BookInfo' }"
          >管理中心</el-breadcrumb-item
        >
        <el-breadcrumb-item>图书管理</el-breadcrumb-item>
        <el-breadcrumb-item>图书信息</el-breadcrumb-item>
      </el-breadcrumb>
    </el-row>
    <el-card style="margin: 18px 2%;width: 95%">
      <el-table
        :data="books"
        stripe
        :default-sort="{ prop: 'id', order: 'ascending' }"
        style="width: 100%"
        :max-height="tableHeight"
      >
        <el-table-column type="selection" width="70"> </el-table-column>
        <el-table-column prop="category" label="类别" fit> </el-table-column>
       
        <!-- <el-table-column prop="cover" label="封面" fit> </el-table-column> -->
        <el-table-column prop="title" label="书名" width="180">
        </el-table-column>
        <el-table-column prop="author" label="作者" width="180">
        </el-table-column>
        <el-table-column prop="date" label="出版时间" width="200">
        </el-table-column>
        <!-- <el-table-column prop="abs" label="简介" fit> </el-table-column> -->
        <el-table-column prop="id" label="编号" sortable width="150">
         </el-table-column>
        <!-- <el-table-column prop="permission" label="管理员" sortable width="100"> -->
          <!-- :inactive-value 必须有前缀: 因为权限是 int 值，妈的这个 BUG 真烦 -->
          <!-- <template slot-scope="scope">
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
          </template> -->
        <!-- </el-table-column> -->
        <el-table-column label="操作" width="120">
          <template slot-scope="scope">
            <el-button @click="editBook(scope.row)" type="text" size="small">
              编辑
            </el-button>
            <el-button
              @click="deleteBookButton(scope.row)"
              type="text"
              size="small"
            >
              移除
            </el-button>
          </template>
        </el-table-column>
      </el-table>
      <div style="margin: 20px 0 20px 0;float: right">
        <book-registry @onSubmit="listBooks()"></book-registry>
      </div>
    </el-card>
  </div>
</template>

<script>
import BookRegistry from "./BookRegistry";
export default {
  name: "BookInfo",
  components: { BookRegistry },
  data() {
    return {
      books: [],
      dialogFormVisible: false,
      selectedBook: []
    };
  },
  mounted: function() {
    this.loadBooks();
  },
  computed: {
    tableHeight() {
      return window.innerHeight - 320;
    }
  },
  methods: {
    loadBooks() {
      var _this = this;
      this.$axios.get("/admin/book").then(resp => {
        if (resp) {
          _this.books = resp.data;
        } else {
          alert("数据库返回数据失败！");
        }
      });
    },
    // commitPermissionChange(value, user) {
    //   if (user.username == "root") {
    //     this.$alert("禁止在前端修改超级权限组成员");
    //   } else {
    //     this.$axios.post("/admin/user/permission", user).then(resp => {
    //       if (resp.data.code === 200) {
    //         alter("DEBUG");
    //         if (value) {
    //           this.$message("用户 [" + user.username + "] 已被修改为管理员");
    //         } else {
    //           this.$message("用户 [" + user.username + "] 已被取消管理员资格");
    //         }
    //       } else {
    //         alert("后端出错");
    //       }
    //     });
    //   }
    // },

    editBook(book) {
      // if (user.username == "root") {
      //   this.$alert("超级权限不允许进行修改！");
      // } else {
        this.dialogFormVisible = true;
        this.selectedBook = book;
      // }
    },

    deleteBookButton(book) {
      // if (user.username == "root") {
      //   this.$alert("超级权限不允许进行修改！");
      // } else {
        this.$confirm("确定要删除这本书吗?", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        })
          .then(() => {
            this.deleteBook(book);
            location.reload();
          })
          .catch(() => {
            alert("DEBUG");
          });
      // }
    },

    deleteBook(book) {
      this.$axios.post("/admin/book/deleteBook", book).then(resp => {
        if (resp && resp.data.code === 200) {
          this.$alert("已删除这本书");
        }
      });
    },

    // resetPassword(user) {
    //   this.$axios.post("/admin/user/password", user).then(resp => {
    //     if (resp && resp.data.code === 200) {
    //       this.$alert("已将改用户密码已重置为 123456");
    //     }
    //   });
    // }
  }
};
</script>

<style scoped></style>
