<template>
   <div>
     <!-- 顶部导航栏开始 -->
            <mt-button icon="back"></mt-button>
     <!-- 顶部导航栏结束 -->
     <!-- 标题区域开始 -->
       <div class="slogan">
          <h1>登录用户</h1>
       </div>
     <!-- 标题区域结束 -->
     <!-- 表单区域开始 -->

      <div>
        <label class="mt_label">用户名</label>
        <mt-field
         class="mt_field"
         type="text"
         @blur.native.capture="checkUsername"
         v-model="username"
         
        >
        </mt-field>
        

         <label class="mt_label">密码</label>
         <mt-field
          class="mt_field"
         type="password"
         @blur.native.capture="checkpassword"
         v-model="password"
        >
        <!-- </mt-field>
         <label
          class="mt_label">确认密码</label>
         <mt-field
         id="password"
          class="mt_field"
          type="password"
           @blur.native.capture="checkconpassword"
         v-model="conpassword" 
        > -->
        </mt-field>
        <button class="button" @click="login">登录</button>
      </div>
     <!-- 表单区域结束 -->
     

   </div>

</template>
<script>
export default {
   data(){
     return{
       username:'',
       password:''
    
     }
   },
   methods:{
     login(){
        
     }
   }
  
}
</script>
<style scoped>

     .mt_label{
       color:#434157;
       position: relative;
       top: 31px;
       font-size: 20px;
     
     }
    .slogan{
      color: #434157;
    }
    .mt_field{
      position:relative;
       border-bottom:2px solid #52c8cf;
      margin-top: 30px;

    }
   .button{
     outline:none;
     border:none;
     width: 100%;
     height: 57px;
     border-radius:10px;
     padding: 0 40px;
     font-size:24px ;
     font-weight: bold;
     line-height: 32px;
     color: white;
     background-color:#52c8cf;
     margin-top:40px;
   }
</style>