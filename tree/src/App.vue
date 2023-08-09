<template>
  <div id="app">
    <Tree v-for="(node, i) in Data" :nodes="node" :key="i" />
  </div>
</template>

<script>
import Tree from "./components/Tree.vue";
import Data from "../tree.json";

export default {
  name: "App",
  components: {
    Tree,
  },
  data() {
    return {
      Data,
    };
  },
};
</script>

<style></style>
