<template>
  <div class="d-pay-container">
    <mt-header class="d-header" title="支付">
      <router-link to="/reservet" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div class="d-pay-alert">
      <mt-cell class="d-alertTitle" title="您的订单ID:123123123"></mt-cell>
    </div>
    <div class="d-pay-box">
      <mt-cell class="d-payCell" title="费用详情" label="TTC国际高级酒店" value="554.4￥"></mt-cell>
      <mt-cell title="总计" value="554.4￥"></mt-cell>
    </div>
    <!-- 马上支付按钮 -->
    <router-link class="d-go" to="/payok">确认支付</router-link>
  </div>
</template>

<style scoped>
  .d-pay-container{
    height: 100vh;
    background-color:rgb(248, 248, 248);
  }
  .d-header{
    background-color: #52c8cf;
    color:#fff;
    font-size: 24px;
    height: 80px;
  }
  .d-pay-box{
    padding: 15px;
    margin-top: 30px;
  }
  /* 订单id区域 */
  .d-alertTitle{
    border-radius: 4px;
  }
  .d-payCell{
    height: 80px !important;
    line-height: 80px;
  }
  /* 支付按钮 */
  .d-go{
    display: block;
    width: 100%;
    height:40px;
    margin: 0 auto;
    margin-top: 20px;
    border: none;
    border-radius: 4px;
    background-color: #52c8cf;
    color: #fff;
    font-size: 20px;
    text-align: center;
    line-height: 40px;
    text-decoration: none;
  }
</style>

<script>
export default {
  data(){
    return {

    }
  },
  methods:{

  }
}
</script>