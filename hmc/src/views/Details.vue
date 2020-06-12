<template>
	<div id="details">
		<!-- 顶部导航开始 -->
		<mt-header class="d-header" fixed>
			<router-link slot="left" to="/" class="d-back">
				<mt-button icon="back"></mt-button>
			</router-link>
		</mt-header>
		<!-- 顶部导航结束 -->
		<!-- 轮播图开始 -->
		<mt-swipe ref="swipe" :auto="4000" @change="handleChange" class="d-mt-swipe">
			<mt-swipe-item v-for="(item,index) in swipeImages" :key="index">
					<router-link to="">
						<img :src="require('../assets/images/'+item)" alt="">
					</router-link>
			</mt-swipe-item>
		</mt-swipe>
		<p class="d-AllLength">
			<span>{{Sindex}}&nbsp;/&nbsp;{{swipeImages.length}}</span>
		</p>
		<!-- 轮播图结束 -->
		<!-- 轮播图下方标题-->
		<div class="d-title-box">
			<h1 class="d-title">TTC国际高级酒店</h1>
			<h1 class="d-title">洛杉矶，美国</h1>
			<!-- 打分状况 -->
			<div class="star">
				<ul class="star_ul">
					<li><img src="../assets/images/stara.png" alt=""></li>
					<li><img src="../assets/images/stara.png" alt=""></li>
					<li><img src="../assets/images/stara.png" alt=""></li>
					<li><img src="../assets/images/stara.png" alt=""></li>
					<li><span class="d-star-good">146-4星好评</span></li>
				</ul>
			</div>
			<!-- 每晚价格 -->
			<div class="d-priceAndreserve">
				<span class="d-price">￥186</span>
				<span class="d-dan">每晚</span>
				<button class="d-reserve">马上预订</button>
			</div>
		</div>
		<!-- 该酒店房间配置 -->
		<div class="d-fangjian">
			<ul class="d-fj-referral">
				<li>
					<div>
						<img src="../assets/images/fenzu.png" alt="">
						<span>3客人</span>
					</div>
				</li>
				<li>
					<div>
						<img src="../assets/images/woshi.png" alt="">
						<span>1卧室</span>
					</div>
				</li>
				<li>
					<div>
						<img src="../assets/images/chuang.png" alt="">
						<span>2大床</span>
					</div>
				</li>
				<li>
					<div>
						<img src="../assets/images/yugang.png" alt="">
						<span>浴缸</span>
					</div>
				</li>
			</ul>
		</div>
		<!-- 房间介绍 -->
		<div class="d-present">
			<h5 class="d-present-title">介绍</h5>
			<i class="cell">
				舒适方便的四星级高级酒店，带给你不一样的体验，交通便利，生活设施齐全，省去你来回奔波得到很多时间，出差旅游的好选择，Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita assumenda illum quibusdam dicta quaerat vitae adipisci est alias deleniti magni quos non dolor rerum nisi recusandae consequuntur et ut. Beatae.
			</i><span id="selectAll" class="d-selectAll" @click="TitleShow()">查看全部</span>
			<!-- 这里使用的进度条来模拟的评分 -->
			<h5 class="d-present-title">评价</h5>
			<ul id="d_progress">
				<li>
					<span>舒适</span>
					<mt-progress :value="85" class="d-progress-w">
						<div slot="end">8.5</div>
					</mt-progress>
				</li>
				<li>
					<span>舒适</span>
					<mt-progress :value="85" class="d-progress-w">
						<div slot="end">8.5</div>
					</mt-progress>
				</li>
				<li>
					<span>舒适</span>
					<mt-progress :value="85" class="d-progress-w">
						<div slot="end">8.5</div>
					</mt-progress>
				</li>
				<li>
					<span>舒适</span>
					<mt-progress :value="85" class="d-progress-w">
						<div slot="end">8.5</div>
					</mt-progress>
				</li>
				<li>
					<span>舒适</span>
					<mt-progress :value="85" class="d-progress-w">
						<div slot="end">8.5</div>
					</mt-progress>
				</li>
				<li>
					<span>舒适</span>
					<mt-progress :value="85"  class="d-progress-w">
						<div slot="end">8.5</div>
					</mt-progress>
				</li>
			</ul>
		</div>
		<!-- 3晚起订提示 -->
		<div class="d-alert-title">
			<h3>3晚起订</h3>
		</div>
		<!-- 配套设施图片 -->
		<div class="d-mating-title">
			<h3>配套设施</h3>
			<ul>
				<li><img src="../assets/images/kongtiao.png" alt=""></li>
				<li><img src="../assets/images/bingxiang.png" alt=""></li>
				<li><img src="../assets/images/weibolu.png" alt=""></li>
				<li><img src="../assets/images/yundou.png" alt=""></li>
				<li>
					<h3>+10</h3>
				</li>
			</ul>
		</div>
		<!-- 联系方式区域 -->
		<div class="d-contact">
			<h3>联系方式</h3>
			<p>美国，洛杉矶市，工业大道250号，维多利亚广场2200号</p>
		</div>
		<!-- 底部页脚 -->
		<div class="d-bottom">
			<span>￥186元每晚</span>
			<button>点我预定</button>
		</div>
	</div>
