<template>
  <div class="container w-50">
    <form class="row g-3">
      <div class="col-md-12">
        <label for="validationDefault01" class="form-label">Title</label>
        <div v-if="notification" class="alert alert-success" role="alert">
          <i>Data Ingresada, los datos son los siguientes</i>
          <code>
            <pre>
             {{ dataNotification }}

            </pre>
          </code>
        </div>
        <input
          type="text"
          class="form-control"
          id="validationDefault01"
          v-model="dataTask.title"
          required
        />
      </div>
      <div class="col-md-12">
        <label for="validationDefault02" class="form-label">Description</label>
        <textarea
          type="text"
          class="form-control"
          id="validationDefault02"
          v-model="dataTask.description"
          required
        />
      </div>
      <div class="col-12">
        <button
          class="btn btn-primary"
          v-if="typeForm == 'add'"
          type="submit"
          @click.prevent="dataSet"
        >
          Submit form
        </button>
      </div>
    </form>
  </div>
</template>

<script>
export default {
  name: "AddTask",
  data() {
    return {
      dataTask: {
        title: "",
        description: "",
      },
      notification: false,
      dataNotification: "",
    };
  },
  props: {
    typeForm: {
      type: String,
      default: "",
    },
  },
  methods: {
    async dataSet() {
      // esto es para evitar el error en this dentro del await que indica que es undefined
      const self = this;

      let url_fetch_all = "http://localhost:8888/api/task";

      let dataForm = new FormData();
      dataForm.append("title", this.dataTask.title);
      dataForm.append("description", this.dataTask.description);

      await fetch(url_fetch_all, {
        method: "POST",
        body: dataForm,
      })
        .then(function (response) {
          // console.log("response =", response);
          return response.json();
        })
        .then(function (data) {
          console.log("datos", data);
          self.notification = true;
          self.dataNotification = data;
          self.clear();
        })
        .catch(function (err) {
          console.error(err);
        });
    },
    clear() {
      this.dataTask.title = "";
      this.dataTask.description = "";
    },
  },
};
</script>

<style lang="css" scoped></style>
