<template>
    <div class="all">
        <mt-header title="公寓" class="head" fixed>
            <router-link to="/" slot="left">
                <mt-button icon="back" style="padding-left:10px"></mt-button>
            </router-link>
        </mt-header>
        <div class="listall">
            <table></table>
            <div class="li" v-for="(v,k) of 8" :key="k">
                <div><img src="../assets/houseimg/房间0.jpg" alt=""></div>
                <div>
                    <div>绿森公寓</div>
                    <div>
                        <img src="../assets/xingxing.png" alt="">
                        <img src="../assets/xingxing.png" alt="">
                        <img src="../assets/xingxing.png" alt="">
                    </div>
                    <div><img src="../assets/dingwei.png" alt="">建设大道250号</div>
                    <div><span>$88.0</span>/房间/晚</div>
                    <div>立减51.0%</div>
                    <div>已包含所有花费</div>
                </div>
            </div>
        </div>
        <div class="pad"></div>
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
    .pad{
        padding-bottom: 50px;
    }
    /* 顶部 */
    .head{
        background-color:#39bdc8;
        padding: 30px 0;
    }
    .all{
        background: #f5f5f5;
    }
    .all::before{
        content: "";
        display: table;
    }
    /* 房屋列表 */
    .li{
        width: 90%;
        height: 200px;
        border-radius: 10px;
        border:1px solid #888;
        display: flex;
        justify-content: left;
        margin-left:5% ;
        background-color: white;
    }
    .listall{
        margin-top: 70px;
    }
    .li:first-child{
        margin-top: 60px;
    }
    /* 房屋列表左侧样式 */
    .li>div:first-child{
        width: 40%;
        overflow: hidden;

    }
    .li>div:first-child img{
        height: 100%;
        width: auto;
        border-radius: 10px 0px 0px 10px;
    }
    /* 房屋列表右侧样式 */
    .li>div:last-child{
        display: flex;
        flex-flow: column;
        align-items:left;
        justify-content: space-around;
        padding-left: 5%;
    }
    /* 右侧文本样式 */
    .li>div:last-child>div:first-child{
        font-size: 18px;
        font-weight: bold;
        display: flex;
        justify-content: left;
    }
    .li>div:last-child>div:nth-child(2){
        display: flex;
        justify-content: left;
    }
    .li>div:last-child>div:nth-child(3){
        display: flex;
        justify-content: left;
        font-size: 14px;
        color: #888;
    }
    .li>div:last-child>div:nth-child(4){
        display: flex;
        justify-content: left;
        align-items: center;
    }
    .li>div:last-child>div:nth-child(4) span{
        font-size: 24px;
        color: green;
    }
    .li>div:last-child>div:nth-child(5){
        display: flex;
        justify-content: left;
        font-size: 12px;
        color: #f00;
    }
    .li>div:last-child>div:last-child{
        display: flex;
        justify-content: left;
        font-size: 12px;
        color: #888;
    }
    .li+.li{
        margin-top: 15px;
    }
</style>