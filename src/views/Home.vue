<template>
  <Luisa :design="design" :config="config" v-model="viewModel"/>
</template>

<script>
/* eslint-disable */
import {
  /* Buttons */
  CdxButton,
  CdxButtonGroup,
  CdxMenuButton,
  CdxToggleButton,
  CdxToggleButtonGroup,
  /* Form elements */
  CdxCheckbox,
  CdxChipInput,
  CdxCombobox,
  CdxField,
  CdxLabel,
  CdxLookup,
  CdxMultiselectLookup,
  CdxRadio,
  CdxSelect,
  CdxTextArea,
  CdxTextInput,
  CdxToggleSwitch,
  /* Content & data */
  CdxAccordion,
  CdxCard,
  CdxDialog,
  CdxMenu,
  CdxMenuItem,
  CdxTable,
  CdxTooltip,
  /* Feedback */
  CdxInfoChip,
  CdxMessage,
  CdxProgressBar,
  /* Media */
  CdxIcon,
  CdxThumbnail,
  /* Navigation */
  CdxTabs,
  CdxTab,
  /* Search */
  CdxSearchInput,
  CdxTypeaheadSearch
} from '@wikimedia/codex';

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
    /* Buttons */
    CdxButton,
    CdxButtonGroup,
    CdxMenuButton,
    CdxToggleButton,
    CdxToggleButtonGroup,
    /* Form elements */
    CdxCheckbox,
    CdxChipInput,
    CdxCombobox,
    CdxField,
    CdxLabel,
    CdxLookup,
    CdxMultiselectLookup,
    CdxRadio,
    CdxSelect,
    CdxTextArea,
    CdxTextInput,
    CdxToggleSwitch,
    /* Content & data */
    CdxAccordion,
    CdxCard,
    CdxDialog,
    CdxMenu,
    CdxMenuItem,
    CdxTable,
    CdxTooltip,
    /* Feedback */
    CdxInfoChip,
    CdxMessage,
    CdxProgressBar,
    /* Media */
    CdxIcon,
    CdxThumbnail,
    /* Navigation */
    CdxTabs,
    CdxTab,
    /* Search */
    CdxSearchInput,
    CdxTypeaheadSearch
  },
  methods: {
  }
}
</script>
