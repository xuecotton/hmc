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
        <!-- 渐变层 -->
        <div class="linergra">
            <p>海量数据盘点|全网人气爆款</p>
        </div>
        <!-- 列表 -->
        <div class="houseli">
            <div class="li">
                <div class="item">
                    <div class="item-img">
                        <img src="" alt="">
                        <img src="" alt="">
                        <img src="" alt="">
                    </div>
                    <div class="item-text">
                        
                    </div>
                    <div class="item-p"></div>
                </div>
            </div>
            <div style="clear:both"></div>
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
    .bgimg span{
        position: absolute;
        z-index: 10; 
        top: 50%;left: 50%;
        transform: translate(-50%,-50%);
        color: white;
        font: 50px 'STKaiti';
    }

    /* 渐变层样式 */
    .linergra{
        height: 100px;width: 100%;
        background-image: linear-gradient(to top,#5b4125,rgba(0,0,0,0));
        position: relative;
        top: -100px;
        z-index: 1000;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .linergra p{
        color: #f1e8e0;
        font: 16px 'STKaiti';
    }

    /* 房屋列表样式 */
    .houseli{
        width: 100%;
        height: auto;
        background-color:#5b4125;
    }
</style>