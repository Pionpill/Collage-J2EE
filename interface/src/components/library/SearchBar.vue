<template>
  <div id="search">
    <el-input
      class="shadow"
      @keyup.enter.native="searchClick"
      placeholder="通过书名或作者搜索..."
      prefix-icon="el-icon-search"
      size="small"
      style="width: 400px;margin-right: 10px"
      v-model="keywords"
    >
    </el-input>
    <el-button
      class="shadow"
      size="small"
      type="primary"
      icon="el-icon-search"
      @click="searchClick"
      >搜索</el-button
    >
  </div>
</template>

<script>
export default {
  name: "SearchBar",
  data() {
    return {
      keywords: "",
      books: [],
      cardLoading: []
    };
  },
  methods: {
    searchClick() {
      this.$emit("onSearch");
    }
  }
};
</script>

<style scoped>
#search {
  margin-bottom: 30px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.shadow {
  box-shadow: 0 5px 5px rgba(0, 0, 0, 0.1), 0 1px 2px rgba(0, 0, 0, 0.1);
  border-radius: 10px;
}
</style>
