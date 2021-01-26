<template>
  <div class="page__contentText">
    <div
      class="page__contentCarousel"
      :style="{ 'background-image': `url(${carouselImages[0]})` }"
    >
    </div>
    <div class="page__contentTextTitleLg">大家好，我是愛麗兒 Ariel ~ :)</div>
    <div class="page__contentTextTitle">資料 Info</div>
    <div class="page__contentTextBody">
      <p><em>本名:&nbsp;</em>林羽希</p>
      <p><em>身高:&nbsp;</em>170</p>
      <p><em>體重:&nbsp;</em>41</p>
    </div>
    <div class="page__contentTextTitle">專長 Specialties</div>
    <div class="page__contentTextBody">唱歌、跳舞</div>
    <div class="page__contentTextTitle">興趣 Interests</div>
    <div class="page__contentTextBody">睡覺</div>
    <div class="page__contentTextTitle">placeholder</div>
    <div class="page__contentTextBody">placeholder</div>
    <div class="page__contentTextTitle">placeholder</div>
    <div class="page__contentTextBody">placeholder</div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'nuxt-property-decorator'
import VueSlickCarousel from 'vue-slick-carousel'

import 'vue-slick-carousel/dist/vue-slick-carousel-theme.css'

@Component({
  components: {
    VueSlickCarousel
  }
})
export default class Index extends Vue {
  private carouselImages: Array<string> = [
    '/a2.png',
    '/a14.png',
    '/a34.png'
  ]

  private created(): void {
  }
}
</script>
