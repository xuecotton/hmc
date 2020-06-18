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
                    <div class="dingwei">
                        <div class="item-img">
                            <img src="../assets/首页图片/房间样式/美国教堂/外景.jpg" alt="">
                            <img src="../assets/首页图片/房间样式/美国教堂/客厅.jpg" alt="">
                            <img src="../assets/首页图片/房间样式/美国教堂/远景.jpeg" alt="">
                        </div>
                        <div class="item-icon">
                            <span>
                                ￥359
                            </span>
                            <span>
                                <img src="../assets/tabbar/灰色/aixin1.png" alt="">
                            </span>
                        </div>
                    </div>
                    <div class="item-p">
                        <span>
                            北京西郊美式教堂别墅房
                        </span>
                        <span>
                            5室2厅&emsp;宜居8人
                        </span>
                    </div>
                </div>
            </div>
            <div class="li">
                <div class="item">
                    <div class="dingwei">
                        <div class="item-img">
                            <img src="../assets/首页图片/房间样式/美国教堂/外景.jpg" alt="">
                            <img src="../assets/首页图片/房间样式/美国教堂/客厅.jpg" alt="">
                            <img src="../assets/首页图片/房间样式/美国教堂/远景.jpeg" alt="">
                        </div>
                        <div class="item-icon">
                            <span>
                                ￥359
                            </span>
                            <span>
                                <img src="../assets/tabbar/灰色/aixin1.png" alt="">
                            </span>
                        </div>
                    </div>
                    <div class="item-p">
                        <span>
                            北京西郊美式教堂别墅房
                        </span>
                        <span>
                            5室2厅&emsp;宜居8人
                        </span>
                    </div>
                </div>
            </div>
            <div class="showbottom"></div>
        </div>
        <mt-tabbar fixed v-model="act">
        <mt-tab-item id="home">
            <router-link to="/" slot="icon">
                <img id="bug1img" src="../assets/tabbar/蓝色/fangzi.png" alt="">
            </router-link>
        </mt-tab-item>
        <mt-tab-item id="aixin">
            <router-link to="/" slot="icon">
                <img src="../assets/tabbar/蓝色/aixin1.png" alt="">
            </router-link>
        </mt-tab-item>
        <mt-tab-item id="sousuo">
            <router-link to="/" slot="icon">
                <img src="../assets/tabbar/蓝色/sousuo.png" alt="">
            </router-link>
        </mt-tab-item>
        <mt-tab-item id="user">
            <router-link to="/" slot="icon">
                <img src="../assets/tabbar/蓝色/user.png" alt="">
            </router-link>
        </mt-tab-item>
      </mt-tabbar>
    </div>
</template>


<script>
export default {
    data(){
        return{
            act:""
        }
    }
}
</script>

<style scoped>
    .showbottom{
        padding-top: 15%;
    }
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
        padding-top: 20px;
        margin-top: -120px;
    }
    
    .li{
        width: 100%;
        height: 300px;
        border-radius: 3% 3% 3% 3%;
        overflow: hidden;
        display: flex;
        justify-content: center;
        align-items: center;
        padding-top: 20px;
    }
    /* 列表项包裹层 */
    .item{
        height: 100%;
        width: 90%;
        border-radius: 3% 3% 3% 3%;
        overflow: hidden;
    }
    /* 三个图片的包裹层 */
    .item-img{
        width: 100%;
        height: 100%;
        display: flex;
        flex-flow: column;
        flex-wrap: wrap;

    }
    /* 上面三个图片的样式 */
    .item-img img{
        box-sizing: border-box;
        
    }
    .item-img img:first-child{
        width: 70%;
        height: 100%;
        padding-right: 1px;
        background-color: white;
    }
    .item-img img:nth-child(2){
        width: 30%;
        height: 50%;
        padding-bottom: 1px;
        background-color: white;
    }
    .item-img img:last-child{
        width: 30%;
        height: 50%;
    }
    /* 设置定位包裹样式 */
    .dingwei{
        width: 100%;
        height: 80%;
        position: relative;
    }
    /* 设置相对定位样式 */
    .item-icon>span{
        position: absolute;
        color: white;
        font-size: 20px;
    }
    .item-icon>span:first-child{
        left: 5%;
        bottom: 0;
    }
    .item-icon>span:last-child{
        right: 5%;
        top: 5%;
    }
    /* 设置图片下文本样式 */
    .item-p{
        height: 20%;
        background-color: white;
        display: flex;
        flex-flow: column;
        justify-content: space-around;
        align-items: flex-start;
    }
    .item-p>span{
        padding-left: 5%;
    }
    .item-p>span:first-child{
        font-weight: bolder;
    }
    .item-p>span:last-child{
        font-size: 14px;
        color: #888;
    }
</style>