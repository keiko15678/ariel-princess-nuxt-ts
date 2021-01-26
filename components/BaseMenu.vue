<template>
  <aside class="aside" :style="{ width: tabClicked ? '100vw' : '0' }">
    <transition name="fade">
      <div class="aside__content" v-show="tabClicked">
        <div class="aside__top">
          <div class="aside__topLogo" @click="$emit('tab-click')"></div>
        </div>
        <div class="aside__list">
          <div class="aside__listItem" @click="$emit('tab-item-click', item.id)" v-for="item in siteMap" :key="item.id">{{ item.text }}</div>
        </div>
        <div class="aside__footer">
          <div class="aside__footerContent" v-html="crText"></div>
        </div>
        <div class="aside__logo"></div>
      </div>
    </transition>
  </aside>
</template>

<script lang="ts">
import Vue from 'vue'
import { Component, Prop } from 'nuxt-property-decorator'

@Component
export default class BaseMenu extends Vue {
  @Prop() readonly tabClicked!: Boolean

  @Prop() readonly crText!: string

  @Prop() readonly siteMap!: Array<any>
}
</script>

<style lang="scss" scoped>
@import '~/assets/scss/main';

.aside {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 100;
  height: 100vh;
  width: 100vw;
  background-color: rgba($color: $secondary, $alpha: .85);
  backdrop-filter: blur(1px);
  transition: width .3s;
  &__content {
    position: relative;
    width: 80vw;
    height: 100vh;
    // background-color: rgba($color: $white, $alpha: .95);
    background-color: $white;
  }
  &__top {
    padding-top: $spacingM;
    padding-bottom: $spacingM;
    background-color: $lighten2;
    &Logo {
      margin-left: $spacingM;
      width: 34px;
      height: 34px;
      background-size: contain;
      background-position: center center;
      background-repeat: no-repeat;
      background-image: url(/star-flash.svg);
      cursor: pointer;
    }
  }
  &__list {
    &Item {
      padding-top: $spacingL;
      padding-left: $spacingL;
      padding-bottom: $spacingML;
      margin-right: $spacingM;
      border-bottom: 1px dashed $contrast;
      color: $lighten;
      letter-spacing: $letterSpacing;
      font-weight: bold;
      cursor: pointer;
    }
  }
  &__footer {
    position: absolute;
    bottom: $spacingM;
    right: $spacingM;
    display: flex;
    width: 100vw;
    align-items: flex-end;
    &Content {
      margin-left: auto;
      color: $contrast;
      font-size: $fzS;
    }
  }
  &__logo {
    position: absolute;
    bottom: 12px + 16px;
    right: $spacingM;
    width: $headerHeight + 30px;
    height: $headerHeight + 30px;
    background-size: contain;
    background-position: center center;
    background-repeat: no-repeat;
    background-image: url(/logo_header.jpg);
  }
}
</style>
