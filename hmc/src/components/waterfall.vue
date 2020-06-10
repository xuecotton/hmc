<template>
    <div>
        <p>123</p>
        <div class="main">
            <div class="box">
                <div>
                    <div class="img">
                        <img src="../assets/houseimg/房间.jpg" alt="">
                        <img src="../assets/首页图片/图标橙色/zufangfenqi.png" alt="">
                    </div>
                    <div class="text">
                        <p><span><img src="../assets/首页图片/图标灰色/location.png" alt="">北京东城区</span></p>
                        <p>11111111111111111111111111s</p>
                        <p><span><img src="../assets/max.jpg" alt="">USERNAME</span></p>
                    </div>
                </div>
            </div>
            <div class="box">
                <div>
                    <div class="img">
                        <img src="../assets/houseimg/房间1.jpg" alt="">
                        <img src="../assets/首页图片/图标橙色/zufangfenqi.png" alt="">
                    </div>
                    <div class="text">
                        <p><span><img src="../assets/首页图片/图标灰色/location.png" alt="">北京东城区</span></p>
                        <p>11111111111111111111111111s</p>
                        <p><span><img src="../assets/max.jpg" alt="">USERNAME</span></p>
                    </div>
                </div>
            </div>
            <div class="box">
                <div>
                    <div class="img">
                        <img src="../assets/houseimg/房间2.jpg" alt="">
                        <img src="../assets/首页图片/图标橙色/zufangfenqi.png" alt="">
                    </div>
                    <div class="text">
                        <p><span><img src="../assets/首页图片/图标灰色/location.png" alt="">北京东城区</span></p>
                        <p>11111111111111111111111111s</p>
                        <p><span><img src="../assets/max.jpg" alt="">USERNAME</span></p>
                    </div>
                </div>
            </div>
            <div class="box">
                <div>
                    <div class="img">
                        <img src="../assets/houseimg/房间3.jpg" alt="">
                        <img src="../assets/首页图片/图标橙色/zufangfenqi.png" alt="">
                    </div>
                    <div class="text">
                        <p><span><img src="../assets/首页图片/图标灰色/location.png" alt="">北京东城区</span></p>
                        <p>11111111111111111111111111s</p>
                        <p><span><img src="../assets/max.jpg" alt="">USERNAME</span></p>
                    </div>
                </div>
            </div>
            <div class="box">
                <div>
                    <div class="img">
                        <img src="../assets/houseimg/房间4.jpg" alt="">
                        <img src="../assets/首页图片/图标橙色/zufangfenqi.png" alt="">
                    </div>
                    <div class="text">
                        <p><span><img src="../assets/首页图片/图标灰色/location.png" alt="">北京东城区</span></p>
                        <p>11111111111111111111111111s</p>
                        <p><span><img src="../assets/max.jpg" alt="">USERNAME</span></p>
                    </div>
                </div>
            </div>
            <div class="box">
                <div>
                    <div class="img">
                        <img src="../assets/houseimg/房间5.jpg" alt="">
                        <img src="../assets/首页图片/图标橙色/zufangfenqi.png" alt="">
                    </div>
                    <div class="text">
                        <p><span><img src="../assets/首页图片/图标灰色/location.png" alt="">北京东城区</span></p>
                        <p>11111111111111111111111111s</p>
                        <p><span><img src="../assets/max.jpg" alt="">USERNAME</span></p>
                    </div>
                </div>
            </div>
            <div class="box">
                <div>
                    <div class="img">
                        <img src="../assets/houseimg/房间6.jpg" alt="">
                        <img src="../assets/首页图片/图标橙色/zufangfenqi.png" alt="">
                    </div>
                    <div class="text">
                        <p><span><img src="../assets/首页图片/图标灰色/location.png" alt="">北京东城区</span></p>
                        <p>11111111111111111111111111s</p>
                        <p><span><img src="../assets/max.jpg" alt="">USERNAME</span></p>
                    </div>
                </div>
            </div>
            <div class="box">
                <div>
                    <div class="img">
                        <img src="../assets/houseimg/房间7.jpg" alt="">
                        <img src="../assets/首页图片/图标橙色/zufangfenqi.png" alt="">
                    </div>
                    <div class="text">
                        <p><span><img src="../assets/首页图片/图标灰色/location.png" alt="">北京东城区</span></p>
                        <p>11111111111111111111111111s</p>
                        <p><span><img src="../assets/max.jpg" alt="">USERNAME</span></p>
                    </div>
                </div>
            </div>
            <div class="box">
                <div>
                    <div class="img">
                        <img src="../assets/houseimg/房间8.jpg" alt="">
                        <img src="../assets/首页图片/图标橙色/zufangfenqi.png" alt="">
                    </div>
                    <div class="text">
                        <p><span><img src="../assets/首页图片/图标灰色/location.png" alt="">北京东城区</span></p>
                        <p>11111111111111111111111111s</p>
                        <p><span><img src="../assets/max.jpg" alt="">USERNAME</span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    mounted(){
        this.waterfall()
    },
    methods:{
        // 获取最矮的值得index下标
        getindex(arr,val){
            for(var i=0;i<arr.length;i++){
                if(arr[i]==val){
                    return i
                }
            }
        },
        // 瀑布流效果
        waterfall(){
            // 获取所有box
            var boxs=document.getElementsByClassName('box')
            // 获取主区域
            var main=document.getElementsByClassName('main')[0]
            var boxwidth=boxs[0].offsetWidth;
            var cols=Math.floor(document.documentElement.clientWidth/boxwidth)
            console.log(boxs[0].offsetHeight);
            // 设置主区域的宽度
            main.style.width=cols*boxs[0].offsetX+"px";
            // 空数组
            var harr=[];
            for(var i=0;i<boxs.length;i++){
                if(i<cols){
                    harr.push(boxs[i].offsetHeight)
                }else{
                    // 获取当前最矮的box及其下标
                    var minheight=Math.min(...harr);
                    var index=this.getindex(harr,minheight);
                    console.log(minheight)
                    // 为后面的box设置position;
                    boxs[i].style.position='absolute';
                    // 设置高为当前最矮值
                    boxs[i].style.top=minheight+"px";
                    // 设置左侧距离
                    boxs[i].style.left=index*boxwidth+"px";
                    // 更新数组中最矮的值
                    harr[index]+=boxs[i].offsetHeight
                }
            }
        }
    }
}
</script>




