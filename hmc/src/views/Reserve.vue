<template>
  <div class="d-box">
    <mt-header class="d-header" title="在线预订" fixed>
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
        <!--  -->
        <div></div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.d-box{
  background-color: #aaa;
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
    margin-top: 80px;
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
</style>


<script>
export default {
  data(){
    return{
      
    }
  },
  methods:{

  }
}
</script>