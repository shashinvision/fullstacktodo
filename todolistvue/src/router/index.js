import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import AddTask from "../views/AddTask.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/AddTask",
    name: "AddTask",
    component: AddTask,
  },
  {
    path: "/about",
    name: "About",
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () =>
      import(/* webpackChunkName: "about" */ "../views/About.vue"),
  },
  {
    path: "/detail/:id",
    name: "Detail",

    component: () => import("../views/Detail.vue"),
  },
  {
    path: "/edit/:id",
    name: "EditTask",

    component: () => import("../views/EditTask.vue"),
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
