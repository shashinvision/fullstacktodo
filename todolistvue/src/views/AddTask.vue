<template>
  <div class="container w-50">
    <form class="row g-3">
      <div class="col-md-12">
        <label for="validationDefault01" class="form-label">Title</label>
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
        <button class="btn btn-primary" type="submit" @click.prevent="dataSet">
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
    };
  },
  methods: {
    dataSet() {
      alert("En la funcion");
    },
  },
};
</script>

<style lang="css" scoped></style>
