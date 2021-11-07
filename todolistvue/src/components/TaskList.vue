<template>
  <div class="container-sm">
    <BRow>
      <BCol md="12">
        <h1>Tasks list</h1>
      </BCol>
    </BRow>
    <BRow class="justify-content-md-center mb-5">
      <BCol md="2">
        <BButton to="/addTask">Add Task</BButton>
      </BCol>
    </BRow>
    <BRow>
      <BCol md="12">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Title</th>
              <th scope="col">Description</th>
              <th scope="col">Detail</th>
              <th scope="col">Edit</th>
              <th scope="col">Drop</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="item in dataList" :key="item.id">
              <th scope="row">{{ item.id }}</th>
              <td>{{ item.title }}</td>
              <td>{{ item.description }}</td>
              <td>
                <router-link :to="{ name: 'Detail', params: { id: item.id } }">
                  <b-iconstack font-scale="1">
                    <b-icon
                      stacked
                      icon="box-arrow-up-right"
                      variant="primary"
                    ></b-icon>
                  </b-iconstack>
                </router-link>
              </td>
              <td>
                <router-link
                  :to="{ name: 'EditTask', params: { id: item.id } }"
                >
                  <b-iconstack font-scale="1">
                    <b-icon stacked icon="pen" variant="success"></b-icon>
                  </b-iconstack>
                </router-link>
              </td>
              <td>
                <b-iconstack font-scale="1">
                  <b-icon stacked icon="trash" variant="danger"></b-icon>
                </b-iconstack>
              </td>
            </tr>
          </tbody>
        </table>
      </BCol>
    </BRow>
  </div>
</template>

<script>
import { BRow, BCol, BButton } from "bootstrap-vue";

export default {
  name: "TasksList",
  components: {
    BRow,
    BCol,
    BButton,
  },
  data() {
    return {
      item: 0,
      dataList: "",
    };
  },
  methods: {
    async taskList() {
      let url_fetch_all = "http://localhost:8888/api/task";
      await fetch(url_fetch_all, {
        method: "GET",
      })
        .then((res) => {
          return res.json();
        })
        .then((data) => {
          // console.log("URL", data);
          this.dataList = data;
          // console.log("URL", this.dataList);
        })
        .catch(function (err) {
          console.error(err);
        });
    },
  },
  mounted() {
    this.taskList();
  },
};
</script>

<style lang="css" scoped>
.b-icon:hover {
  cursor: pointer;
  opacity: 0.6;
}
</style>
