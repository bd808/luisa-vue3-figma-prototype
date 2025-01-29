<template>
  <Luisa :design="design" :config="config" v-model="viewModel"/>
</template>

<script>
export default {
  name: 'Home',
  data: function() {
    return {
      design: {
        figmaFile: process.env.VUE_APP_FIGMA_FILE,
        figmaAccessKey: process.env.VUE_APP_FIGMA_ACCESS_KEY
      },
      viewModel: {
      },
      config: {
      }
    }
  },
  components: {
  },
  methods: {
  }
}
</script>
