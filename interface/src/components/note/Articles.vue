<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-30 22:30:46
 * @LastEditTime: 2021-12-30 23:49:31
-->
<template>
  <div style="margin-top: 40px">
    <!--<el-button @click="addArticle()">添加文章</el-button>-->
    <div class="articles-area">
      <el-card style="text-align: left">
        <div v-for="article in articles" :key="article.id">
          <div style="float:left;width:85%;height: 150px;">
            <el-divider content-position="left">{{ article.date }}</el-divider>
            <router-link
              class="article-link"
              :to="{ path: 'note/article', query: { id: article.id } }"
              ><span style="font-size: 20px"
                ><strong>{{ article.title }}</strong></span
              ></router-link
            >
            <p>{{ article.articleAbstract }}</p>
          </div>
          <el-divider></el-divider>
        </div>
      </el-card>
    </div>
    <el-pagination
      background
      layout="total, prev, pager, next, jumper"
      @current-change="handleCurrentChange"
      :page-size="pageSize"
      :total="total"
    >
    </el-pagination>
  </div>
</template>

<script>
export default {
  name: "Articles",
  data() {
    return {
      articles: [],
      pageSize: 4,
      total: ""
    };
  },
  mounted() {
    this.loadArticles();
  },
  methods: {
    loadArticles() {
      var _this = this;
      this.$axios.get("/article/" + this.pageSize + "/1").then(resp => {
        if (resp && resp.status === 200) {
          _this.articles = resp.data.content;
          _this.total = resp.data.totalElements;
        }
      });
    },
    handleCurrentChange(page) {
      var _this = this;
      this.$axios.get("/article/" + this.pageSize + "/" + page).then(resp => {
        if (resp && resp.status === 200) {
          _this.articles = resp.data.content;
          _this.total = resp.data.totalElements;
        }
      });
    }
  }
};
</script>

<style scoped>
.articles-area {
  width: 990px;
  height: 750px;
  margin-left: auto;
  margin-right: auto;
}

.article-link {
  text-decoration: none;
  color: #606266;
}

.article-link:hover {
  color: #409eff;
}
</style>
