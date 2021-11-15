<template>
  <div class="container w-50">
    <form class="row g-3">
      <div class="col-md-12">
        <h2
          v-if="
            typeForm == 'detail' || typeForm == 'edit' || typeForm == 'delete'
          "
        >
          ID: {{ dataDetail.id }}
        </h2>
        <label
          for="validationDefault01"
          class="form-label"
          v-if="typeForm == 'detail' || typeForm == 'edit'"
          >Title</label
        >
        <h2 v-if="typeForm == 'delete'">
          ¡¡¡Esta apunto de eliminar una tarea!!!
        </h2>
        <div
          v-if="
            notification &&
            (typeForm == 'add' || typeForm == 'detail' || typeForm == 'edit')
          "
          class="alert alert-success"
          role="alert"
        >
          <i>Data Ingresada, los datos son los siguientes</i>
          <p>Volviendo al home en 3 segundos</p>
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
          v-if="typeForm == 'add' || typeForm == 'edit'"
          required
        />
        <input
          type="text"
          class="form-control"
          id="validationDefault01"
          v-model="dataDetail.title"
          v-if="typeForm == 'detail'"
          readonly
          required
        />
      </div>
      <div class="col-md-12">
        <label
          for="validationDefault02"
          class="form-label"
          v-if="typeForm == 'detail' || typeForm == 'edit'"
          >Description</label
        >
        <textarea
          type="text"
          class="form-control"
          id="validationDefault02"
          v-model="dataTask.description"
          v-if="typeForm == 'add' || typeForm == 'edit'"
          required
        />
        <textarea
          type="text"
          class="form-control"
          id="validationDefault02"
          v-model="dataDetail.description"
          v-if="typeForm == 'detail'"
          readonly
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
          Save task
        </button>
        <button
          class="btn btn-success"
          v-if="typeForm == 'edit'"
          type="submit"
          @click.prevent="dataEdit"
        >
          Edit Task
        </button>
        <button
          class="btn btn-danger"
          v-if="typeForm == 'delete'"
          type="submit"
          @click.prevent="dataDelete"
        >
          Delete Task
        </button>
      </div>
    </form>
  </div>
</template>

<script>
import { mapState } from "vuex";

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
    dataDetail: {
      type: Object,
      default: () => {
        return {};
      },
    },
  },
  computed: {
    ...mapState(["user_data", "access_token"]),
  },
  methods: {
    async dataSet() {
      let url_fetch_all = "http://localhost:8888/api/auth/task";

      let dataForm = new FormData();
      dataForm.append("title", this.dataTask.title);
      dataForm.append("description", this.dataTask.description);
      dataForm.append("user_id", this.user_data.id);

      // let dataForm = {
      //   title: this.dataTask.title,
      //   description: this.dataTask.description,
      // };

      // esto es para evitar el error en this dentro del await que indica que es undefined
      const self = this;
      await fetch(url_fetch_all, {
        method: "POST",
        headers: {
          // "Content-Type": "application/json",
          Authorization: "Bearer " + self.access_token,
          "X-Requested-With": "XMLHttpRequest",
        },
        // body: JSON.stringify(dataForm),
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

          setTimeout(() => self.$router.push({ path: "/" }), 3000);
        })
        .catch(function (err) {
          console.error(err);
        });
    },
    async dataEdit() {
      let url_fetch_all =
        "http://localhost:8888/api/auth/task/edit/" + this.dataDetail.id;

      // let dataForm = new FormData();
      // dataForm.append("title", this.dataTask.title);
      // dataForm.append("description", this.dataTask.description);

      let dataForm = {
        title: this.dataTask.title,
        description: this.dataTask.description,
        user_id: this.user_data.id,
      };

      // esto es para evitar el error en this dentro del await que indica que es undefined
      const self = this;

      await fetch(url_fetch_all, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: "Bearer " + self.access_token,
          "X-Requested-With": "XMLHttpRequest",
        },
        body: JSON.stringify(dataForm),
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

          setTimeout(() => self.$router.push({ path: "/" }), 3000);
        })
        .catch(function (err) {
          console.error(err);
        });
    },
    async dataDelete() {
      let url_fetch_all =
        "http://localhost:8888/api/auth/task/delete/" + this.dataDetail.id;

      // let dataForm = new FormData();
      // dataForm.append("title", this.dataTask.title);
      // dataForm.append("description", this.dataTask.description);

      let dataForm = {
        title: this.dataTask.title,
        description: this.dataTask.description,
      };

      // esto es para evitar el error en this dentro del await que indica que es undefined
      const self = this;

      await fetch(url_fetch_all, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: "Bearer " + self.access_token,
          "X-Requested-With": "XMLHttpRequest",
          body: JSON.stringify(dataForm),
        },
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

          self.$router.push({ path: "/" });
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
  watch: {
    dataDetail(newValue) {
      this.dataTask.id = newValue.id;
      this.dataTask.title = newValue.title;
      this.dataTask.description = newValue.description;
    },
  },
};
</script>

<style lang="css" scoped></style>
