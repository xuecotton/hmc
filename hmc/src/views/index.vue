<template>
  <div class="index">
    <carousel></carousel>
    <inputli></inputli>
    <list class="list"></list>
  </div>
</template>

<script>



import carousel from '../components/carousel.vue';
import inputli from '../components/inputli';
import list from '../components/list'
export default {
  // 规定范围内的子组件
  components: {
    carousel,
    inputli,
    list
  }
}
</script>
<style scoped>
  .list{
    margin-top: -110px!important;
  }
</style>
