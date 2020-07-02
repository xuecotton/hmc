<template>
  <div>
    <mt-header class="d-header" title="支付成功">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div class="d-img-box">
      <img src="../assets/images/payOK.png" alt />
    </div>
  </div>
</template>

<style scoped>
.d-header {
  background-color: #52c8cf;
  color: #fff;
  font-size: 24px;
  height: 80px;
}
.d-img-box {
  text-align: center;
  height: auto;
  margin: 0 auto;
}
.d-img-box img {
  width: 357px;
  height: 567px;
}
</style>