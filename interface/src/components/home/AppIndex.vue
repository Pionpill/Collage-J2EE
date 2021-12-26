<!--
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-17 00:40:47
 * @LastEditTime: 2021-12-26 19:49:10
-->
<template>
  <div class="index">
    <div class="cards">
      <div class="card">
        <h2>笔记本</h2>
        <p>笔记本功能区可以书写各种备注</p>
        <button class="button" @click="jump('notebook')">
          进入笔记本
        </button>
      </div>
      <div class="card">
        <h2>图书馆</h2>
        <p>
          图书馆提供了计算机类的各色书籍，你可以在那里查阅各种书籍的信息，增加或修改书籍。
        </p>
        <button class="button" @click="jump('library')">
          进入图书馆
        </button>
      </div>
      <div class="card">
        <h2>管理中心</h2>
        <p>
          如果你是管理员的话，你还可以进入管理中心，对整个网站的运行进行监控，对用户个人信息与权限进行修改
        </p>
        <button class="button" @click="jump('admin')">进入管理中心</button>
      </div>
    </div>
    <div class="words">
      <h2>《{{ saying.book }}》:{{ saying.saying }}</h2>
    </div>
    <div class="author">
      <p>{{ saying.author }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: "AppIndex",
  data() {
    return {
      saying: {}
    };
  },
  mounted: function() {
    this.getRandomSaying();
  },
  methods: {
    getRandomSaying() {
      var _this = this;
      this.$axios.get("/welcome").then(resp => {
        if (resp && resp.status === 200) {
          _this.saying = resp.data;
        }
      });
    },
    jump(url) {
      this.$router.replace({ path: url });
    }
  }
};
</script>

<style scoped>
.index {
  width: 100vw;
  height: 100vh;
  background: -webkit-linear-gradient(left, #ffe985, #fa742b);
}

.cards {
  padding-top: 50px;
  text-align: center;
  display: flex;
  justify-content: center;
  align-items: center;
}

.card {
  width: 250px;
  height: 400px;
  background-color: gray;
  margin-left: 30px;
  margin-top: 30px;
  border-radius: 30px;
  background: rgba(255, 255, 255, 0.2);
  backdrop-filter: blur(4px);
  box-shadow: 0 19px 38px rgba(0, 0, 0, 0.3), 0 15px 12px rgba(0, 0, 0, 0.1);
  padding: 50px;
  overflow: hidden;
}

.card h2 {
  font-size: 32px;
}

.card p {
  font-size: 24px;
  text-align: left;
}

.card:hover {
  background: rgba(255, 255, 255, 0.5);
}

.button {
  background: #3498db;
  width: 150px;
  height: 40px;
  padding: 4px 0;
  position: absolute;
  left: 50%;
  top: 80%;
  transform: translateX(-50%) translateY(-50%);
  border-radius: 3px;
  border-width: 0;
  font-size: 18px;
  color: white;
}

.button:hover {
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.3), 0 5px 5px rgba(0, 0, 0, 0.1);
}

.words {
  margin-top: 100px;
  background: rgba(1, 1, 1, 0.05);
  width: 100vw;
  height: 50pt;
  text-align: center;
  display: flex;
  justify-content: center;
  align-items: center;
}

.words h2 {
  opacity: 0.9;
}

.author {
  opacity: 0.5;
}
</style>
