<template>
  <div class="app articles">
    <!-- 顶部导航及头像开始-->
    <div class="top">
      <span class="title">发现</span>
      <span calss="option" id="citys">
        北京
        <span></span>
      </span>
      <span class="avatar"></span>
    </div>
    <!-- 顶部顶部导航及头像开始 -->
    <!-- 轮播图 -->
    <div id="carousel">
      <mt-swipe id="carousel_list" :auto="3000" continuous showIndicators>
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
    <!-- 中间导航栏 -->
    <div id="navbar">
      <ul class="bar_list">
        <li class="bitem">
          精选
          <span class="select"></span>
        </li>
        <li class="bitem">
          收藏热榜
          <span class="select"></span>
        </li>
        <li class="bitem">
          亲子房
          <span class="select"></span>
        </li>
      </ul>
    </div>
    <!-- 瀑布流 -->
    <keep-alive>
    <waterfall class="waterfall"></waterfall>
    </keep-alive>
    <!-- <div class="waterfall">
      <div id="box">
        <div id="box_item">
          <router-link to="/article">
            <img src="../assets/images/fall11.jpg" alt="">
          </router-link>
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <router-link to="/article">
              <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            </router-link>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall112.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall113.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall114.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall124.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall123.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall122.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall121.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
      </div>
    </div>-->
    <mt-tabbar fixed v-model="act" class="tabbar">
        <div class="pad"></div>
        <mt-tab-item id="/">
          <router-link to="/"  slot="icon">
          <img id="bug1img" src="../assets/tabbar/蓝色/fangzi.png" alt=""   v-if="act=='/'">
          <img src="../assets/tabbar/灰色/fangzi.png" alt=""  v-else>
          </router-link>
        </mt-tab-item>
        <mt-tab-item id="/changxiao">
          <router-link to="/changxiao" slot="icon">
          <img src="../assets/tabbar/蓝色/aixin1.png" alt="" v-if="act=='/changxiao'">
          <img src="../assets/tabbar/灰色/aixin1.png" alt="" v-else>
          </router-link>
        </mt-tab-item>
        <mt-tab-item id="/articles">
          <router-link to="/articles" slot="icon">
          <img src="../assets/tabbar/蓝色/sousuo.png" alt="" v-if="act=='/articles'">
          <img src="../assets/tabbar/灰色/sousuo.png" alt="" v-else>
          </router-link>
        </mt-tab-item>
        <mt-tab-item id="/me">
          <router-link to="/me" slot="icon">
          <img src="../assets/tabbar/蓝色/user.png" alt=""  v-if="act=='/me'">
          <img src="../assets/tabbar/灰色/user.png" alt="" v-else>
          </router-link>
        </mt-tab-item>
      </mt-tabbar>
  </div>
</template>
// <script>
import waterfall from "../components/waterfall";
export default {
  components: {
    waterfall
  },
  mounted(){
    window.onload()
  },
  data(){
    return {
      act:'/articles'
    }
  }
};
</script>


<style scoped>
/* 顶部城市选择样式 */
.articles .top {
  width: 100%;
  height: 25px;
  font-size: 10px;
  margin-top: 15px;
}
.articles .title {
  font-size: 20px;
  margin-right: 5px;
  margin-left: 15px;
}
.articles #citys {
  padding: 15px 5px 0px 5px;
  display: inline-block;
  width: 25px;
  position: relative;
  overflow: hidden;
}
.articles #citys > span {
  content: "";
  background-color: #000;
  width: 6px;
  height: 6px;
  position: absolute;
  bottom: -2.5px;
  right: -3px;
  transform: rotate(45deg);
}
/* 头像 */
.articles .avatar {
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
.articles .avatar::before {
  content: "";
}

/* 轮播图 */

.articles #carousel {
  margin-top: 15px;
  width: 100%;
  height: 125px;
}
.articles #carousel_list {
  width: 90%;
  margin: 0 auto;
  height: 125px;
}
.articles #carousel_item > img {
  width: 100%;
  margin: 0 auto;
  height: 120px;
  border-radius: 5px;
}
/* 中间导航 */
.articles #navbar {
  width: 100%;
  height: 20px;
  margin: 15px 0 15px;
  background-color: #fff;
}
.articles #navbar .bar_list {
  width: 100%;
  height: 20px;
  display: flex;
  flex-flow: row;
  justify-content: center;
}
.articles .bitem {
  width: 160px;
  text-align: center;
  margin: 0 25px;
  display: flex;
  flex-flow: column;
  justify-content: center;
}
.articles .select {
  width: 15px;
  margin: 0 auto;
  margin-top: 5px;
  border-top: 2px solid #fef;
}
/* 导航栏激活后样式 */
.articles .selected {
  border-top: 2px solid yellow;
}

/* 瀑布流 */
.articles .waterfall {
  width: 100%;
  margin-top: 0px;
}
.articles #box {
  width: 93%;
  margin: 0 auto;
  position: relative;
}
.articles #box::after {
  content: "";
  display: table;
}
.articles #box_item {
  height: auto;
  width: 48%;
  border-radius: 5px;
  position: absolute;
  box-shadow: 2px 2px 2px #999;
  display: flex;
  flex-flow: column;
  justify-content: center;
}
.articles #box_item > img {
  height: auto;
  border-radius: 5px 5px 0 0;
}

/* 文章标题作者样式 */
.articles .intr {
  width: 90%;
  height: 100px;
  margin: 0 auto;
  margin-top: 5px;
}
.articles .address {
  height: 15px;
  font-size: 12px;
  color: #aaa;
}
.articles .address > img {
  width: 15px;
  height: 15px;
}
.articles .art_title {
  width: 100%;
  height: 32px;
  margin: 0;
  margin-top: 5px;
  text-overflow: -o-ellipsis-lastline;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  line-clamp: 2;
  -webkit-box-orient: vertical;
}
.articles .art_title > span {
  font-size: 16px;
  letter-spacing: 1.5px;
}
.articles .author {
  height: 20px;
  margin-top: 15px;
  display: flex;
  flex-flow: row;
  align-items: center;
  justify-content: space-between;
}
.articles .author > img {
  height: 20px;
  width: 20px;
}
.articles .author_avatar {
  display: inline-block;
  width: 18px;
  height: 18px;
  margin-right: 0px;
  border-radius: 50%;
  vertical-align: sub;
  background-image: url("../assets/images/avatar.jpg");
  background-size: cover;
  background-position: center;
}
.articles .author > span {
  font-size: 10px !important;
  font-weight: bold;
}
.articles .dianzan {
  font-size: 10px !important;
  margin-right: 15px;
}
</style>
