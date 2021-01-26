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
            <div class="page">
              <div class="page__title">{{ getPageTitle }}</div>
              <div class="page__content">
                <Nuxt />
              </div>
            </div>
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

  private currentTab: number = 0

  private siteMap: Array<any> = [
    { id: 0, url: '/', text: '關於我 About', title: '簡介 Introduction', footerText: 'About', showFooter: true },
    { id: 1, url: '/contact', text: '聯絡我 Inquiries', title:'聯絡方式 Connections', footerText: 'Inquiries', showFooter: true },
    // { id: 2, url: '/link', text: '連結 Links', title:'我的連結 Network', footerText: 'External Links', showFooter: true },
    { id: 2, url: '/album', text: '相簿 Album', title:'照片 Photos', footerText: 'Album', showFooter: true }
  ]

  private get getPageTitle(): string {
    return this.siteMap.find((item: any) => item.id === this.currentTab).title
  }

  private handleTabClick(): void {
    this.tabClicked = !this.tabClicked
  }

  private routeAndTabUpdate(tab: number): void {
    this.currentTab = tab
    const url: string = this.siteMap.find((item: any) => item.id === tab).url
    this.$router.push(url)
  }

  private handleTabItemClick(tab: number): void {
    window.localStorage.setItem('t', tab.toString())
    this.routeAndTabUpdate(tab)
    this.handleTabClick()
  }

  private mounted(): void {
    this.$nextTick(() => {
      this.$nuxt.$loading.start()
      const tab = window.localStorage.getItem('t')
      if(tab && !isNaN(Number(tab))) {
        this.routeAndTabUpdate(Number(tab))
      }
      this.$nuxt.$loading.finish()
    })
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
  padding-bottom: 48px;
}
</style>
