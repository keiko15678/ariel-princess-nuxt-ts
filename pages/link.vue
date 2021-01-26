<template>
  <div class="page__contentText">
    <div class="page__contentTextTitle">資料 Info</div>
    <!-- <div class="page__contentTextBody">
      <p><em>本名:&nbsp;</em>林羽希</p>
      <p><em>身高:&nbsp;</em>170</p>
      <p><em>體重:&nbsp;</em>41</p>
    </div>
    <div class="page__contentTextTitle">專長 Specialties</div>
    <div class="page__contentTextBody">唱歌、跳舞</div>
    <div class="page__contentTextTitle">興趣 Interests</div>
    <div class="page__contentTextBody">睡覺</div>
    <div class="page__contentTextTitle">規劃 Plans</div>
    <div class="page__contentTextBody">placeholder</div>
    <div class="page__contentTextTitle">placeholder</div>
    <div class="page__contentTextBody">placeholder</div> -->
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'nuxt-property-decorator'

@Component
export default class Link extends Vue {
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
