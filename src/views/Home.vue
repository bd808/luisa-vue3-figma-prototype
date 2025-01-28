<template>
  <Luisa :design="design" :config="config" v-model="viewModel"/>
</template>

<script>
export default {
  name: 'Home',
  data: function() {
    return {
      design: {
        figmaFile: process.env.FIGMA_FILE,
        figmaAccessKey: process.env.FIGMA_ACCESS_KEY
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
