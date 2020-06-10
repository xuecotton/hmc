<template>
    <div>
        <!-- mintui中的swipe轮播图插件 -->
        <mt-swipe :auto='4000' class="carousel">
            <mt-swipe-item>
                <img src="../assets/houseimg/房间.jpg" alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img src="../assets/houseimg/房间6.jpg" alt="">
            </mt-swipe-item>
        </mt-swipe>
    </div>
</template>
<script>

export default {
    //
    name:'carousel'
}
</script>


<style scoped>
    *{margin: 0 ;padding: 0;}
    /* 轮播图样式 */
    .carousel{
        width: 100%;height: 250px;
    }
    .carousel img{max-width: 100%;}
    /* 豆豆样式 */

</style>
