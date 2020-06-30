<template>
  <div class="home">
    <div class="index">
      <carousel></carousel>
      <inputli></inputli>
      <list></list>
    </div>
    <wanghong></wanghong>
    <keep-alive>
      <WaterList></WaterList>
    </keep-alive>
  </div>
</template>

<script>
import carousel from "../components/carousel.vue";
import inputli from "../components/inputli";
import list from "../components/list";
// import Waterfall from "../components/waterfall";
import wanghong from "../components/wanghong";
import WaterList from "../components/WaterList";
export default {
  components: {
    carousel,
    inputli,
    list,
    // Waterfall,
    wanghong,
    WaterList
  }
};
</script>
<style scoped>
.index {
}
</style>
