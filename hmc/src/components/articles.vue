<template>
  <div class="app">
    <!-- 顶部导航及头像开始-->
    <div class="top">
      <span class='title'>发现</span>
      <span calss='option' id='citys'>北京 <span></span> </span>
      <span class='avatar'></span>
    </div>
    <!-- 顶部顶部导航及头像开始 -->
    <!-- 轮播图 -->
    <div id='carousel'>
      <mt-swipe id="carousel_list"  :auto="3000" continuous showIndicators>
      <mt-swipe-item id="carousel_item"><img src="../assets/images/swipe01.jpg" alt=""></mt-swipe-item>
      <mt-swipe-item id="carousel_item"><img src="../assets/images/swipe02.jpg" alt=""></mt-swipe-item>
      <mt-swipe-item id="carousel_item"><img src="../assets/images/swipe03.jpg" alt=""></mt-swipe-item>
      <mt-swipe-item id="carousel_item"><img src="../assets/images/swipe04.jpg" alt=""></mt-swipe-item>
    </mt-swipe>
    </div>
    <!-- 轮播图结束 -->
    <!-- 中间导航栏 -->
    <div id="navbar">
      <ul class="bar_list">
        <li class="bitem">精选<span class='select'></span></li>
        <li class="bitem">收藏热榜<span class='select'></span></li>
        <li class="bitem">亲子房<span class='select'></span></li>
      </ul>
    </div>
    <!-- 瀑布流 -->
    <div class="waterfall">
      <div id="box">
        <div id="box_item">
          <router-link to="/article">
            <img src="../assets/images/fall11.jpg" alt="">
          </router-link>
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <router-link to="/article">
              <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            </router-link>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall112.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall113.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall114.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall124.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall123.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall122.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
        <div id="box_item">
          <img src="../assets/images/fall121.jpg" alt="">
          <div class="intr">
            <p class="address"><img src="../assets/images/weizhi.png" alt="">北京</p>
            <div class="art_title"><span>面朝大海，春暖花开，我在等风也在能你，大漠孤烟直，长河落日圆</span></div>
            <p class='author'><span class="author_avatar"></span><span>作者姓名</span><img src="../assets/images/dianzan.png" alt=""><span>120</span></p>
          </div>
        </div>
      </div>
    </div>

  </div>
</template>
// <script>
export default {
  beforeMount(){
    window.onload = function(){
    var box = document.getElementById('box');
// 文字介绍内容
    
    var items = box.children;
    // 每列之间的间隙
    var gap = 10;

      // 一进来就调用一次
      waterFall();
      // 封装成函数
      function waterFall(){
         var pageWidth = getClient().width;  //取页面宽
         var itemWidth = items[0].offsetWidth; //取图片宽
         var columns = parseInt(pageWidth/(itemWidth+gap)); //取列数
         var arr = [];//定义数组，获取每列当前高度
         for (var i = 0; i<items.length; i++){
           if(i<columns){  //第一行
          //获取第一行的图片定位，top 和left 再把当前高度放进数组
              items[i].style.top = 0;
              items[i].style.left = (itemWidth + gap )* i +'px';
              arr.push(items[i].offsetHeight);
           } else {
            //  其他行，，找到数组中最小的高，和他的下标
            var minHeight = arr[0];
            var index = 0 ;
            for(var j = 0; j<arr.length;j++){
              if(minHeight>arr[j]){
                minHeight = arr[j];
                index = j;
              }
            }
            // 下一行第一个盒子位置
            // top 就是高度最小的那个+gap
            items[i].style.top = arr[index] +gap +'px';
            console.log(items[i].style.top)
            // left就是最小列距离左边的距离
            items[i].style.left = items[index].offsetLeft + 'px';
            console.log(items[i].style.left)
            // 修改最小列的高度
            // 最小列高度=当前自己高度+拼接来得高+间隙
            arr[index] = arr[index] + items[i].offsetHeight + gap;
           }
         }
      }
    //  页面改变尺寸时再次触发
    window.onresize = function(){
      waterFall();
    }

    // 懒加载实现
    // 当加载到第30张时，
    // window.onscroll = function(){
    //   if(getClient().height + getScrollTop() >=  items[items.length-1].offsetTop){
    //     // 发送ajax请求获取数据
    //     var datas = [
    //       "../images/0001.jpg",
    //       "../images/0001.jpg",
    //       "../images/0001.jpg",
    //       "../images/0001.jpg"
    //     ];
    //     for(var i=0; i<datas.length; i++){
    //       var div = document.createElement('div');
    //       div.className = 'item';
    //       div.innerHTML = '<img src="' +datas[i]+'"alt="">';
    //       box.appendChild(div);
    //     }
    //     waterFall();
    //   }
    // }

    }
    function getClient(){
      return {
        width: window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth,
        height: window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight
      }
    }
    // function getScrollTop() {
    //     return window.pageYOffset || document.documentElement.scrollTop;
    // }
  }
}
</script>


