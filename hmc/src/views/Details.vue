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
</style>
