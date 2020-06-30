<template>
  <div>
    <mt-tab-container v-model="act">
      <mt-tab-container-item id="home">
        <Home></Home>
      </mt-tab-container-item>
      <mt-tab-container-item id="aixin">
        <Articles></Articles>
      </mt-tab-container-item>
      <mt-tab-container-item id="sousuo">
        <products></products>
      </mt-tab-container-item>
      <mt-tab-container-item id="user">
        <Me v-if="isLogin"></Me>
        <Register v-else></Register>
      </mt-tab-container-item>
    </mt-tab-container>
    <mt-tabbar fixed v-model="act" class="tabbar">
      <div class="pad"></div>
      <mt-tab-item id="home">
        <img id="bug1img" src="../assets/tabbar/蓝色/fangzi.png" alt slot="icon" v-if="act=='home'" />
        <img src="../assets/tabbar/灰色/fangzi.png" alt slot="icon" v-else />
      </mt-tab-item>
      <mt-tab-item id="aixin">
        <img src="../assets/tabbar/蓝色/aixin1.png" alt slot="icon" v-if="act=='aixin'" />
        <img src="../assets/tabbar/灰色/aixin1.png" alt slot="icon" v-else />
      </mt-tab-item>
      <mt-tab-item id="sousuo">
        <img src="../assets/tabbar/蓝色/sousuo.png" alt slot="icon" v-if="act=='sousuo'" />
        <img src="../assets/tabbar/灰色/sousuo.png" alt slot="icon" v-else />
      </mt-tab-item>
      <mt-tab-item id="user">
        <img src="../assets/tabbar/蓝色/user.png" alt slot="icon" v-if="act=='user'" />
        <img src="../assets/tabbar/灰色/user.png" alt slot="icon" v-else />
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>

<script>
import Home from "./Home";
import Articles from "./articles";
import Me from "./Me";
import Register from "./Register";
// import changxiao from "./changxiao";
import Products from "./products";
export default {
  data() {
    return {
      act: "home",
      isLogin: false
    };
  },
  methods: {
    // isLogin() {
    //   var islogin = sessionStorage.getItem("isLogined");
    //   if (islogin == true) {
    //     return true;
    //   } else {
    //     return false;
    //   }
    // }
  },
  mounted() {
    if (sessionStorage.getItem("isLogined") != null) {
      this.isLogin = true;
    }
  },
  // 规定范围内的子组件
  components: {
    Home,
    Articles,
    Me,
    Register,
    Products
  }
};
</script>
<style scoped>
.pad {
  padding-top: 40px;
}
/* 中间列表 */
.list {
  margin-top: -130px !important;
}
/* 瀑布流 */
.waterfall {
  padding-top: 30px;
  height: auto;
}
/* tabbar */
.tabbar {
  z-index: 10000000 !important;
}
/* tabbar底部选项卡 */
.mint-tab-item-icon {
  margin: auto !important;
}
.mint-tab-item-icon:active {
  margin: auto !important;
}
</style>
