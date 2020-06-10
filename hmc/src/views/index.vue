<template>
  <div class="index">
    <carousel></carousel>
    <inputli></inputli>
    <list class="list"></list>
    <waterfall></waterfall>
  </div>
</template>

<script>



import carousel from '../components/carousel.vue';
import inputli from '../components/inputli';
import list from '../components/list';

import waterfall from '../components/waterfall';
export default {
  // 规定范围内的子组件
  components: {
    carousel,
    inputli,
    list,
    waterfall
  }
}
</script>
<style scoped>
  .list{
    margin-top: -130px!important;
  }
  .index{height: 350px;}
</style>
