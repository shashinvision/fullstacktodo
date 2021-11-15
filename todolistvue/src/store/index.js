import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    username: null,
    auth: null,
  },
  mutations: {
    doLogin(state, username) {
      state.auth = true;
      state.username = username;
    },
    doLogout(state) {
      state.auth = false;
      state.username = null;
    },
  },
  actions: {
    doLogin({ commit }, username) {
      commit("doLogin", username);
    },
    doLogout({ commit }) {
      commit("doLogout");
    },
  },
  modules: {},
});
