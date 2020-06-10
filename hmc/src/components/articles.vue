<template>
  <div class="app">
    <!-- 顶部导航及头像开始-->
    <div class="top">
      <span class='title'>发现</span>
      <span calss='option' id='citys'>北京 <span></span> </span>
      <span class='avatar'>
      </span>
    </div>
    <!-- 顶部顶部导航及头像开始 -->

  </div>
</template>
<style scoped>
/* 顶部城市选择样式 */
 .top{
   width: 100%;
   height: 25px;
   font-size: 10px;
   margin-top: 15px;
 }
 .title{
   font-size: 20px;
   margin-right: 5px;
   margin-left: 15px;
 }
 #citys{
   padding:15px 0px 0 5px;
   display: inline-block;
   width: 25px;
   position: relative;
   overflow: hidden;
 }
 #citys>span{
   content:'';
   background-color: #000;
   width: 5px;
   height: 5px;
   position: absolute;
   bottom: -2.5px;
   right: -3px;
   transform: rotate(45deg);
 }
 /* 头像 */
 .avatar{
   display: inline-block;
   float:right;
   width: 25px;
   height: 25px;
   
   border-radius: 50%;
   margin-right: 15px;

   background-image: url("../assets/images/avatar.jpg");
   background-position:center;;
   background-size: contain;
 }
 /* 撑开没宽度的头像框 */
 .avatar::before{
   content:''
 }

</style>
