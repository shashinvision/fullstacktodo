<template>
  <div>
    <FormComponent typeForm="edit" :dataDetail="data" />
  </div>
</template>

<script>
import FormComponent from "../components/FormComponent";
import { mapState } from "vuex";

export default {
  components: {
    FormComponent,
  },
  data() {
    return {
      data: {},
    };
  },
  computed: {
    ...mapState({ access_token: "access_token" }),
  },
  methods: {
    async dataDetail() {
      let url_fetch_all =
        "http://localhost:8888/api/auth/task/detail/" + this.$route.params.id;
      await fetch(url_fetch_all, {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: "Bearer " + this.access_token,
          "X-Requested-With": "XMLHttpRequest",
        },
      })
        .then((res) => {
          return res.json();
        })
        .then((data) => {
          // console.log("URL", data);
          this.data = data;
          // console.log("URL", this.dataList);
        })
        .catch(function (err) {
          console.error(err);
        });
    },
  },
  created() {
    this.dataDetail();
  },
};
</script>

<style lang="scss" scoped></style>