</template>

<script>
	export default {
		data(){
			return{
				swipeImages:["carousel1.jpg","carousel3.jpg","carousel1.jpg"],
				Sindex:1,
			}
		},
		methods:{
			handleChange(){
				this.Sindex = this.$refs.swipe.index + 1
				console.log(this.swipeImages.length);
			},
			// 控制  查看全部  按钮点击后隐藏
			TitleShow(){
				var cell=document.querySelector(".cell");
				// document.getElementById("selectAll");
				// console.log(document.getElementById("selectAll"));
				// console.log(cell);
				cell.style.height="auto";
				document.getElementById("selectAll").style.display="none";
			}
		}
	}
</script>

<style scoped>
	.details{
		position: relative;
	}
	.d-header{
		background-color: rgba(250,205,205,0);
		padding: 0;
	}
	.d-back{
		margin-left: 15px;
	}
	.d-back>button{
		margin-top: 20px;
	}
	/* 轮播图组件 */
	.d-mt-swipe{
		width: 100%;
		height: 40vh;
	}
	.d-mt-swipe img{
		width: 100%;
		height:100%;
	}
	/* 当前页码 */
	.d-AllLength{
		display: block;
		width: 60px;
		height: 30px;
		background-color: rgba(200,200,200,0.2);
		text-align: center;
		border-radius: 30px;
		position:absolute;
		top: 34vh;
		right: 10px;
		
	}
	.d-AllLength span{
		display: inline-block;
		margin-top:15% ;
	}
	.d-title-box{
		padding: 15px 15px;
	}
	.d-title{
		font-size: 32px;
		color:#434157;
		font-weight: bold;
	}
	/* 星星 */
	.star_ul{
		width: 200px;
	}
	.star_ul li{
		list-style: none;
		display: inline-block;
	}
	.star_ul li + li{
		margin-left:10px;
		margin-top:8px ;
	}
	.star_ul li img{
		width:13px;
		height:13px;
	}
	.star_ul li span{
		font-size: 15px;
		color: #7c808b;
	}
	/* 价格区域-预定按钮 */
	.d-priceAndreserve{
		padding:10px 0;
	}
	.d-price{
		font-size: 28px;
		font-weight: bold;
		color: #028345;
	}
	.d-dan{
		font-size: 16px;
		margin-left: 5px;
		color: #7C808B;
	}
	/* 预定按钮 */
	.d-reserve{
		width:110px;
		background: #fc9d46;
		border: none;
		border-radius: 10px;
		font-size: 12px;
		height:30px;
		color: #fff;
		float: right;
	}
	
	/* 房间配置信息 -- 图片*/
	.d-fangjian{
		width:90%;
		border-top: 1px solid #e0e3eb;
		padding: 5px;
		margin: 0 auto;
		margin-bottom: 10px;
	}
	.d-fangjian .d-fj-referral{
		width: 100%;
		display: flex;
		flex-wrap: nowrap;
		margin: 0 auto;
		margin-top: 15px;
	}
	.d-fangjian .d-fj-referral li{
		display: inline-block;
		/* text-align: center; */
	}
	.d-fangjian .d-fj-referral li:first-child{
		margin-left:0% ;
	}
	.d-fangjian .d-fj-referral li+li{
		margin-left: 13%;
	}
	.d-fangjian .d-fj-referral li div{
		width:40px;
		line-height: 40px;
	}
	.d-fangjian .d-fj-referral li div span{
		font-size: 13px;
		color: #7C808B;
		display: inline-block;
		width: 40px;
		text-align: center;
	}
	.d-fangjian .d-fj-referral li div img{
		width:40px;
		height: 40px;
	}
	/* 房间介绍区域 */
	.d-present{
		border-top:1px solid #E0E3EB ;
		padding: 5px;
		line-height: 20px;
		width: 90%;
		margin: 0 auto;
	}
	.d-present .d-present-title{
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 10px;
		margin-top: 20px;
	}
	.d-present .cell{
		height: 40px;
		overflow : hidden;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-line-clamp: 7;
		-webkit-box-orient: vertical;
	}
	.d-selectAll{
		float: right;
		color: #52c8cf;
	}
	/* 评价区域，打分状态 */
	#d_progress{
		padding: 5px;
		margin-bottom: 10px;
	}
	#d_progress li{
		display:inline-block;
		width: 50%;
	}
	.d-progress-w{
		width: 80%;
	}
	.d-progress-w div{
		color: #7C808B;
		font-size:12px ;
		margin-left: 10px;
	}
	#d_progress li span{
		font-size: 12px;
		color: #7C808B;
	}
	.d-progress-w div div.mt-progress-progress{
		background-color: #52C8CF;
	}
	/* 三晚起订标题 */
	.d-alert-title{
		border-top:1px solid #E0E3E5;
		line-height: 65px;
		width: 90%;
		margin: 0 auto;
		color: #7C808B;
		border-bottom:1px solid #E0E3E5;
	}
	.d-alert-title h3{
		color: #7C808B;
	}
	/* 配套信息区域 */
	.d-mating-title h3{
		line-height: 50px;
		width: 90%;
		margin: 0 auto;
		color: #434157;
		font-weight: bold;
		font-size: 18px;
	}
	.d-mating-title ul{
		width: 90%;
		display: flex;
		flex-wrap: nowrap;
		margin: 0 auto;
		margin-top: 15px;
		margin-bottom: 30px;
	}
	.d-mating-title ul li{
		display: inline-block;
	}
	.d-mating-title ul li+li{
		margin-left:10% ;
	}
	.d-mating-title ul li img{
		width: 40px;
		height: 40px;
	}
	.d-mating-title ul li:last-child h3{
		display: block;
		font-size: 24px;
		color: #42B983;
	}
	/* 联系方式区域 */
	.d-contact{
		width:90%;
		margin: 0 auto;
		border-top:1px solid #E0E3E5 ;
		margin-bottom: 60px;
	}
	.d-contact h3{
		margin-top:20px ;
		line-height: 50px;
		width: 90%;
		color: #434157;
		font-weight: bold;
		font-size: 18px;
	}
	.d-contact p{
		font-size: 15px;
		line-height: 18px;
	}
	/* 底部页脚 */
	.d-bottom{
		position: fixed;
		bottom: 0;
		width: 100%;
		background-color: #fff;
		height: 60px;
		line-height: 60px;
	}
	.d-bottom span{
		display: block;
		width: 150px;
		float: left;
		text-align: center;
		color: #7C808B;
		font-size: 18px;
	}
	.d-bottom button{
		float: right;
		margin-right: 30px;
		margin-top:15px ;
		border: none;
		outline: none;
		background-color: #52c8cf;
		width: 70px;
		height: 30px;
		color: #fff;
		border-radius: 6px;
	}
</style>
