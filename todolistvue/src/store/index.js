import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    API: {
      baseURL: "http://localhost:8888",
      login: "/api/auth/login",
    },
    access_token: null,
    expires_at: null,
    token_type: null,
    message: null, // en caso que no sea login correcto arroja -  message: "Unauthorized"
    user_data: null,
    auth: false,
  },
  mutations: {
    loginMutation(state, dataLogin) {
      console.log("loginMutation", dataLogin);
      if (dataLogin.message != undefined) {
        state.auth = false;
        state.access_token = null;
        state.expires_at = null;
        state.token_type = null;
        state.user_data = null;
      } else {
        state.auth = true;
        state.access_token = dataLogin.access_token;
        state.expires_at = dataLogin.expires_at;
        state.token_type = dataLogin.token_type;
        state.user_data = dataLogin.user_data;
      }
    },
    logoutMutation(state) {
      state.auth = false;
      state.username = null;
    },
  },
  actions: {
    async loginAction({ commit, state }, dataLogin) {
      // console.log("loginAction", dataLogin);

      await fetch(state.API.baseURL + state.API.login, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          // 'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: JSON.stringify(dataLogin), // body data type must match "Content-Type" header
      })
        .then((res) => {
          return res.json();
        })
        .then((payload) => {
          // console.log("respuesta login", payload);

          commit("loginMutation", payload);
        })
        .catch(function (err) {
          console.error("Error al intentar ingresar", err);
        });
    },
    logoutAction({ commit }) {
      commit("logoutMutation");
    },
  },
  modules: {},
});
