import Vue from 'vue'
import VueRouter from 'vue-router'
// 项目开始
// register组件
import Register from '../views/Register.vue'
// registers组件
import Registers from '../views/Registers.vue'
import Login from '../views/Login.vue'


// 项目结束
Vue.use(VueRouter)

  const routes = [
    {
      path: '/login',
      component:Login
    },
    {
      path: '/registers',
      component: Registers
    },
  {
    path: '/register',
    component: Register
  },
  // {
  //   path: '/about',
  //   name: 'About',
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  // }
]

const router = new VueRouter({
   mode:'history',
   base:process.env.BASE_URL,
  routes
})
// router.beforeEach((to,from,next)=>{
//   // 检测目标路由信息是否包含requiresAuth的元信息
//   // 如果包含则代表需要进行用户登录状态的检测
//  if(to.meta.requiresAuth){
//   //  检测用户是否登录
//   if(store.state.author.isLogined==false||sessionStorage.getItem('isLogined')==false){
//     router.push('/login?redirect='+to.fullPath)
//   }else{
//     next();
//   }
//  }
// });
export default router
