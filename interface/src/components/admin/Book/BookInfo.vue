<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-25 15:21:08
 * @LastEditTime: 2021-12-31 12:06:04
-->
<template>
  <div>
    <el-dialog title="修改图书信息" :visible.sync="dialogFormVisible">
      <el-form v-model="selectedBook" style="text-align: left" ref="dataForm">
        <el-form-item label="图书名" label-width="120px" prop="title">
          <label>{{ selectedBook.title }}</label>
        </el-form-item>
        <el-form-item label="作者" label-width="120px" prop="author">
          <el-input v-model="selectedBook.author" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="出版时间" label-width="120px" prop="date">
          <el-input v-model="selectedBook.date" autocomplete="off"> </el-input>
        </el-form-item>
        <el-form-item label="出版社" label-width="120px" prop="press">
          <el-input v-model="selectedBook.press" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="简介" label-width="120px" prop="abs">
          <el-input v-model="selectedBook.abs" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="类别" label-width="120px" prop="category">
          <el-input
            v-model="selectedBook.category"
            autocomplete="off"
          ></el-input>
        </el-form-item>
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
        <el-table-column prop="id" label="编号" sortable width="100">
        </el-table-column>
        <el-table-column prop="category.name" label="类别" width="150">
        </el-table-column>

        <el-table-column prop="title" label="书名" fit> </el-table-column>
        <el-table-column prop="author" label="作者" width="180">
        </el-table-column>
        <el-table-column prop="date" label="出版时间" width="150">
        </el-table-column>
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

    editBook(book) {
      this.dialogFormVisible = true;
      this.selectedBook = book;
    },

    deleteBookButton(book) {
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
    },

    deleteBook(book) {
      this.$axios.post("/admin/book/deleteBook", book).then(resp => {
        if (resp && resp.data.code === 200) {
          this.$alert("已删除这本书");
        }
      });
    },

    onSubmit() {
      this.$axios
        .post("/books", {
          id: this.form.id,
          cover: this.form.cover,
          title: this.form.title,
          author: this.form.author,
          date: this.form.date,
          press: this.form.press,
          abs: this.form.abs,
          category: this.form.category
        })
        .then(resp => {
          if (resp && resp.status === 200) {
            this.dialogFormVisible = false;
            this.$emit("onSubmit");
          }
        });
    }
  }
};
</script>

<style scoped></style>
