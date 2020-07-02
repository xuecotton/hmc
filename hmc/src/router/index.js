import Vue from "vue";
import VueRouter from "vue-router";
//蜘蛛侦探首页列表组件
import index from "../views/index.vue";
import Details from "../views/Details.vue";
import Waterfall from "../components/waterfall.vue";
import changxiao from "../views/changxiao";
import gongyv from "../views/gongyv.vue";
//蝎子莱莱详情订单组件
import Reserve from "../views/Reserve.vue";
import ReserveT from "../views/ReserveT.vue";
import Pay from "../views/Pay";
import PayOk from "../views/PayOk";

// 鲨鱼辣椒注册组件
import Register from "../views/Register.vue";
import Registers from "../views/Registers.vue";
import Login from "../views/Login.vue";
import Me from "../views/Me.vue";
import Modify from "../views/Modify";

// 蟑螂恶霸
import Articles from "../views/articles.vue";
import Article from "../views/article.vue";
import WaterList from "../components/WaterList.vue";
import ProductWater from "../components/ProductWater.vue";
import Products from "../views/products.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    component: index,
  },
  {
    path: "/article",
    name: Article,
    component: Article,
  },
  {
    path: "/articles",
    component: Articles,
  },
  {
    path: "/waterfall",
    component: Waterfall,
  },
  {
    path: "/waterlist",
    component: WaterList,
  },
  {
    path: "/productWater",
    component: ProductWater,
  },
  {
    path: "/products",

    component: Products,
  },
  {
    path: "/me",
    component: Me,
  },
  {
    path: "/login",
    component: Login,
  },
  {
    path: "/registers",
    component: Registers,
  },
  {
    path: "/register",
    component: Register,
  },
  {
    path: "/modify",
    component: Modify,
  },
  {
    path: "/reserve",
    component: Reserve,
  },
  {
    path: "/details",

    meta: {
      keepAlive: true, //该字段表示该页面需要缓存
    },
    component: Details,
  },
  {
    path: "/reservet",
    component: ReserveT,
  },
  {
    path: "/payok",
    component: PayOk,
  },
  {
    path: "/pay",
    component: Pay,
  },
  {
    path: "/changxiao",

    component: changxiao,
  },

  {
    path: "/gongyv",

    component: gongyv,
  },
  {
    path: "/test",
    component: () =>
      import(/* webpackChunkName: "about" */ "../views/datepicker.vue"),
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
