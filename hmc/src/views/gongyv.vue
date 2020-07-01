<template>
  <div>
    <div class="allbg"></div>
    <div class="all">
      <div class="listall">
        <table></table>
        <div class="li" v-for="(item,index) of obj" :key="index">
          <div>
            <!-- <img :src="require('../assets/houseimg/homes/ '+ item.fengmian)" alt /> -->
          </div>
          <div>
            <div>{{item.htitle}}</div>
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
      act: "",
      // 存储获取到的信息
      obj: []
    };
  },
  mounted() {
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
  height: 100%;
  width: auto;
  border-radius: 10px 0px 0px 10px;
}
/* 房屋列表右侧样式 */
.li > div:last-child {
  display: flex;
  flex-flow: column;
  align-items: left;
  justify-content: space-around;
  padding-left: 5%;
}
/* 右侧文本样式 */
.li > div:last-child > div:first-child {
  font-size: 18px;
  font-weight: bold;
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