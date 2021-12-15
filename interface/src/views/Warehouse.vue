<template>
  <div>
    <table>
      <tr>
        <td>编号</td>
        <td>图书名称</td>
        <td>作者</td>
      </tr>
      <tr v-for="item in books">
        <td>{{ item.id }}</td>
        <td>{{ item.name }}</td>
        <td>{{ item.author }}</td>
      </tr>
    </table>
    {{ msg }}
  </div>
</template>

<script>
export default {
  name: "Books",
  data() {
    return {
      msg: "Hello Vue",
      books: [
        {
          id: 1,
          name: "Java 零基础实战",
          author: "Pionpill",
        },
        {
          id: 2,
          name: "Python 零基础实战",
          author: "小鸡炖蘑菇",
        },
        {
          id: 3,
          name: "JavaScript 零基础实战",
          author: "小葱拌豆腐",
        },
      ],
    };
  },
};
</script>
