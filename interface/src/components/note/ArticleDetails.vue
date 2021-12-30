<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-30 23:51:51
 * @LastEditTime: 2021-12-31 00:52:22
-->
<template>
  <div class="articles-area">
    <el-card style="text-align: left;width: 990px;margin: 35px auto 0 auto">
      <div>
        <span style="font-size: 20px"
          ><strong>{{ article.title }}</strong></span
        >
        <el-divider content-position="left">{{ article.date }}</el-divider>
        <div class="markdown-body">
          <div v-html="article.content_html"></div>
        </div>
      </div>
    </el-card>
  </div>
</template>

<script>
export default {
  name: "ArticleDetails",
  data() {
    return {
      article: []
    };
  },
  mounted() {
    this.loadArticle();
  },
  methods: {
    loadArticle() {
      var _this = this;
      this.$axios.get("note/article/" + this.$route.query.id).then(resp => {
        if (resp) {
          _this.article = resp.data;
        }
      });
    }
  }
};
</script>

<style scoped>
@import "../../styles/markdown.css";
</style>
