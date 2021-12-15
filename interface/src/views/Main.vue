<template>
  <el-main>
    <el-table :data="tableData">
      <el-table-column prop="user" label="用户" width="140"> </el-table-column>
      <el-table-column prop="sexual" label="性别" width="140">
      </el-table-column>
      <el-table-column prop="date" label="日期" width="140"> </el-table-column>
      <el-table-column prop="name" label="名称" width="120"> </el-table-column>
      <el-table-column prop="address" label="地址"> </el-table-column>
    </el-table>
  </el-main>
</template>

<script>
export default {
  data() {
    const item = {
      user: "吴鼎",
      sexual: "男",
      date: "2021-12-12",
      name: "J2EE 课设",
      address: "南京信息工程大学",
    };
    return {
      tableData: Array(10).fill(item),
    };
  },
};
</script>
