<template>
    <div class="inputall">
        <div>
            <div class="top">
                <div><img src="../assets/首页图片/图标灰色/location.png" alt=""></div>
                <div><input type="text" placeholder="地点或寄宿名称"></div>
            </div>
            <div class="mid">
                <div>
                    <input type="date" v-model="starttime" @blur="start">
                    <!-- <button @click="dataClick">
                        <mt-datetime-picker
                            v-model="pickerVisible"   
                            ref="pickerData"             
                            type="date"                    
                            year-format="{value} 年"
                            month-format="{value} 月"
                            date-format="{value} 日"
                            @confirm="handleConfirm"    
                            :startDate="startDate"   
                            >
                        </mt-datetime-picker>
      
                        123
                    </button> -->
                    
                </div>
                <div><input type="date" v-model="endtime" @blur="end"></div>
            </div>
            <div class="btm">
                <div><input type="text" placeholder="人数"></div>
            </div>
            <div class="btn">
                <button><span>搜索</span></button>
            </div>
        </div>
    </div>
</template>



<script>
// 引入picker
 //import { DatetimePicker } from 'mint-ui';

export default{
    name:'inputli',

    data(){
        return{
            pickerVisible:'',
            startDate:new Date(),
            time:'',
            starttime:"",
            endtime:""
        }
    },
    methods: {
        rentInformat(){
        this.$router.push('/rentInformation')
        },
        dataClick(){
        this.$refs.pickerData.open();   // 触发
        // this.$refs.pickerData.close() ; // 关闭
        },
        handleConfirm(val){
            console.log(val,this.pickerVisible)
            this.time = val ;

        },
        start(){
            console.log(this.starttime)
        },
        end(){
            console.log(this.endtime)
        }
    }
}
</script>



<style scoped>
    /* 组件日期输入框 */
    .datetime{
        position: fixed;
        z-index: 1111111111111111!important;
        opacity: 1;
    }
    /* 输入框外部样式 */
    .inputall{width:100%;
    background-image: linear-gradient(to top,rgba(255,255,255,1),rgba(255,255,255,0.05));
    height: 250px;position: relative;top: -130px;overflow:hidden}
    /* 包裹区域样式 */
    .inputall>div{width: 90%;height: 200px;
    background-color: white;
    opacity: 0.9;
    margin: 20px auto 0px;overflow:hidden;
    border-radius: 5%;
    }
        .datetime{opacity: 1!important;}
    /* 输入框样式 */
    input{height:30px;border: none;outline: none;}
    .inputall>div div{float: left;}
    /* 第一个输入框 */
    .top{padding:20px 20% 0px;border-bottom: 1px solid #e8e8e8;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    /* 第二个并排input */
    .mid{padding:0 27px;}
    .mid input{background-color: white;}
    .mid>div+div{border-left: 1px solid #e8e8e8;}
    /* 最后一个input */
    .btm{padding:0px 26% 10px;border-top: 1px solid #e8e8e8;}
    /* 按钮样式 */
    .btn{overflow: hidden;clear: both;width: 100%;}
    .btn>button{width: 50%;height: 30px;border: none;border-radius: 10px;}
    .btn>button:active{background-color: #39bdc8;}
    .btn>button:active span{color: white;}
    .btn>button{
        border: none;
        outline: none;
    }
</style>