import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  // 存储各个组件共享的数据
  state: {
    // // 存储登录账户的信息
    // id:sessionStorage.getItem('id')?sessionStorage.getItem('id'):'',
    // username:sessionStorage.getItem('username')?sessionStorage.getItem('username'):'',
    // nickname:sessionStorage.getItem('nickname')?sessionStorage.getItem('nickname'):'',
    // // 标识用户是否登录
    // isLogined:sessionStorage.getItem('isLogined')?
    // sessionStorage.getItem('isLogined'):false

  },
  mutations: {
  },
  actions: {
  },
  modules: {
  }
})
