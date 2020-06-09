<template>
   <div id="register">
       <div class="Test">
       <img class="bg-img" src="../assets/images/111.png" alt="">
       <div class="mengban"></div>
       </div>
      <h1>欢迎来到花明村</h1>
      <router-link to="/" style="text-decoration:none">
      <mt-button size="large" class="buttton_1"  >
       
     创建新账户
      </mt-button>

      </router-link>
      <router-link to="/login" style="text-decoration:none" >
      <mt-button size="large"  class="buttton_2">用户账号登录</mt-button>
      </router-link>
      <p>或者</p>
     
     <ul class="container">
       <li><a href="">
        <img src="../assets/images/weixin.png" alt="">   
      </a></li>
       <li><a href="">
         <img src="../assets/images/xinlang.png" alt="">
      </a></li>
       <li><a href="">
         <img src="../assets/images/zhifubao.png" alt="">
         </a></li>
       <li><a href="">
         <img src="../assets/images/qq.png" alt="">
         </a></li>
     </ul>
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
      #register .bg-img{
        
        width: 100%;
        height: 50%;
        background: linear-gradient(to right bottom,rgba(0,0,0,0.9),rgba(0,0,0,0)),url(../assets/images/111.png) no-repeat center;
      }
     #register h1 {
       text-align: center;
       color: #52c8cf;
       
     }
      .buttton_1{
        
       border: 1px solid  #52c8cf;
       color: #52c8cf;
       font: 1.5em sans-serif;
       margin-bottom: 4%;
     }

     .buttton_2{
        
       border: 1px solid  #52c8cf;
       color: #52c8cf;
       font: 1.5em sans-serif;
       font-display: bold;
       
     }
     #register :nth-child(5){
      
       margin-top:3%;
       color: #7c808b;
       text-align: center;
     }

     .container li{
      display: inline-block;
      margin-top: 2%;
      margin-right:13.8%
    } 
    .container li a img{
      width:40px;
      /* height: 9.66%; */
    }
    .container li{
      border: none;
    }
 </style>
  