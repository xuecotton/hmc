<template>
  <div>
    <!-- 标题栏 -->

    <div class="top">
      <span class="back"></span>
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

    <div class="allbg"></div>
    <div class="all">
      <div class="listall">
        <table></table>
        <div class="li" v-for="(item,index) of obj" :key="index" @click="insurance(item.hid)">
          <div>
            <!-- <img :src="require('../assets/houseimg/homes/ '+ item.fengmian)" alt /> -->
            <img :src="require('../assets/houseimg/homes/'+item.fengmian)" alt />
          </div>
          <div>
            <div class="ptitle">{{item.htitle}}</div>
            <div>
              <img v-for="(i,k) of item.rating" :key="k" src="../assets/xingxing.png" alt />
            </div>
            <div>
              <img src="../assets/dingwei.png" alt />
              {{item.haddress}}
            </div>
            <div>
              <span>¥{{item.hprice}}</span>/房间/晚
            </div>

            <div>已包含所有花费</div>
          </div>
        </div>
      </div>
      <div class="pad"></div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // 判断登录
      isLogin: false,
      act: "",
      // 存储获取到的信息
      obj: []
    };
  },
  mounted() {
    // 判断登录与否
    if (sessionStorage.getItem("isLogined") != null) {
      this.isLogin = true;
    }
    // 发动请求
    this.axios.get("/homelist").then(res => {
      let result = res.data.results;
      // console.log(result);
      result.forEach(item => {
        let img = [];
        img = item.himg.split("-");
        item.himg = img;
        item.fengmian = img[0];
      });
      this.obj = result.slice(0, 4);
      console.log(this.obj);
    });
  },
  methods: {
    // 路由跳转并传参
    insurance(id) {
      this.$router.push({
        path: "/details",
        query: {
          id: id
        }
      });
    }
  }
};
</script>

<style scoped>
.pad {
  padding-bottom: 50px;
}
/* 顶部 */
.head {
  background-color: #39bdc8;
  padding: 30px 0;
}
.all {
  position: relative;
  z-index: 10;
}

.all::before {
  content: "";
  display: table;
}

/* 标题栏 */
.top {
  position: fixed;
  top: 0px;
  width: 100%;
  background-color: #fff;
  height: 45px;
  font-size: 10px;

  z-index: 999;
}
.back {
  position: absolute;
  left: 0;
  top: 8px;
  width: 40px;
  height: 40px;
  background-image: url("../assets/back.png");
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
  margin-top: 10px;
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
/* 房屋列表 */
.li {
  width: 90%;
  height: 200px;
  border-radius: 10px;
  border: 1px solid #888;
  display: flex;
  justify-content: left;
  margin-left: 5%;
  background-color: white;
}
.listall {
  margin-top: 70px;
}
.li:first-child {
  margin-top: 60px;
}
/* 房屋列表左侧样式 */
.li > div:first-child {
  width: 40%;
  overflow: hidden;
}
.li > div:first-child img {
  height: 200px;
  border-radius: 10px 0px 0px 10px;
}
/* 房屋列表右侧样式 */
.li > div:last-child {
  display: flex;
  flex-flow: column;
  align-items: left;
  overflow: hidden;
  justify-content: space-around;
  padding-left: 5%;
}
/* 右侧文本样式 */
.li > div:last-child > div:first-child {
  font-size: 18px;
  font-weight: bold;
  width: 180px;
  white-space: nowrap;

  text-overflow: ellipsis;
  display: flex;
  justify-content: left;
}
.li > div:last-child > div:nth-child(2) {
  display: flex;
  justify-content: left;
}
.li > div:last-child > div:nth-child(3) {
  display: flex;
  justify-content: left;
  font-size: 14px;
  color: #888;
}
.li > div:last-child > div:nth-child(4) {
  display: flex;
  justify-content: left;
  align-items: center;
}
.li > div:last-child > div:nth-child(4) span {
  font-size: 24px;
  color: green;
}
.li > div:last-child > div:nth-child(5) {
  display: flex;
  justify-content: left;
  font-size: 12px;
  color: #f00;
}
.li > div:last-child > div:last-child {
  display: flex;
  justify-content: left;
  font-size: 12px;
  color: #888;
}
.li + .li {
  margin-top: 15px;
}
</style>