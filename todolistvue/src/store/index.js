import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    username: null,
    auth: null,
  },
  mutations: {
    loginMutation(state, username) {
      state.auth = true;
      state.username = username;
    },
    logoutMutation(state) {
      state.auth = false;
      state.username = null;
    },
  },
  actions: {
    loginAction({ commit }, username) {
      commit("loginMutation", username);
    },
    logoutAction({ commit }) {
      commit("logoutMutation");
    },
  },
  modules: {},
});
