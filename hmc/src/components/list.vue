<template>
  <div class="listall">
    <ul>
      <li>
        <router-link to="/changxiao" @click="myclick(1)">
          <img src="../assets/首页图片/图标蓝色/zufang.png" />
          <p>长租好房</p>
        </router-link>
      </li>

      <li>
        <router-link to="/changxiao">
          <img src="../assets/首页图片/图标蓝色/medal.png" />
          <p>品牌保证</p>
        </router-link>
      </li>

      <li>
        <router-link to="/changxiao">
          <img src="../assets/首页图片/图标蓝色/paizhao.png" />
          <p>实拍美屋</p>
        </router-link>
      </li>

      <li>
        <router-link to="/changxiao">
          <img src="../assets/首页图片/图标蓝色/jiangpai.png" />
          <p>评分最高</p>
        </router-link>
      </li>

      <li>
        <router-link to="/changxiao">
          <img src="../assets/首页图片/图标蓝色/aiqingyuehui.png" />
          <p>浪漫约会</p>
        </router-link>
      </li>
    </ul>
  </div>
</template>
<script>
export default {
  // data() {
  //   return {
  //     namesss: ["长租好房", "品牌保证", "实拍美屋", "评分最高", "浪漫约会"]
  //   };
  // },
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