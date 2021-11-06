<template>
  <div>
    <FormComponent typeForm="taskDetail" :dataDetail="data" />
  </div>
</template>

<script>
import FormComponent from "../components/FormComponent";
export default {
  components: {
    FormComponent,
  },
  data() {
    return {
      data: {},
    };
  },
  methods: {
    async dataDetail() {
      let url_fetch_all =
        "http://localhost:8888/api/task/" + this.$route.params.id;
      await fetch(url_fetch_all, {
        method: "GET",
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
