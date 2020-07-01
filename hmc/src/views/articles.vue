<template>
  <div class="app">
    <!-- 顶部导航及头像开始-->
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
    <!-- 顶部顶部导航及头像开始 -->
    <!-- 轮播图 -->
    <div id="carousel">
      <mt-swipe id="carousel_list" :auto="3000" continuous>
        <mt-swipe-item id="carousel_item">
          <img src="../assets/images/swipe01.jpg" alt />
        </mt-swipe-item>
        <mt-swipe-item id="carousel_item">
          <img src="../assets/images/swipe02.jpg" alt />
        </mt-swipe-item>
        <mt-swipe-item id="carousel_item">
          <img src="../assets/images/swipe03.jpg" alt />
        </mt-swipe-item>
        <mt-swipe-item id="carousel_item">
          <img src="../assets/images/swipe04.jpg" alt />
        </mt-swipe-item>
      </mt-swipe>
    </div>
    <!-- 轮播图结束 -->

    <!-- 瀑布流 -->
    <WaterList></WaterList>
  </div>
</template>
// <script>
import WaterList from "../components/WaterList";
export default {
  data() {
    return {
      isLogin: false
    };
  },
  components: {
    WaterList
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
.top {
  width: 100%;
  height: 25px;
  font-size: 10px;
  margin-top: 15px;
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

#carousel {
  margin-top: 15px;
  width: 100%;
  height: 125px;
}
#carousel_list {
  width: 90%;
  margin: 0 auto;
  height: 125px;
}
#carousel_item > img {
  width: 100%;
  margin: 0 auto;
  height: 120px;
  border-radius: 5px;
}
</style>