<style scoped>
    /* 大包裹样式 */
    .main{position: relative;}
    /* box样式 */
    .box{
    width: 40%;overflow: hidden;
    float: left;
    padding: 15px 0 0 6%;
    overflow: hidden;
    }

    .box div{ word-wrap:break-word;}
    .box>div{
        border: 1px solid red;
        border-radius: 10px;
        box-shadow: 0 0 5px #ccc;
    }
    /*  */

    /* 图片样式 */
    .img{position: relative;}
    .img>img:first-child{width: 100%;height: auto;}
    /* 图片中小图片样式 */
    /* .img>img:last-child{width: 10%;height: 10%;} */
    .img>img:last-child{position: absolute;right: 5%;top: 5%;}

    /* 文字区域样式 */
    /* 第一行 */
    .text>p:first-child{
        font-size: 10px;
        color: #888;
    }
    .text>p:first-child span{float: left;}
    /* 第二行 */
    .text>p:nth-child(2){
        clear: both;
        text-align: left;
    }
    /* 第三行 */
    .text>p:last-child{
        font-size: 10px;
        line-height: 100%;
    }
    .text>p:last-child span{
        padding-right: 34%;
    }
    .text>p:last-child img{
        width: 20%;height: auto;
        border-radius: 50%;
    }
</style>
