<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-27 17:06:24
 * @LastEditTime: 2021-12-31 12:00:49
-->
<template>
  <div id="poster">
    <el-button
      class="add-button"
      type="success"
      @click="dialogFormVisible = true"
      >添加书本</el-button
    >
    <el-dialog
      title="添加图书"
      :visible.sync="dialogFormVisible"
      @close="clear"
      style="font-weight:600"
    >
      <el-form v-model="form" style="text-align: left" ref="dataForm">
        <el-form-item label="书名" :label-width="formLabelWidth" prop="title">
          <el-input
            v-model="form.title"
            autocomplete="off"
            placeholder="J2EE 从入门到入土"
          ></el-input>
        </el-form-item>
        <el-form-item label="作者" :label-width="formLabelWidth" prop="author">
          <el-input v-model="form.author" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item
          label="出版日期"
          :label-width="formLabelWidth"
          prop="date"
        >
          <el-input v-model="form.date" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="出版社" :label-width="formLabelWidth" prop="press">
          <el-input v-model="form.press" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="封面" :label-width="formLabelWidth" prop="cover">
          <el-input
            v-model="form.cover"
            autocomplete="off"
            placeholder="图片 URL"
          ></el-input>
        </el-form-item>
        <el-form-item label="简介" :label-width="formLabelWidth" prop="abs">
          <el-input
            type="textarea"
            v-model="form.abs"
            autocomplete="off"
          ></el-input>
        </el-form-item>
        <el-form-item label="分类" :label-width="formLabelWidth" prop="cid">
          <el-select v-model="form.category.id" placeholder="请选择分类">
            <el-option label="计算机基础" value="1"></el-option>
            <el-option label="前端开发" value="2"></el-option>
            <el-option label="后端开发" value="3"></el-option>
            <el-option label="人工智能" value="4"></el-option>
            <el-option label="游戏开发" value="5"></el-option>
            <el-option label="大数据" value="6"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item prop="id" style="height: 0">
          <el-input
            type="hidden"
            v-model="form.id"
            autocomplete="off"
          ></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="onSubmit">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
export default {
  name: "EditForm",
  data() {
    return {
      dialogFormVisible: false,
      form: {
        id: "",
        title: "",
        author: "",
        date: "",
        press: "",
        cover: "",
        abs: "",
        category: {
          id: "",
          name: ""
        }
      },
      formLabelWidth: "120px"
    };
  },
  methods: {
    clear() {
      this.form = {
        id: "",
        title: "",
        author: "",
        date: "",
        press: "",
        cover: "",
        abs: "",
        category: ""
      };
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

<style scoped>
.el-icon-circle-plus-outline {
  margin: 50px 0 0 20px;
  font-size: 80px;
  float: left;
  cursor: pointer;
  border: 2px solid #fff;
  border-radius: 50px;
}

.el-icon-circle-plus-outline:hover {
  color: rgb(1, 94, 95);
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3), 0 15px 12px rgba(0, 0, 0, 0.22);
}

.el-dialog {
  font-weight: 600;
}

.el-form-item {
  font-weight: 600;
}

#poster {
}
</style>
