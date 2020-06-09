<template>
   <div id="register">
       <div class="Test">
       <img src="../assets/images/111.png" alt="">
       <div class="mengban"></div>
       </div>
      <h1>欢迎来到花明村</h1>
      <mt-button size="large">账户登录</mt-button>
      <mt-button size="large">创建新账户</mt-button>
      <p>或者</p>
      <mt-button type="primary" size="large">用户账号登录</mt-button>
   </div>
</template>
 <style scoped>
  .Test img{
        width: 100vw;
      }
  .Test{
        display: inline-block;
        position: relative;
      }
   .Test .mengban{
        position: absolute;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        background-image: linear-gradient(
          rgba(255,255,255,1),
          rgba(255,255,255,0),
          rgba(255,255,255,1)
        );
      }
      #register img{
        
        width: 100%;
        height: 50%;
        /* background: linear-gradient(to right bottom,rgba(0,0,0,0.9),rgba(0,0,0,0)),url(../assets/images/111.png) no-repeat center; */
      }
     #register h1 {
       text-align: center;
       color: #52c8cf;
       
     }
      #register :nth-child(3){
        
       border: 1px solid  #52c8cf;
       color: #52c8cf;
       font: 1.5em sans-serif;
       margin-bottom: 1.17%;
     }

     #register :nth-child(4){
        
       border: 1px solid  #52c8cf;
       color: #52c8cf;
       font: 1.5em sans-serif;
       font-display: bold;
       
     }
     #register :nth-child(5){
      
       margin-top:1.12%;
       color: #7c808b;
       text-align: center;
     }
     #register :nth-child(6){
       margin-top: 1.17%;
       
       background:#52c8cf;
     }
 </style>