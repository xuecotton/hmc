<template>
    <div class="app">
        <!--详情图片 -->
        <div class="img">
            <mt-swipe id="carousel_list" ref='swipe'  :auto="0" :show-indicators="false" @change="swipeChange">
                <mt-swipe-item id="carousel_item" v-for="(item,index) in img" :key="index" >
                    <img :src="require('../assets/images/' + item)" alt="">
                    {{item}}
                </mt-swipe-item>
            </mt-swipe>
        </div>
        <div class="img_index">
             <span class='index'>{{activeIndex}}/{{img.length}}</span>
        </div>
        <div class="main">
            <!-- 作者信息 -->
            <div class="mian_content">
                <div class="author">
                    <span class='author_avatar'></span>
                    <span class='author_name'>蟑螂恶霸</span>
                </div> 
                <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
                <div class="desc" id="readText">
                    <p>达拉崩吧斑得贝迪卜多比鲁翁</p>
                    <br>
                    <p>很久很久以前,巨龙突然出现,带来灾难带走了公主又消失不见,王国十分危险,世间谁最勇敢,一位勇者赶来,大声喊:</p>
                    <p>我要带上最好的剑,翻过最高的山,闯进最深的森林,把公主带回到面前。</p>
                    <p>年轻人想了想，他说陛下我叫，达拉崩吧斑得贝迪卜多比鲁翁国王：再说一次少年：达拉崩巴斑得贝迪卜多比鲁翁国王：是不是，达拉崩吧斑得贝迪卜多比鲁翁少年：对对，达拉崩巴斑得贝迪卜多比鲁翁旁白：英雄达拉崩吧，骑上最快的马带着大家的希望从城堡里出发战胜怪兽来袭，获得十二金币无数伤痕见证，他慢慢升级小女孩：偏远美丽村庄，打开所有宝箱一路风霜伴随指引前路的圣月光闯入一座山洞，公主和可怕的巨龙英雄拔出宝剑，巨龙说巨龙：我是，昆图库塔卡提考特苏瓦西拉松少年：再来一次巨龙：昆图库塔卡提考特苏瓦西拉松少年：是不是，昆特牌提琴，烤蛋挞，苏打，马拉松巨龙：不对，是昆图库塔卡提考特苏瓦西拉松旁白：于是少年：达拉崩巴斑得贝迪卜多比鲁翁旁白：砍向巨龙：昆图库塔卡提考特苏瓦西拉松旁白：然后巨龙：昆图库塔卡提考特苏瓦西拉松旁白：咬了少年：达拉崩吧斑得贝迪卜多比鲁翁旁白：最后达拉崩巴斑得贝迪卜多比鲁翁他战胜了巨龙：昆图库塔卡提考特苏瓦西拉松旁白：救出了，公主米娅莫拉苏娜丹妮谢莉红回到了，蒙达鲁克硫斯伯古比奇巴勒城国王听说达拉崩巴斑得贝迪卜多比鲁翁他打败了昆图库塔卡提考特苏瓦西拉松就把，公主米娅莫拉苏娜丹妮谢莉红嫁给达拉崩吧斑得贝迪卜多比鲁翁啦啦，达拉崩巴，公主米娅幸福得像个童话他们生下一个孩子，也在天天渐渐长大为了避免以后麻烦，孩子称作王浩然他的全名十分难念，要念你来念吧</p>
                </div>
                <span id="readMore" @click='readMore()'>查看更多</span>
                <div class="comment">
                    <img class="comment_img" src="../assets/images/fall2.jpg" alt="">
                    <div class="comment_intr">
                        <div class="intr_title">桃花坞，桃花庵</div>
                        <span class="intr_desc">西安·1居1床2人·24平米</span>
                        <span class="price">¥230</span>
                    </div>
                </div>
        <div class="date">发布于2020-06-11</div>
            </div>
        </div>

        
    </div>
</template>

<style scoped>
    .img{
        width: 100%;
        height:320px;
        position: relative;
    }
    #carousel_list{
        
        width: 100%;
    }
    /* 图片页标 */
    .img_index{
        position: relative;
    }
    .index{
        width: 50px;
        height: 25px;
        display: block;
        position: absolute;
        right: 5px;
        top:-30px;
        text-align: center;
        line-height: 25px;
        background-color:rgba(200,200,200,.2);
        border-radius: 12px;
        z-index: 999;
    }
    /* 文章主题 */
    .main{
        width: 100%;
        background-color: #fff;
        position:relative;
    }
    .mian_content{
        width: 100%;
        position: absolute;
        top:-5px;
        background-color: #fff;
        border-radius: 10px 10px 0 0 ;
    }
    .author{
        width: 100px;
        height: 25px;
        padding: 15px 0 10px 15px;
    }
    .autho>span{
       
    }
    .author_avatar{
        width: 25px;
        height: 25px;
        display: inline-block;
        background-image: url('../assets/images/avatar.jpg');
        background-size: contain;
        border-radius: 50%;
        vertical-align: sub;
    }
    .author_name{
        display: inline-block;
        margin-left: 5px;
        font-size: 12px;
        font-weight: 800;
        line-height: 25px;
    }
    /* 位置图标 */
    .address{
        height: 15px;
        font-size: 12px;
        color:#aaa;
        padding: 0 0 15px 15px;
    }
    .address>img{
        width: 15px;
        height: 15px;
        margin-right: 5px;
    }
    /* 文章内容 */
    .desc{
        width: 90%;
        height: 150px;
        overflow: hidden;
        margin:0 auto;
        box-sizing: border-box;
        line-height: 30px;
    }
    #readMore{
        float: right;
        margin-right: 15px;
        font-size: 18px;
        color: coral;
        font-weight: 800;
    }
    .comment{
        width: 95%;
        margin: 0 auto;
        height: 100px;
        border-radius: 5px;
        margin-top: 50px;
        display: flex;
        box-shadow: 2px 2px 2px #aaa;
        
    }
    .comment_img{
        flex: 1;
        border-radius: 5px 0 0 5px;
    }
    .comment_intr{
        flex:2;
        display:flex;
        flex-flow: column;
        margin-left: 10px;
    }
    .intr_title,.intr_desc,.price{
        margin: 8px 0;
    }
    .intr_title{
        font-size: 20px;
        color:#333;
    }
    .intr_desc{
        font-size: 12px;
        color:#555;
    }
    .price{
        font-size: 20px;
        color:#ffd037;
    }
    .date{
        margin : 15px 0 15px 5px;
        font-size: 15px;;
    }
</style>
<script>
export default {
    data(){
        return{
            activeIndex:1,
            img:["swipe01.jpg","swipe02.jpg","swipe03.jpg","swipe04.jpg"]
        }
    },
    methods:{
        swipeChange() {
                this.activeIndex = this.$refs.swipe.index + 1;
                this.length = this.$refs.swipe.length;
            },
        readMore(){ //查看更多的方法
            // 获取元素
            var readTxt = document.getElementById('readText');
            var MoreEle = document.getElementById('readMore');
            //改变文本显示高度
            readTxt.style.height = 'auto';
            MoreEle.style.display = 'none'

        }
    },
    mounted(){
        this.axios.get('/desc',{ 
            params:{id:9002}
        } ).then((res)=>{
            console.log(res.data)
        })
    }
}
</script>