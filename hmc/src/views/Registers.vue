<template>
  <div>
    <!-- 顶部导航栏开始 -->

    <!-- 顶部导航栏结束 -->
    <!-- 标题区域开始 -->
    <div class="slogan">
      <h1>注册用户</h1>
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
      ></mt-field>

      <label class="mt_label">密码</label>
      <mt-field
        class="mt_field"
        type="password"
        @blur.native.capture="checkpassword"
        v-model="password"
      ></mt-field>
      <label class="mt_label">确认密码</label>
      <mt-field
        id="password"
        class="mt_field"
        type="password"
        @blur.native.capture="checkconpassword"
        v-model="conpassword"
      ></mt-field>
      <button class="button" @click="handler">立即注册</button>
    </div>
    <!-- 表单区域结束 -->
  </div>
</template>
<script>
export default {
  data() {
    return {
      username: "",
      password: "",
      conpassword: ""
    };
  },
  methods: {
    checkUsername() {
      //  用户名的规范
      var usernameRegExp = /^[0-9A-Za-z]{6,12}$/;
      //  检测用户名
      //  console.log(usernameRegExp.test(this.username));
      if (usernameRegExp.test(this.username)) {
        return true;
      } else {
        this.$messagebox.alert("用户名为必填项，且长度为6~12的字符");
        return false;
      }
    },
    checkpassword() {
      //  密码规范
      var passwordRegExp = /^[0-9A-Za-z]{8,12}$/;
      // 检测密码
      // console.log(passwordRegExp.test(this.password));
      if (passwordRegExp.test(this.password)) {
        return true;
      } else {
        this.$messagebox.alert("密码为必填项，且长度为8~12的字符");
        return false;
      }
    },
    // 两次密码是否一致验证
    checkconpassword() {
      if (this.password == this.conpassword) {
        return true;
      } else {
        this.$messagebox.alert("两次密码输入不一致");
        document.getElementById("password").style.disabled = true;
        return false;
      }
    },
    handler() {
      this.checkUsername();
      this.checkpassword();
      this.checkconpassword();
      if (this.checkUsername()) {
        // 发送AJAX请求
        var obj = {
          username: this.username,
          password: this.password
        };
        // QS的stringify()方法用于将数组/对象转换成请求字符串
        this.axios.post("/registers", this.qs.stringify(obj)).then(res => {
          if (res.data.code == 201) {
            this.$messagebox.alert("用户已经存在", "注册提示");
          }
          if (res.data.code == 200) {
            this.$messagebox.alert("用户注册成功", "注册提示").then(() => {
              this.$router.push("/login");
            });
          }
        });
      }
    }
  }
};
</script>
<style scoped>
.mt_label {
  color: #434157;
  position: relative;
  top: 31px;
  font-size: 20px;
}
.slogan {
  color: #434157;
}
.mt_field {
  position: relative;
  border-bottom: 2px solid #52c8cf;
  margin-top: 30px;
}
.button {
  outline: none;
  border: none;
  width: 100%;
  height: 57px;
  border-radius: 10px;
  padding: 0 40px;
  font-size: 14px;
  line-height: 32px;
  color: white;
  background-color: #52c8cf;
  margin-top: 40px;
}
</style>