<template>
    <div>
        <!-- 头部导航栏 -->
        <mt-header title="民宿畅销榜" class="cxhead">
            <router-link slot="left" to="/">
                <mt-button icon="back" type="primary"></mt-button>
            </router-link>
            <router-link slot="right" to="/">
                <mt-button icon="more" type="primary"></mt-button>
            </router-link>
        </mt-header>
        <!-- 背景图片 -->
        <div class="bgimg">
            <div>
                <img src="../assets/首页图片/房间样式/古典.jpg" alt="">
                <span>畅销榜</span>
                <img src="../assets/首页图片/图标灰色/aixin.png" alt="">
            </div>
        </div>
    </div>
</template>

<style scoped>
    /* 导航栏样式 */
    .cxhead{
        background-color: white;
        color: black;
    }
    .mint-header-button{
        color: black;
    }
    /* 背景图以及右上角图片样式 */
    .bgimg{
        position: relative;
    }
    .bgimg img:first-child{
        width: 100%;
        height: 100%;
    }
    .bgimg img:last-child{
        position: absolute;
        right: 3%;
        top:3%;
    }
    /* 顶部图片字体样式 */
    /* 做到这了 */
    .bgimg span{
        position: absolute;
        z-index: 10; 
    }
</style>