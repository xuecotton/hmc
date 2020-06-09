<template>
  <div class="index">
    <carousel></carousel>
    <inputli></inputli>
  </div>
</template>

<script>



import carousel from '../components/carousel.vue';
import inputli from '../components/inputli'
export default {
  // 规定范围内的子组件
  components: {
    carousel,
    inputli
  }
}
</script>
<style scoped>

</style>
