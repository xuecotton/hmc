<template>
  <div class="app">
    <!--详情图片 -->
    <div class="img">
      <mt-swipe
        id="carousel_list"
        ref="swipe"
        :auto="0"
        :show-indicators="false"
        @change="swipeChange"
      >
        <mt-swipe-item id="carousel_item" v-for="(item,index) in obj[0].apic" :key="index">
          <img :src="require('../assets/article/' + item)" alt />
        </mt-swipe-item>
      </mt-swipe>
    </div>
    <div class="img_index">
      <span class="index">{{activeIndex}}/{{img.length}}</span>
    </div>
    <div class="main">
      <!-- 作者信息 -->
      <div class="mian_content">
        <div class="author">
          <span class="author_avatar"></span>
          <span class="author_name">{{obj[0].author}}</span>
        </div>
        <p class="address">
          <img src="../assets/images/weizhi.png" alt />
          {{obj[0].akeywords}}
        </p>
        <div class="desc" id="readText">
          <p>{{obj[0].acontent.slice(0,10)}}</p>
          <br />
          <p>{{obj[0].acontent}}</p>
        </div>
        <span id="readMore" @click="readMore()">查看更多</span>

        <div class="comment" v-if="this.overs" @click="insurance(obj[0].cuid)">
          <img class="comment_img" src="../assets/images/fall2.jpg" alt />
          <div class="comment_intr">
            <div class="intr_title">{{product[0].htitle}}</div>
            <span class="intr_desc">{{product[0].htype}}</span>
            <span class="price">¥{{product[0].hprice}}</span>
          </div>
        </div>
        <div class="date">发布于2020-06-11</div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.img {
  width: 100%;
  height: 320px;
  position: relative;
}
#carousel_list {
  width: 100%;
}
#carousel_item > img {
  height: 300px;
}
/* 图片页标 */
.img_index {
  position: relative;
}
.index {
  width: 50px;
  height: 25px;
  display: block;
  position: absolute;
  right: 5px;
  top: -45px;
  text-align: center;
  line-height: 25px;
  background-color: rgba(200, 200, 200, 0.2);
  border-radius: 12px;
  z-index: 999;
}
/* 文章主题 */
.main {
  width: 100%;
  background-color: #fff;
  position: relative;
}
.mian_content {
  width: 100%;
  position: absolute;
  top: -5px;
  background-color: #fff;
  border-radius: 10px 10px 0 0;
}
.author {
  width: 100px;
  height: 25px;
  padding: 15px 0 10px 15px;
}
.autho > span {
}
.author_avatar {
  width: 25px;
  height: 25px;
  display: inline-block;
  background-image: url("../assets/images/avatar.jpg");
  background-size: contain;
  border-radius: 50%;
  vertical-align: sub;
}
.author_name {
  display: inline-block;
  margin-left: 5px;
  font-size: 12px;
  font-weight: 800;
  line-height: 25px;
}
/* 位置图标 */
.address {
  height: 15px;
  font-size: 12px;
  color: #aaa;
  padding: 0 0 15px 15px;
}
.address > img {
  width: 15px;
  height: 15px;
  margin-right: 5px;
}
/* 文章内容 */
.desc {
  width: 90%;
  height: 150px;
  overflow: hidden;
  margin: 0 auto;
  box-sizing: border-box;
  line-height: 30px;
}
#readMore {
  float: right;
  margin-right: 15px;
  font-size: 18px;
  color: coral;
  font-weight: 800;
}
.comment {
  width: 95%;
  margin: 0 auto;
  height: 100px;
  border-radius: 5px;
  margin-top: 50px;
  display: flex;
  box-shadow: 2px 2px 2px #aaa;
}
.comment_img {
  flex: 1;
  border-radius: 5px 0 0 5px;
}
.comment_intr {
  overflow: hidden;
  flex: 2;
  display: flex;
  flex-flow: column;
  margin-left: 10px;
}

.intr_desc,
.price {
  margin-top: 8px;
}
.intr_title {
  width: 250px;
  font-size: 20px;
  color: #333;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}
.intr_desc {
  font-size: 12px;
  color: #555;
}
.price {
  font-size: 20px;
  color: #ffd037;
}
.date {
  margin: 15px 0 15px 5px;
  font-size: 15px;
}
</style>
<script>
export default {
  data() {
    return {
      activeIndex: 1,
      // 存储文章详情
      obj: {},
      // 存储推荐商品
      product: [],
      // 储存推荐商品的id

      overs: false,
      img: ["swipe01.jpg", "swipe02.jpg", "swipe03.jpg", "swipe04.jpg"]
    };
  },
  methods: {
    // 路由传参数函数
    // 路由传参方法
    insurance(id) {
      this.$router.push({
        path: "/details",
        query: {
          id: id
        }
      });
    },
    //   获取轮播图下标的方法
    swipeChange() {
      this.activeIndex = this.$refs.swipe.index + 1;
      this.length = this.$refs.swipe.length;
    },
    readMore() {
      //查看更多的方法
      // 获取元素
      var readTxt = document.getElementById("readText");
      var MoreEle = document.getElementById("readMore");
      //改变文本显示高度
      readTxt.style.height = "auto";
      MoreEle.style.display = "none";
      this.axios.get("/desc?id=" + this.obj[0].cuid).then(res => {
        this.product = res.data.desc;
        console.log(this.product);
        // 请求完成:
        this.overs = true;
      });
    }
    // 获取推荐商品方法
  },
  mounted() {
    // 获取到了上个组件传来的id  console.log(this.$route.query.tid);
    let tid = this.$route.query.tid;
    // 发送请求
    this.axios.get("/article?id=" + tid).then(res => {
      let result = res.data.results;
      //   console.log(result);
      result.forEach(item => {
        let img = [];
        img = item.apic.split("-");
        item.apic = img;
      });
      this.obj = result;
      console.log(this.obj);
    });
  }
};
</script>