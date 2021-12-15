<template>
  <div>
    <el-container style="height: 100vh; border: 1px solid #eee">
      <el-aside
        width="200px"
        height="10vwh"
        style="background-color: rgb(238, 241, 246)"
      >
        <el-menu :default-openeds="['1', '2', '3']" :default-active="['1-1']">
          <el-submenu index="1">
            <template slot="title">
              <i class="el-icon-message"></i>人员管理
            </template>
            <el-menu-item index="1-1">增添新用户</el-menu-item>
            <el-menu-item index="1-2">修改用户权限组</el-menu-item>
            <el-submenu index="1-3">
              <template slot="title">修改用户信息</template>
              <el-menu-item index="1-3-1">修改基础信息</el-menu-item>
              <el-menu-item index="1-3-2">修改权限信息</el-menu-item>
            </el-submenu>
          </el-submenu>

          <el-submenu index="2">
            <template slot="title">
              <i class="el-icon-menu"></i>货物管理
            </template>
            <el-menu-item index="2-1"> 增减货物 </el-menu-item>
            <el-menu-item index="2-2"> 创建新货物 </el-menu-item>
            <el-menu-item index="2-3"> 删除货物 </el-menu-item>
            <el-menu-item index="2-4"> 货物信息 </el-menu-item>
          </el-submenu>
          <el-submenu index="3">
            <template slot="title">
              <i class="el-icon-setting"></i>仓库管理
            </template>
            <el-menu-item index="3-1"> 仓库记录 </el-menu-item>
          </el-submenu>
        </el-menu>
      </el-aside>

      <el-container>
        <el-header style="text-align: right; font-size: 12px">
          <el-dropdown>
            <i class="el-icon-setting" style="margin-right: 15px"></i>
            <el-dropdown-menu slot="dropdown">
              <el-dropdown-item>查看</el-dropdown-item>
              <el-dropdown-item>新增</el-dropdown-item>
              <el-dropdown-item>删除</el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
          <span>J2EE 课设</span>
        </el-header>

        <router-view> </router-view>
        <!-- <el-main>
          <el-table :data="tableData">
            <el-table-column prop="date" label="日期" width="140">
            </el-table-column>
            <el-table-column prop="name" label="姓名" width="120">
            </el-table-column>
            <el-table-column prop="address" label="地址"> </el-table-column>
          </el-table>
        </el-main> -->
      </el-container>
    </el-container>
  </div>
</template>

<style>
.el-header {
  background-color: #b3c0d1;
  color: #333;
  line-height: 60px;
}

.el-aside {
  color: #333;
}
</style>

<script></script>
