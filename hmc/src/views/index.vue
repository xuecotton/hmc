<template>
  <div>
    <div class="index">
      <carousel></carousel>
      <inputli></inputli>
      <list class="list">
      </list>
    </div>
    <wanghong></wanghong>
      <keep-alive>
        <waterfall class="waterfall">

        </waterfall>
      </keep-alive>
      <mt-tabbar fixed v-model="act" class="tabbar">
        <div class="pad"></div>
        <mt-tab-item id="/">
          <router-link to="/" slot="icon">
          <img id="bug1img" src="../assets/tabbar/蓝色/fangzi.png" alt=""  v-if="act=='/'">
          <img src="../assets/tabbar/灰色/fangzi.png" alt="" v-else>
          </router-link>
        </mt-tab-item>
        <mt-tab-item id="/changxiao">
          <router-link to="/changxiao" slot="icon">
          <img src="../assets/tabbar/蓝色/aixin1.png" alt="" v-if="act=='/changxiao'">
          <img src="../assets/tabbar/灰色/aixin1.png" alt="" v-else>
          </router-link>
        </mt-tab-item>
        <mt-tab-item id="/articles">
          <router-link to="/articles" slot="icon">
          <img src="../assets/tabbar/蓝色/sousuo.png" alt="" v-if="act=='/articles'">
          <img src="../assets/tabbar/灰色/sousuo.png" alt="" v-else>
          </router-link>
        </mt-tab-item>
        <mt-tab-item id="/me">
          <router-link to="/me" slot="icon">
          <img src="../assets/tabbar/蓝色/user.png" alt=""  v-if="act=='/me'">
          <img src="../assets/tabbar/灰色/user.png" alt="" v-else>
          </router-link>
        </mt-tab-item>
      </mt-tabbar>
  </div>
</template>

<script>



import carousel from '../components/carousel.vue';
import inputli from '../components/inputli';
import list from '../components/list';
import waterfall from '../components/waterfall';
import wanghong from '../components/wanghong';

export default {
  data(){
    return {
      act:"/"

    }
  },
  methods:{
    
  },
  mounted(){
    window.onload()
  },
  // 规定范围内的子组件
  components: {
    carousel,
    inputli,
    list,
    waterfall,
    wanghong
  }
}
</script>
<style scoped>
  .pad{
    padding-top: 40px;
  }
/* 中间列表 */
  .list{
    margin-top: -130px!important;
  }
  /* 瀑布流 */
  .waterfall{
    padding-top: 30px;
    height: auto;
  }
  /* tabbar */
  .tabbar{
    z-index: 10000000!important;
  }
  /* tabbar底部选项卡 */
  .mint-tab-item-icon{
    margin: auto!important;
  }
  .mint-tab-item-icon:active{
    margin: auto!important;
  }
</style>
