<template>
  <div class="page__contentText">
    <div class="page__contentTextTitle">媒體 Media</div>
    <div class="page__contentTextBody">
      <p><span class="page__contentTextBodyIcon page__contentTextBodyIcon--line"></span>&nbsp;12345abc</p>
      <p class="page__contentTextBodyLink" @click="handleExternalLink('ins')"><span class="page__contentTextBodyIcon page__contentTextBodyIcon--ins"></span>&nbsp;im_ariel1116</p>
      <p class="page__contentTextBodyLink" @click="handleExternalLink('fb')"><span class="page__contentTextBodyIcon page__contentTextBodyIcon--fb"></span>&nbsp;林羽希</p>
    </div>
    <div class="page__contentTextTitle">合作邀約 | 信箱 Inquiries via Email</div>
    <div class="page__contentTextBody">
      <p class="page__contentTextBodyLink"><span class="page__contentTextBodyIcon page__contentTextBodyIcon--email"></span>&nbsp;<a :href="`mailto:${'example@gmail.com'}`">{{ 'example@gmail.com' }}</a></p>
    </div>
    <div class="page__contentTextTitle">合作邀約 | 電話 Inquiries via Phone</div>
    <div class="page__contentTextBody">
      <p><span class="page__contentTextBodyIcon page__contentTextBodyIcon--mobile"></span>&nbsp;0900-000-000</p>
      <p><span class="page__contentTextBodyIcon page__contentTextBodyIcon--phone"></span>&nbsp;(02)1234-5678</p>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'nuxt-property-decorator'

@Component
export default class Contact extends Vue {
  private mediaLinkMap: any = {
    fb: 'https://www.facebook.com/shanna.wang.79',
    ins: 'https://www.instagram.com/im_ariel1116/'
  }

  private handleExternalLink(loc: string): void {
    window.open(this.mediaLinkMap[loc], '_blank')
  }
}
</script>
