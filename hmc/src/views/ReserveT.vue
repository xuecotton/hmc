<template>
  <div class="container">
    <mt-header class="d-header" title="在线预订">
      <router-link to="/reserve" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <img src="../assets/images/fukaun.png" slot="right" />
    </mt-header>
    <div class="d-bigBox">
      <div class="d-total">
        <table></table>
        <h3>总计: ¥{{userMsg.allPrice}}</h3>
        <!-- 价格区域 -->
        <div class="price">
          <h4>价格：¥{{userMsg.dayPrice}}</h4>
        </div>
        <div class="d-msg">
          <div class="d-msg-img">
            <img src="../assets/images/jiudian.png" alt />
            <span>{{userMsg.phone}}</span>
          </div>
          <div class="d-msg-text">
            <p>{{userMsg.startTime}},{{userMsg.allTime}}</p>
          </div>
        </div>
      </div>
      <!-- 支付方式 -->
      <div class="d-pay-o">
        <mt-cell class="d-cell-border" title="信用卡" isLink></mt-cell>
      </div>
      <div class="d-pay-t">
        <mt-cell class="d-cell-border" title="在线支付" isLink></mt-cell>
      </div>
      <div class="d-pay-t">
        <mt-cell class="d-cell-border" title="银行卡支付" isLink to="/pay"></mt-cell>
      </div>
    </div>
  </div>
</template>

<style scoped>
.container {
  height: 100vh;
  background-color: rgb(248, 248, 248);
}
.d-header {
  background-color: #52c8cf;
  color: #fff;
  font-size: 24px;
  height: 80px;
}
.d-header img {
  width: 20px;
}
/* 内容区域的最外层div */
.d-bigBox {
  padding: 10px;
}
.d-total {
  width: 100%;
  background-color: #fff;
  border-radius: 8px;
  box-sizing: border-box;
  box-shadow: 1px 1px #aaa;
}
.d-total h3 {
  display: block;
  font-size: 30px;
  text-align: center;
  color: #52c8cf;
  margin-top: 20px;
}
.d-total p.d-total-p {
  display: block;
  font-size: 14px;
  color: #aaa;
  text-align: center;
  line-height: 18px;
}
.price {
  width: 90%;
  margin: 0 auto;
  margin-top: 20px;
  padding-bottom: 10px;
  border-bottom: 1px solid rgb(240, 235, 235);
}
.price h4 {
  text-align: center;
  font-size: 15px;
  color: #52c8cf;
  margin: 0 auto;
}
.price h4:last-child {
  margin-top: 3px;
  color: #aaa;
  font-size: 13px;
}
/* 酒店信息 */
.d-msg {
  width: 90%;
  margin: 0 auto;
  margin-top: 15px;
}
.d-msg .d-msg-img img {
  width: 40px;
  height: 40px;
  margin-right: 20px;
}
.d-msg .d-msg-img span {
  font-size: 20px;
  font-weight: bold;
  color: rgb(90, 85, 85);
  text-align: justify;
  text-justify: newspaper;
  word-break: break-all;
}
.d-msg-text p {
  margin-left: 60px;
  font-size: 16px;
  color: #aaa;
  padding-bottom: 20px;
}
/* 付款方式 */
.d-pay-o {
  background-color: #fff;
  border-radius: 4px;
  margin-top: 40px;
}
.d-cell-border {
  border-radius: 5px;
}
.d-pay-o {
  background-color: #fff;
  border-radius: 4px;
  margin-top: 40px;
  font-weight: bold;
  color: rgb(92, 89, 89);
}
.d-pay-t {
  background-color: #fff;
  border-radius: 4px;
  margin-top: 15px;
  font-weight: bold;
  color: rgb(92, 89, 89);
}
</style>

<script>
export default {
  data() {
    return {
      userMsg: ""
    };
  },
  mounted() {
    this.userMsg = this.$store.state.userMsg;
    console.log(this.userMsg);
  },
  methods: {}
};
</script>