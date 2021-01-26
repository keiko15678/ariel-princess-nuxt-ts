<template>
  <div>
    index
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'nuxt-property-decorator'

@Component
export default class Index extends Vue {
  private created(): void {
  }
}
</script>

<style lang="scss">
@import '~/assets/scss/main';

.main {
  width: 100vw;
  min-height: calc(100vh - 58px);
  overflow-x: hidden;
  background-color: $grey1;
  padding-left: $spacingML;
  padding-right: $spacingML;
  padding-top: $spacingML;
  padding-bottom: $spacingML;
}
</style>
