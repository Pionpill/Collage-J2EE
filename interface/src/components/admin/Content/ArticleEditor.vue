<!--
 * @Description: 编辑器
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-29 20:47:18
 * @LastEditTime: 2021-12-30 22:14:32
-->
<template>
  <div>
    <el-row style="margin: 18px 0px 0px 18px ">
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/admin/content/book' }"
          >内容管理</el-breadcrumb-item
        >
        <el-breadcrumb-item :to="{ path: '/admin/content/article' }"
          >文章管理</el-breadcrumb-item
        >
        <el-breadcrumb-item>编辑器</el-breadcrumb-item>
      </el-breadcrumb>
    </el-row>
    <el-row>
      <el-input
        v-model="article.title"
        style="margin: 10px 0px;font-size: 18px;"
        placeholder="请输入标题"
      ></el-input>
    </el-row>
    <el-row style="height: calc(100vh - 140px);">
      <mavon-editor
        v-model="article.content_md"
        style="height: 100%;"
        ref="md"
        @save="saveArticles"
        fontSize="16px"
      >
        <button
          type="button"
          class="op-icon el-icon-document"
          :title="'摘要/封面'"
          slot="left-toolbar-after"
          @click="dialogVisible = true"
        ></button>
      </mavon-editor>

      <el-dialog :visible.sync="dialogVisible" width="30%">
        <el-divider content-position="left">摘要</el-divider>
        <el-input
          type="textarea"
          v-model="article.abstract"
          rows="6"
          maxlength="255"
          show-word-limit
        ></el-input>
        <span slot="footer" class="dialog-footer">
          <el-button @click="dialogVisible = false">取 消</el-button>
          <el-button type="primary" @click="dialogVisible = false"
            >确 定</el-button
          >
        </span>
      </el-dialog>
    </el-row>
  </div>
</template>

<script>
export default {
  name: "Editor",
  data() {
    return {
      article: {},
      dialogVisible: false
    };
  },
  mounted() {
    if (this.$route.params.article) {
      this.article = this.$route.params.article;
    }
  },
  methods: {
    saveArticles(value, render) {
      // value 是 md，render 是 html
      this.$confirm("是否保存并发布文章?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      })
        .then(() => {
          this.$axios
            .post("/admin/content/article", {
              id: this.article.id,
              title: this.article.title,
              content_md: value,
              content_html: render,
              articleAbstract: this.article.abstract,
              date: new Date()
            })
            .then(resp => {
              if (resp && resp.data.code === 200) {
                this.$message({
                  type: "info",
                  message: "已保存成功"
                });
              }
            });
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消发布"
          });
        });
    }
  }
};
</script>
