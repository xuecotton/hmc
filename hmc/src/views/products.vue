<template>
  <div class="app">
    <div class="allbg"></div>
    <!-- 顶部导航及头像开始-->
    <mt-title>
      <div class="top">
        <span class="title">发现</span>
        <span calss="option" id="citys">
          <select name="北京" class="citys">
            <option value="北京">北京</option>
            <option value="上海">上海</option>
          </select>
          <span></span>
        </span>
        <span class="avatar" v-if="isLogin"></span>
      </div>
    </mt-title>

    <!-- 顶部顶部导航及头像开始 -->

    <!-- 中间导航栏 -->
    <!-- <mt-navbar v-model="selected">
      <mt-tab-item id="jx">精选</mt-tab-item>
      <mt-tab-item id="scrb">收藏热榜</mt-tab-item>
      <mt-tab-item id="qz">亲子房</mt-tab-item>
    </mt-navbar>-->
    <!-- <div id="navbar">
      <ul class="bar_list">
        <li class="bitem">
         
          <span class="select"></span>
        </li>
        <li class="bitem">
          
          <span class="select"></span>
        </li>
        <li class="bitem">
          
          <span class="select"></span>
        </li>
      </ul>
    </div>-->
    <!-- 中间导航结束 -->
    <!-- 轮播图 -->
    <wanghong class="wht"></wanghong>
    <!-- 轮播图结束 -->
    <!-- 商品列表 -->
    <gongyv></gongyv>
  </div>
</template>
// <script>
import gongyv from "./gongyv";
import wanghong from "../components/wanghong";
export default {
  data() {
    return {
      isLogin: false
    };
  },
  components: {
    gongyv,
    wanghong
  },
  mounted() {
    // 判断登录与否
    if (sessionStorage.getItem("isLogined") != null) {
      this.isLogin = true;
    }
  }
};
</script>


<style scoped>
/* 顶部城市选择样式 */
.app {
  margin-top: -40px;
}
.top {
  position: fixed;
  top: 0px;
  width: 100%;
  background-color: #fff;
  height: 45px;
  font-size: 10px;

  z-index: 999;
}
.title {
  font-size: 20px;
  margin-right: 5px;
  margin-left: 15px;
}

#citys {
  padding: 15px 5px 0px 5px;
  display: inline-block;
  width: 30px;
  position: relative;
  overflow: hidden;
}
#citys > span {
  content: "";
  background-color: #000;
  width: 6px;
  height: 6px;
  position: absolute;
  bottom: -2.5px;
  right: -3px;
  transform: rotate(45deg);
}
.citys {
  border: none;
}
/* 头像 */
.avatar {
  display: inline-block;
  float: right;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  margin-right: 15px;
  background-image: url("../assets/images/avatar.jpg");
  background-position: center;
  background-size: contain;
  vertical-align: sub;
}
/* 撑开没宽度的头像框 */
.avatar::before {
  content: "";
}
/* 轮播图 */
.wht {
  margin-top: 65px;
}
/* 中间导航 */
#navbar {
  width: 100%;
  height: 20px;
  margin: 25px 0 15px 0;
  background-color: #fff;
}
#navbar .bar_list {
  width: 100%;
  height: 20px;
  display: flex;
  flex-flow: row;
  justify-content: center;
}
.bitem {
  width: 160px;
  text-align: center;
  margin: 0 25px;
  display: flex;
  flex-flow: column;
  justify-content: center;
}
.select {
  width: 15px;
  margin: 0 auto;
  margin-top: 5px;
  border-top: 2px solid #fef;
}
/* 导航栏激活后样式 */
.selected {
  border-top: 2px solid yellow;
}

/* 背景图 */
.allbg {
  top: 45px;
  background: url(../assets/houseimg/后院驿站/白天外景图.jpg);
  background-size: contain;
  height: 100%;
  width: 100%;
  position: fixed;
  opacity: 0.2;
}
</style>
