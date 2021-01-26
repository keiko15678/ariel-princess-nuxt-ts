<template>
  <div>
    <BaseMenu
      :tabClicked="tabClicked"
      @tab-click="handleTabClick"
      @tab-item-click="handleTabItemClick"
      :crText="crText"
      :siteMap="siteMap"
    />
    <BaseHeader :tabClicked="tabClicked" @tab-click="handleTabClick" />
    <div class="container">
      <div class="row">
        <div class="col">
          <main class="main">
            <Nuxt />
          </main>
        </div>
      </div>
    </div>
    <BaseFooter :crText="crText" v-show="!tabClicked" :siteMap="siteMap" @footer-site-map-click="()=>{}" />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'nuxt-property-decorator'
import BaseHeader from '~/components/BaseHeader.vue'
import BaseMenu from '~/components/BaseMenu.vue'
import BaseFooter from '~/components/BaseFooter.vue'

@Component({
  middleware: [],
  components: {
    BaseHeader,
    BaseMenu,
    BaseFooter
  }
})
export default class Default extends Vue {
  private crText: string = '&copy;&nbsp;Copyright 2021 Ire. All Rights Reserved.'

  private tabClicked: boolean = false

  private siteMap: Array<any> = [
    { id: 0, url: '/', text: '關於我 About', footerText: 'About', showFooter: true },
    { id: 1, url: '/contact', text: '聯絡我 Inquiries', footerText: 'Inquiries', showFooter: true },
    { id: 2, url: '/link', text: '連結 External Links', footerText: 'External Links', showFooter: true }
  ]

  private handleTabClick(): void {
    this.tabClicked = !this.tabClicked
  }

  private handleTabItemClick(tab: number): void {
    window.localStorage.setItem('t', tab.toString())
    this.handleTabClick()
  }

  private created(): void {
  }
}
</script>
<style>
html {
  font-family: 'Source Sans Pro', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial,
    sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
}

.button--green {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #3b8070;
  color: #3b8070;
  text-decoration: none;
  padding: 10px 30px;
}

.button--green:hover {
  color: #fff;
  background-color: #3b8070;
}

.button--grey {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #35495e;
  color: #35495e;
  text-decoration: none;
  padding: 10px 30px;
  margin-left: 15px;
}

.button--grey:hover {
  color: #fff;
  background-color: #35495e;
}
</style>
