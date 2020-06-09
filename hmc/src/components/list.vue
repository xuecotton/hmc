<template>
    <div class="listall">
        <ul>
            <li><router-link to="/"><img src="../assets/首页图片/图标蓝色/zufang.png">
                <p>长租好房</p>
            </router-link></li>
            <li><router-link to="/"><img src="../assets/首页图片/图标蓝色/key.png">
                <p>无接触房</p>
            </router-link></li>
            <li><router-link to="/"><img src="../assets/首页图片/图标蓝色/medal.png">
                <p>品牌保证</p>
            </router-link></li>
            <li><router-link to="/"><img src="../assets/首页图片/图标蓝色/mofabang.png">
                <p>新奇体验</p>
            </router-link></li>
            <li><router-link to="/"><img src="../assets/首页图片/图标蓝色/paizhao.png">
                <p>实拍美屋</p>
            </router-link></li>
                <div class="sec">
            <li><router-link to="/"><img src="../assets/首页图片/图标蓝色/jiangpai.png">
                <p>评分最高</p>
            </router-link></li>
            <li><router-link to="/"><img src="../assets/首页图片/图标蓝色/dianfanbao.png">
                <p>做饭方便</p>
            </router-link></li>
            <li><router-link to="/"><img src="../assets/首页图片/图标蓝色/coupon.png">
                <p>租房返金</p>
            </router-link></li>
            <li><router-link to="/"><img src="../assets/首页图片/图标蓝色/aiqingyuehui.png">
                <p>浪漫约会</p>
            </router-link></li>
            <li><router-link to="/"><img src="../assets/首页图片/图标蓝色/youhuiquan.png">
                <p>新手折扣</p>
            </router-link></li>
                </div>
        </ul>
    </div>
</template>
<style scoped>
/* 列表样式 */
    ul{list-style: none;}
    ul::before{
        content: "";
        display: table;
    }
    ul li{float: left;width: 20%;height: 30px;}
    ul li img{width: auto;height: 100%;}
    a{text-decoration: none;font-size: 10px;color: black;}
    a:active{color: #76d1d9;}
    /* 后一排向下 */
    .sec{margin-top: 55px;}
</style>