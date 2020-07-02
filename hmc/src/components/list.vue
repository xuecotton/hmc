<template>
  <div class="listall">
    <ul>
      <li @click="insurance(0)">
        <img src="../assets/首页图片/图标蓝色/zufang.png" />
        <p>长租好房</p>
      </li>

      <li @click="insurance(1)">
        <img src="../assets/首页图片/图标蓝色/medal.png" />
        <p>品牌保证</p>
      </li>

      <li @click="insurance(2)">
        <img src="../assets/首页图片/图标蓝色/paizhao.png" />
        <p>实拍美屋</p>
      </li>

      <li @click="insurance(3)">
        <img src="../assets/首页图片/图标蓝色/jiangpai.png" />
        <p>评分最高</p>
      </li>

      <li @click="insurance(4)">
        <img src="../assets/首页图片/图标蓝色/aiqingyuehui.png" />
        <p>浪漫约会</p>
      </li>
    </ul>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  },
  methods: {
    // 路由传参方法
    insurance(keys) {
      this.$router.push({
        path: "/changxiao",
        query: {
          keys: keys
        }
      });
    }
  }
  // methods: {
  //   names(i) {
  //     return this.namesss[i - 1];
  //   },
  //   myclick: function(i) {
  //     //向公共实例传入数据
  //     this.$emit("passval", this.names(i));
  //   }
  // }
};
</script>
<style scoped>
/* 所有样式 */
.listall {
  width: 100%;
}
/* 列表样式 */
ul {
  list-style: none;
}
ul::before {
  content: "";
  display: table;
}
ul li {
  float: left;
  width: 20%;
  height: 30px;
}
ul li img {
  width: auto;
  height: 100%;
}
a {
  text-decoration: none;
  font-size: 10px;
  color: black;
}
a:active {
  color: #76d1d9;
}
/* 后一排向下 */
.sec {
  margin-top: 55px;
}
</style>