import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs'

axios.defaults.baseURL='http://127.0.0.1:3000'
Vue.prototype.axios=axios;
Vue.prototype.qs=qs;
Vue.config.productionTip = false

// 导入mint-ui
import MintUI from 'mint-ui'
// 导入mint-ui样式表文件
import 'mint-ui/lib/style.min.css'


// 使用mint-ui 
Vue.use(MintUI)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
