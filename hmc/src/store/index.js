import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    userMsg: "",
  },
  mutations: {
    setUsermsg(state, userMsg) {
      state.userMsg = userMsg;
    },
    // waterfall(){
    //   console.log("vuex瀑布流执行")
    //   window.getindex=function(arr,val){
    //       for(var i=0;i<arr.length;i++){
    //           if(arr[i]==val){
    //               return i
    //           }
    //       }
    //   };

    //   // 获取所有box
    //   var boxs=document.getElementsByClassName('box')
    //   // 获取主区域
    //   var main=document.getElementsByClassName('main')[0]
    //   console.log(main)
    //   // 宽
    //   var boxwidth=173
    //   // 列
    //   var cols=Math.floor(document.documentElement.clientWidth/boxwidth)
    //   // 设置主区域的宽度
    //   main.style.width=cols*boxwidth+"px";
    //   // 空数组
    //   var harr=[];
    //   for(var i=0;i<boxs.length;i++){
    //       if(i<cols){
    //           boxs[i].style.top="0px";
    //           boxs[i].style.left=boxwidth*i+"px"
    //           harr.push(boxs[i].offsetHeight);
    //       }else{
    //           // 获取当前最矮的box及其下标
    //           var minheight=Math.min(...harr);
    //           var index=window.getindex(harr,minheight);
    //           // 为后面的box设置position;
    //           boxs[i].style.position='absolute';
    //           // 设置高为当前最矮值
    //           boxs[i].style.top=minheight+"px";
    //           // boxs[i].style.top="212px";
    //           // 设置左侧距离
    //           boxs[i].style.left=index*boxwidth+"px";
    //           // 更新数组中最矮的值
    //           harr[index]+=boxs[i].offsetHeight;
    //       }
    //   }
    // }
  },
  actions: {},
  modules: {},
});