<style scoped>
/* 顶部城市选择样式 */
 .top{
   width: 100%;
   height: 25px;
   font-size: 10px;
   margin-top: 15px;
 }
 .title{
   font-size: 20px;
   margin-right: 5px;
   margin-left: 15px;
 }
 #citys{
   padding:15px 5px 0px 5px;
   display: inline-block;
   width: 25px;
   position: relative;
   overflow: hidden;
 }
 #citys>span{
   content:'';
   background-color: #000;
   width: 6px;
   height: 6px;
   position: absolute;
   bottom: -2.5px;
   right: -3px;
   transform: rotate(45deg);
 }
 /* 头像 */
 .avatar{
   display: inline-block;
   float:right;
   width: 25px;
   height: 25px;
   border-radius: 50%;
   margin-right: 15px;
   background-image: url("../assets/images/avatar.jpg");
   background-position:center;;
   background-size: contain;
   vertical-align: sub;
 }
 /* 撑开没宽度的头像框 */
 .avatar::before{
   content:''
 }

 /* 轮播图 */
 
#carousel{
  margin-top: 15px;
  width: 100%;
  height: 125px;
  
}
#carousel_list{
  width: 90%;
  margin: 0 auto;
  height: 125px;
  
}
#carousel_item>img{
  width: 100%;
  margin:0 auto;
  height: 120px;
  border-radius: 5px;
}
/* 中间导航 */
#navbar{
  width: 100%;
  height: 20px;
  margin: 15px 0 15px;
  background-color: #fff;
}
#navbar .bar_list{
  width: 100%;
  height: 20px;
  display: flex;
  flex-flow:row;
  justify-content: center;
}
.bitem{
  width:160px;
  text-align: center;
  margin: 0 25px;
  display: flex;
  flex-flow: column;
  justify-content: center;
}
.select{
  width: 15px;
  margin: 0 auto;
  margin-top: 5px;
  border-top: 2px solid #fef;
}
/* 导航栏激活后样式 */
.selected{
  border-top: 2px solid yellow;
}

/* 瀑布流 */
.waterfall{
  width: 100%;
  margin-top: 0px;

}
#box{
  width:93%;
  margin:0 auto;
  position: relative;
}
#box::after{
  content:'';
  display: table;
}
#box_item{
  height: auto;
  width: 48%;
  border-radius: 5px;
  position: absolute;
  box-shadow: 2px 2px 2px #999;
  display: flex;
  flex-flow: column;
  justify-content: center;
}
#box_item>img{
  
  height: auto;
  border-radius: 5px 5px 0 0 ;
}

/* 文章标题作者样式 */
.intr{
  width: 90%;
  height:100px;
  margin:0 auto;
  margin-top: 5px;
}
.address{
  height: 15px;
  font-size: 12px;
  color:#aaa;
}
.address>img{
  width: 15px;
  height: 15px;
}
.art_title{
  width: 100%;
  height: 32px;
  margin: 0 ;
  margin-top: 5px;
  text-overflow: -o-ellipsis-lastline;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  line-clamp: 2;
  -webkit-box-orient: vertical;
}
.art_title>span{
  font-size: 16px;
  letter-spacing: 1.5px;
}
.author{
  height: 20px;
  margin-top: 15px;
  display: flex;
  flex-flow: row;
  align-items: center;
  justify-content: space-between;
}
.author>img{
  height: 20px;
  width: 20px;
}
.author_avatar{
  display: inline-block;
  width:18px;
  height: 18px;
  margin-right: 0px;
  border-radius: 50%;
  vertical-align: sub;
  background-image: url('../assets/images/avatar.jpg');
  background-size: cover;
  background-position: center;
}
.author>span{
 
  font-size: 10px !important;
  font-weight:bold;
}
.dianzan{
  font-size: 10px !important;
  margin-right: 15px;
}


</style>
