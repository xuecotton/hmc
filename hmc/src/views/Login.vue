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
       
         v-model="username"
         
        >
        </mt-field>
        

         <label class="mt_label">密码</label>
         <mt-field
          class="mt_field"
         type="password"
        
         v-model="password"
        >
       
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
        // 检测用户名和密码的规范
        var obj={
          username:this.username,
          password:this.password
        };
       this.axios.post('/login',this.qs.stringify(obj)).then(
         (res)=>{
           if(res.data.code==202){
             this.$messagebox.alert('用户名或密码错误','登录提示');
           }
           if(res.data.code==200){
            //  登录成功
            this.$messagebox.alert('登录成功','登录提示');
            // 将相关信息存储到sessionStorage中
            sessionStorage.setItem('id',res.data.info.id);
            sessionStorage.setItem('username',res.data.info.username);
            sessionStorage.setItem('nickname',res.data.info.nickname);
            sessionStorage.setItem('avatar',res.data.info.avatar);
             sessionStorage.setItem('realname',res.data.info.realname);
              sessionStorage.setItem('phone',res.data.info.phone);
           sessionStorage.setItem('isLogined',true);
           }
          /******后期要改
          //  将数据存储到Vuex中
          this.$store.commit('userLogined',res.data.info);
          // 根据地址栏中是否存在redirect的参数来决定跳转到哪个路由
          if(this.$route.query.redirect){
            this.$router.push(this.$route.query.redirect);
          }else{
            this.$router.push('/')
          }
          *********** */
         }); 
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