<template>
  <header class="header">
    <div class="container">
      <div class="row">
        <div class="col">
          <div class="header__content">
            <div class="header__tab"
              :style="{ 'background-image': `url(${tabClicked ? '/star-flash.svg': '/star.svg' })` }"
              @click="$emit('tab-click')"
            >
            </div>
            <div class="header__logo"></div>
          </div>
        </div>
      </div>
    </div>
  </header>
</template>

<script lang="ts">
import Vue from 'vue'
import { Component, Prop } from 'nuxt-property-decorator'

@Component
export default class BaseHeader extends Vue {
  @Prop() readonly tabClicked: boolean = false
}
</script>

<style lang="scss" scoped>
@import '~/assets/scss/main';

.header {
  width: 100vw;
  height: $headerHeight;
  border-bottom: 1px solid $lighten2;
  background-color: $white;
  &__content {
    position: relative;
    display: flex;
    width: 100vw;
    justify-content: start;
    margin-top: 5px;
    padding-left: $spacingM;
    padding-right: $spacingM;
    display: flex;
    align-items: center;
  }
  &__tab {
    position: absolute;
    left: $spacingM;
    width: $headerHeight - 26px;
    height: $headerHeight - 26px;
    background-size: contain;
    background-position: center center;
    background-repeat: no-repeat;
    background-image: url(/star.svg);
    cursor: pointer;
    transition: background-image .3s;
  }
  &__logo {
    margin-left: auto;
    margin-right: auto;
    width: $headerHeight - 10px;
    height: $headerHeight - 10px;
    background-size: contain;
    background-position: center center;
    background-repeat: no-repeat;
    background-image: url(/logo_header.jpg);
  }
}
</style>
