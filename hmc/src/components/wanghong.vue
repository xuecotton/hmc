<template>
  <div class="wanghongall">
    <div class="title">
      <span>网红美宿</span>
      <span>随手一拍都是大片</span>
    </div>
    <div class="opcal" v-if="isOver">
      <div>
        <img class="calimg showimg" :src="require('../assets/carousel/'+datas[0].pic1)" />
        <img class="calimg" :src="require('../assets/carousel/'+datas[0].pic2)" alt />
        <img class="calimg" :src="require('../assets/carousel/'+datas[0].pic3)" alt />
        <img class="calimg" :src="require('../assets/carousel/'+datas[0].pic4)" alt />
        <div class="bigtext">
          <p>#古典别墅#</p>
          <p>“金玉其内的奢华别墅</p>
        </div>
      </div>
      <div>
        <router-link to="/changxiao">
          <img :src="require('../assets/carousel/'+ datas[0].pic2)" alt />
          <span class="smtext">低调外景</span>
        </router-link>
      </div>
      <div>
        <router-link to="/changxiao">
          <img :src="require('../assets/carousel/'+datas[0].pic2)" alt />
          <span class="smtext">夜景走廊</span>
        </router-link>
      </div>
      <div>
        <router-link to="/changxiao">
          <img :src="require('../assets/carousel/'+datas[0].pic3)" alt />
          <span class="smtext">广阔天空</span>
        </router-link>
      </div>
      <div>
        <router-link to="/changxiao">
          <img :src="require('../assets/carousel/'+datas[0].pic4)" alt />
          <span class="smtext">温馨夜景</span>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      show: 0,
      datas: [],
      isOver: false
    };
  },
  methods: {
    // calimgfn: function() {
    //   setInterval(() => {
    //     var imgs = document.getElementsByClassName("calimg");
    //     var a = 0;
    //     this.show++;
    //     if (this.show == 4) {
    //       this.show = 0;
    //     }
    //     // a = this.show == 0 ? 3 : this.show - 1;
    //     // // imgs[this.show].className += " showimg";
    //     // imgs[a].className = "calimg";
    //   }, 3000);
    // }
  },
  mounted() {
    this.axios.get("/carousel?keywords=" + "index").then(res => {
      this.datas = res.data.results;
      // console.log(res.data.results);
      // console.log(this.data);
      // 发送成功标志
      this.isOver = true;
      // console.log(this.datas);
    });
    // if (this.data) {
    //   // this.calimgfn();
    // }
  }
};
</script>

<style scoped>
/* 外包裹样式 */
.wanghongall {
  padding: 5%;
  margin-top: 50px;
}
/* 公寓标题样式 */
.title {
  display: flex;
  flex-flow: column;
  justify-content: center;
  align-items: flex-start;
  height: 50px;
  width: 100px;
}
.title > span:first-child {
  font-size: 20px;
  font-weight: bolder;
}
.title > span:last-child {
  font-size: 12px;
  color: #888;
}
/* 弹性图片样式 */
.opcal {
  width: 100%;
  height: 238px;
  display: flex;
  flex-flow: column;
  flex-wrap: wrap;
  margin-top: 10px;
}

.opcal img {
  width: 100%;
  height: 100%;
  border-radius: 5%;
}
.opcal > div {
  box-sizing: border-box;
  position: relative;
}
.opcal > div:first-child {
  width: 75%;
  height: 100%;
}
/* 设置图片轮播样式！ */
.opcal > div:first-child img {
  position: absolute;
  left: 0;
  opacity: 0.2;
  transition: 0.3s linear all;
}
.showimg {
  opacity: 1 !important;
  z-index: 10;
}
/* 图片轮播样式结束 */
.opcal > div:not(:first-child) {
  margin-left: 3px;
  width: 25%;
  height: auto;
}
.opcal > div:not(:first-child) + div {
  margin-top: 1px;
}
/* 图片中文字样式 */
.smtext {
  position: absolute;
  font-size: 8px;
  color: white;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  white-space: nowrap;
}
.bigtext {
  position: absolute;
  z-index: 10000;
  bottom: 0%;
  left: 3%;
  display: flex;
  flex-flow: column;
  align-items: flex-start;
}
.bigtext > p {
  color: white;
  font-size: 14px;
}
.bigtext > p:first-child {
  padding: 0 5px;
  color: black;
  margin-bottom: 5px;
  background-color: white;
  border-radius: 8px;
}
</style>