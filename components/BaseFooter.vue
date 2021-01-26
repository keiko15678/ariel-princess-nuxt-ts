<template>
  <footer class="footer">
    <div class="footer__content">
      <div class="footer__contentTitle">聯絡我 Inquiries</div>
      <div class="footer__contentBody">
        <div class="footer__contentBodyItem">
          Email&nbsp;
          <a :href="`mailto:${content.email}`">{{ content.email }}</a>
        </div>
        <div class="footer__contentBodyItem">
          #&nbsp;
          <span>{{content.phone}}</span>
        </div>
      </div>
      <div class="footer__contentTitle">網站地圖 Site Map</div>
      <div class="footer__contentBody">
        <div
          class="footer__contentBodyItem"
          v-for="item in siteMap" :key="item.id"
          v-show="item.showFooter"
          @click="$emit('footer-site-map-click', item.id)"
        >
          <span>{{ item.footerText }}</span>
        </div>
      </div>
      <div class="footer__contentFooter" v-html="crText"></div>
    </div>
  </footer>
</template>

<script lang="ts">
import Vue from 'vue'
import { Component, Prop } from 'nuxt-property-decorator'

@Component
export default class BaseFooter extends Vue {
  @Prop() readonly crText!: string

  @Prop() readonly siteMap!: Array<any>

  private content: any = {
    email: 'example@gmail.com',
    phone: '0900000000'
  }
}
</script>

<style lang="scss" scoped>
@import '~/assets/scss/main';

.footer {
  width: 100vw;
  height: auto;
  overflow: hidden;
  background-color: $primary;
  padding-left: $spacingM;
  padding-right: $spacingM;
  padding-top: $spacingL;
  padding-bottom: $spacingXXL;
  &__content {
    position: relative;
    &Title {
      display: flex;
      color: $lighten;
      letter-spacing: $letterSpacing;
      margin-bottom: $spacingM;
      font-size: $fzM;
      &:before {
        content: '';
        display: block;
        width: 2.25px;
        height: $fzSM;
        margin-top: 2px;
        margin-right: 6px;
        background-color: $lighten2;
      }
    }
    &Body {
      margin-bottom: $spacingXXL;
      &Item {
        display: flex;
        align-items: center;
        font-size: $fzSM;
        color: $grey2;
        margin-bottom: $spacingSM;
        &:before {
          content: '';
          display: block;
          width: 4px;
          height: 4px;
          background-color: $warning;
          margin-right: 8px;
        }
        >span, a {
          text-decoration: underline;
          cursor: pointer;
          color: $grey1;
          &:visited {
            color: $grey1;
          }
        }
      }
    }
    &Footer {
      position: absolute;
      right: 0;
      width: inherit;
      color: $grey3;
      font-size: $fzS;
    }
  }
}
</style>
