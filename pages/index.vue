<template>
  <div class="page__contentText">
    <vue-slick-carousel v-bind="carouselSetting">
      <div
        class="page__contentCarousel"
      >
      </div>
    </vue-slick-carousel>
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

@Component({
  components: {
    VueSlickCarousel
  }
})
export default class Index extends Vue {
  public carouselSetting: any = {
    dots: false,
    edgeFriction: 0.35,
    infinite: true,
    speed: 500,
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    // responsive: [
    //   {
    //     breakpoint: 1200,
    //     settings: {
    //       slidesToShow: 5,
    //       slidesToScroll: 5
    //     }
    //   },
    //   {
    //     breakpoint: 992,
    //     settings: {
    //       slidesToShow: 4,
    //       slidesToScroll: 4
    //     }
    //   },
    //   {
    //     breakpoint: 768,
    //     settings: {
    //       slidesToShow: 5,
    //       slidesToScroll: 5
    //     }
    //   },
    //   {
    //     breakpoint: 480,
    //     settings: {
    //       slidesToShow: 4,
    //       slidesToScroll: 4
    //     }
    //   },
    //   {
    //     breakpoint: 390,
    //     settings: {
    //       slidesToShow: 3,
    //       slidesToScroll: 3
    //     }
    //   }
    // ]
  }

  private created(): void {
  }
}
</script>

<style lang="scss">
@import '~/assets/scss/main';

.page {
  padding-top: $spacingM;
  &__title {
    color: $secondary;
    font-size: $fzML;
    letter-spacing: $letterSpacing;
    padding-bottom: $spacingM;
    border-bottom: 1px dashed $lighten;
    margin-bottom: $spacingM;
    @include barBeforeText($lighten, 14px, 3.25px);
  }
  &__content {
    &Carousel {
      width: 100vw;
      height: 150px;
      border: 1px solid $secondaryLight;
    }
    &Text {
      color: $secondary;
      font-size: $fzM;
    }
    &TextTitle {
      margin-top: $spacingL;
      margin-bottom: $spacingL;
      color: $contrast;
      font-weight: bold;
      @include squareBeforeText($lighten, 4px, 4px);
      &Lg {
        margin-top: $spacingM;
        font-size: $fzML;
      }
    }
    &TextBody {
      margin-left: 4px + 6px;
      > p {
        margin-bottom: $spacingM;
        > em {
          font-size: $fzSMM;
          color: $secondaryLight;
        }
      }
    }
  }
}

</style>
