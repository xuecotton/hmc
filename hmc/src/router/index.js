import Vue from 'vue'
import VueRouter from 'vue-router'
import index from '../views/index.vue'

Vue.use(VueRouter)

  const routes = [
  {
    path: '/',
    component: index
  },
  {
    path: '/about',
    name: 'About',
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {
    path: '/gongyv',
    component: () => import(/* webpackChunkName: "about" */ '../views/gongyv.vue')
  },
  {
    path: '/test',
    component: () => import(/* webpackChunkName: "about" */ '../views/datepicker.vue')
  },
  {
    path: '/changxiao',
    component: () => import(/* webpackChunkName: "about" */ '../views/changxiao.vue')
  }
]

const router = new VueRouter({
  routes
})

export default router
