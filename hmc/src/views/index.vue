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
        <mt-tab-item id="home">
          <img id="bug1img" src="../assets/tabbar/蓝色/fangzi.png" alt="" slot="icon" v-if="act=='home'">
          <img src="../assets/tabbar/灰色/fangzi.png" alt="" slot="icon" v-else>
        </mt-tab-item>
        <mt-tab-item id="aixin">
          <img src="../assets/tabbar/蓝色/aixin1.png" alt="" slot="icon" v-if="act=='aixin'">
          <img src="../assets/tabbar/灰色/aixin1.png" alt="" slot="icon" v-else>
        </mt-tab-item>
        <mt-tab-item id="sousuo">
          <img src="../assets/tabbar/蓝色/sousuo.png" alt="" slot="icon" v-if="act=='sousuo'">
          <img src="../assets/tabbar/灰色/sousuo.png" alt="" slot="icon" v-else>
        </mt-tab-item>
        <mt-tab-item id="user">
          <img src="../assets/tabbar/蓝色/user.png" alt=""  slot="icon" v-if="act=='user'">
          <img src="../assets/tabbar/灰色/user.png" alt="" slot="icon" v-else>
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
      act:"home"

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
