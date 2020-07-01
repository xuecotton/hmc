<template>
  <div class="waterfall">
    <div class="title">
      <p>美宿种草机</p>
      <p>名宿达人"墙裂"推荐</p>
    </div>
    <div id="box">
      <div id="box_item" v-for="(item,index) in obj" :key="index">
        <div @click="insurance(item.tid)">
          <img class="box_img" :src="require('../assets/article/'+ item.fengmian)" alt />

          <div class="intr">
            <p class="address">
              <img src="../assets/images/weizhi.png" alt />北京
            </p>

            <div class="art_title">
              <span>{{item.acontent}}</span>
            </div>

            <p class="author">
              <span>{{item.author}}</span>
              <img src="../assets/images/zan_unact.png" alt />
              <span>{{item.praisenum}}</span>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      res: "",
      obj: {},
      akeywords: "北京"
    };
  },
  methods: {
    // 路由传参方法
    insurance(tid) {
      this.$router.push({
        path: "/article",
        query: {
          tid: tid
        }
      });
    }
  },
  mounted() {
    this.axios.get("/articles?akeywords=" + this.akeywords).then(res => {
      let result = res.data.results;
      //   console.log(result);
      result.forEach(item => {
        let img = [];
        img = item.apic.split("-");
        item.apic = img;
        item.fengmian = img[0];
      });
      this.obj = result;
      console.log(result);
    });
  }
};
</script>
 <style scoped>
/* 标题索引 */
.title > p {
  text-align: left;
  padding-left: 5%;
}
.title > p:first-child {
  font-size: 20px;
  font-weight: 800;
}
.title > p:last-child {
  font-size: 14px;
  font-weight: 400;
  color: #888;
}
/* 瀑布流 */
.waterfall {
  width: 100%;
  margin-top: 0px;
}
#box {
  width: 100%;
  margin: 0 auto;
  position: relative;
  display: flex;
  flex-flow: row;
  justify-content: center;
  flex-wrap: wrap;
}
#box::after {
  content: "";
  display: table;
}
#box_item {
  height: auto;
  width: 45%;
  margin: 15px 5px;
  border-radius: 5px;
  box-shadow: 2px 2px 2px #999;
  display: flex;
  flex-flow: column;
}
.box_img {
  width: 100%;
  height: 230px;
  border-radius: 5px 5px 0 0;
}

/* 文章标题作者样式 */
.intr {
  width: 90%;
  height: 100px;
  margin: 0 auto;
  margin-top: 5px;
}
.address {
  height: 15px;
  font-size: 12px;
  color: #aaa;
}
.address > img {
  width: 15px;
  height: 15px;
}
.art_title {
  width: 100%;
  height: 25px;
  margin: 0;
  margin-top: 5px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.art_title > span {
  font-size: 16px;
  letter-spacing: 1.5px;
}
.author {
  height: 20px;
  margin-top: 15px;
  display: flex;
  flex-flow: row;
  align-items: center;
  justify-content: space-between;
}
.author > img {
  height: 20px;
  width: 20px;
}
/* .author_avatar {
  display: inline-block;
  width: 18px;
  height: 18px;
  margin-right: 0px;
  border-radius: 50%;
  vertical-align: sub;
  background-image: url("../assets/images/avatar.jpg");
  background-size: cover;
  background-position: center;
} */
.author > span {
  font-size: 10px !important;
  font-weight: bold;
}
.dianzan {
  font-size: 10px !important;
  margin-right: 15px;
}
</style>