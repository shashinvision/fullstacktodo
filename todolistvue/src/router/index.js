import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import AddTask from "../views/AddTask.vue";
import store from "../store";

Vue.use(VueRouter);
Vue.use(store);

const routes = [
  {
    path: "/",
    name: "Home",
    meta: {
      // ruta protegida
      requiresAuth: true,
    },
    component: Home,
  },
  {
    path: "/AddTask",
    name: "AddTask",
    meta: {
      // ruta protegida
      requiresAuth: true,
    },
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
    meta: {
      // ruta protegida
      requiresAuth: true,
    },

    component: () => import("../views/Detail.vue"),
  },
  {
    path: "/edit/:id",
    name: "EditTask",
    meta: {
      // ruta protegida
      requiresAuth: true,
    },

    component: () => import("../views/EditTask.vue"),
  },
  {
    path: "/delete/:id",
    name: "DeleteTask",
    meta: {
      // ruta protegida
      requiresAuth: true,
    },
    component: () => import("../views/DeleteTask.vue"),
  },
  {
    path: "/login",
    name: "Login",

    component: () => import("../views/Login.vue"),
  },
  {
    path: "/logout",
    name: "Logout",
    meta: {
      // ruta protegida
      requiresAuth: true,
    },
    component: () => import("../views/Logout.vue"),
  },
  {
    path: "/signin",
    name: "SignIn",

    component: () => import("../views/SignIn.vue"),
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

// para proteger las rutas
router.beforeEach((to, from, next) => {
  if (to.matched.some((record) => record.meta.requiresAuth)) {
    if (store.state.auth) {
      next();
    } else {
      next({ name: "Login" });
    }
  } else {
    next();
  }
});

export default router;
