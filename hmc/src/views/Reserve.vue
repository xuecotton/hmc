<template>
  <div class="d-box">
    <mt-header class="d-header" title="在线预订">
      <mt-button icon="back" slot="left"></mt-button>
      <img src="../assets/images/yuding.png" slot="right">
    </mt-header>
    <div class="d-body">
      <div class="d-total">
        <table></table>
        <h3>总计: 554.4￥</h3>
        <p>包括增值税和服务</p>
        <!-- 价格区域 -->
        <div class="price">
          <h4>价格：504￥</h4>
          <h4>增值税和服务：50.4￥</h4>
        </div>
      </div>
      <!-- 预定日期及预定天数 -->
      <div class="d-time">111</div>
      <!-- 预定人信息 -->
      <div class="d-message">
        <h3>信息</h3>
        <p>姓名: *</p>
        <input v-model="Dusername" type="text" placeholder="预订人姓名">
        <p>电话号码: *</p>
        <input v-model="Dphone" type="text" placeholder="预订人手机号" maxlength="11">
        <p>邮箱: *</p>
        <input v-model="Demail" type="text" placeholder="预订人邮箱">
      </div>
      <!-- 联系人详情 -->
      <div class="d-message d-shadow">
        <h3>联系人详情</h3>
        <p>姓名: {{Dusername}}</p>
        <p>电话号码: {{Dphone}}</p>
        <p>邮箱: {{Demail}}</p>
      </div>
      <!-- 继续按钮--跳转到下一个页面 -->
      <button class="d-go">继续</button>
    </div>
  </div>
</template>

<style scoped>
.d-box{
  background-color:rgb(248, 248, 248);
}
  .d-header{
    background-color: #52c8cf;
    color:#fff;
    font-size: 24px;
    height: 80px;
  }
  .d-header img{
    width: 20px;
  }
  .d-body{
    width: 90%;
    margin: 0 auto;
    padding: 10px;
    height: 100%;

  }
  /* 总计区域 */
  .d-total{
    width:100%;
    background-color: #fff;
    border-radius:8px ;
  }
  .d-total h3{
    display: block;
    font-size: 30px;
    text-align: center;
    color: #52c8cf;
    margin-top:20px ;
  }
  .d-total p{
    display: block;
    font-size: 14px;
    color: #aaa;
    text-align: center;
    line-height: 18px;
  }
  .price{
    margin-top: 20px;
    padding-bottom: 20px;
  }
  .price h4{
    text-align: center;
    font-size: 18px;
    color:#52c8cf;
    margin: 0 auto;
  }
  .price h4:last-child{
    margin-top:10px ;
    color: #aaa;
    font-size:15px;
  }
  /* 预定时间及预定几天 */
  .d-time{
    width:90%;
    margin: 0 auto;
    background-color: #fff;
    border-radius:4px ;
    height: 60px;
  }
  /* 预订人信息 */
  .d-message{
    width:100%;
    background-color: #fff;
    border-radius:8px ;
    margin-top: 20px;
    padding: 20px;
    box-sizing: border-box;
  }
  .d-message h3{
    font-size:20px;
    font-weight: bold;
  }
  .d-message p{
    font-size: 13px;
    margin-top: 20px;
  }
  .d-message input{
    width: 100%;
    border: none;
    border-bottom: 1px solid rgb(206, 205, 205);
    padding: 5px 0;
  }
  /* 联系人详情区域 */
  .d-shadow{
    box-shadow: 1px 1px 1px 1px #999;
  }
  /* 继续按钮 */
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
  }
</style>


<script>
export default {
  data(){
    return{
      Dusername:'',
      Demail:'',
      Dphone:''
    }
  },
  methods:{

  }
}
</script>