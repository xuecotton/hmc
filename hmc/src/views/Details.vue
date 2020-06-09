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
		<mt-swipe :auto="4000" class="d-mt-swipe">
			<mt-swipe-item>
					<router-link to="">
						<img src="../assets/images/carousel1.jpg" alt="">
					</router-link>
				</mt-swipe-item>
				<mt-swipe-item>
					<router-link to="">
						<img src="../assets/images/carousel3.jpg" alt="">
					</router-link>
				</mt-swipe-item>
				<mt-swipe-item>
					<router-link to="">
						<img src="../assets/images/carousel1.jpg" alt="">
					</router-link>
			</mt-swipe-item>
		</mt-swipe>
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
				<span class="d-price">$186</span>
				<span class="d-dan">每晚</span>
				<button class="d-reserve">马上预订</button>
			</div>
		</div>
		<!-- 该酒店房间配置 -->
		<div class="d-fangjian">
			<ul class="d-fj-referral">
				<li><img src="../assets/images/fenzu.png" alt=""></li>
				<li><img src="../assets/images/woshi.png" alt=""></li>
				<li><img src="../assets/images/chuang.png" alt=""></li>
				<li><img src="../assets/images/yugang.png" alt=""></li>
			</ul>
		</div>
	</div>
</template>

<script>
	export default {
		
	}
</script>

<style scoped>
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
	.d-fangjian .d-fj-referral{
		margin: 0 auto;

	}
	.d-fangjian .d-fj-referral li{
		display: inline-block;
		/* text-align: center; */
	}
	.d-fangjian .d-fj-referral li:first-child{
		margin-left:12% ;
	}
	.d-fangjian .d-fj-referral li+li{
		margin-left: 11%;
	}
	.d-fangjian .d-fj-referral li img{
		width:40px;
		height: 40px;
	}
</style>
