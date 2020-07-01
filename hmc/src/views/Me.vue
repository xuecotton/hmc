<template>
   <div>
     <!-- 顶部导航开始 -->
       <mt-header title="个人中心" class="me">
         <router-link to="/" slot="left"> 
         <mt-button icon="back"></mt-button>
         </router-link>
         </mt-header>
          
         <div class="head">
          <img src="https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1393347119,371690684&fm=26&gp=0.jpg">
          <h3>Brantlee Adair</h3>
          <p>439849135@qq.com</p>
          <p>15238049995</p>
        </div>
         <!-- 头像结束 -->
         <!-- 顶部导航结束 -->
         <!-- 信息列表开始 -->
          <mt-cell title="修改信息" isLink to="/modify"></mt-cell>
          <mt-cell title="更改密码" isLink to="/changepd"></mt-cell>
          <mt-cell title="退出账户" isLink to="/login" ></mt-cell>

         <!-- 信息列表结束 -->
         <!-- 底部选项卡开始 -->
           <mt-tabbar></mt-tabbar>
         <!-- 底部选项卡结束 -->


   </div>
</template>
<script>
export default {
  
}
</script>
<style  scoped>
  .head h3{
    font-size: 32px;
  }
  .head p{
    font-size:14px;
     color: #7c808b;
     margin-bottom:3px ;
  }
  .head{
    text-align: center;
      
  }
  .head img{

     width: 100px;
    height: 100px;
    margin-top: 35px;
    border-radius:50% ;
  }
  *{
    margin: 0;
    padding: 0;
  }
 .me{

   width: 100%;
   height:100px;
   background-color:#52c8cf;
 }
</style>