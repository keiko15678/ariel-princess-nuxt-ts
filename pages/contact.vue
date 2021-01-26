<template>
  <div class="page__contentText">
    <div class="page__contentTextTitle">新媒體 Social Media</div>
    <div class="page__contentTextBody">
      <p><span class="page__contentTextBodyIcon page__contentTextBodyIcon--line"></span>&nbsp;12345abc</p>
      <p><span class="page__contentTextBodyIcon page__contentTextBodyIcon--ins"></span>&nbsp;im_ariel1116</p>
      <p><span class="page__contentTextBodyIcon page__contentTextBodyIcon--fb"></span>&nbsp;abcd123</p>
    </div>
    <div class="page__contentTextTitle">合作邀約 | 信箱 Email</div>
    <div class="page__contentTextBody">
      <p><span class="page__contentTextBodyIcon page__contentTextBodyIcon--email"></span>&nbsp;example@gmail.com</p>
    </div>
    <div class="page__contentTextTitle">合作邀約 | 電話 Phone</div>
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
        display: flex;
        align-items: center;
        margin-bottom: $spacingM;
        > em {
          font-size: $fzSMM;
          color: $secondaryLight;
        }
      }
      &Icon {
        display: block;
        width: 16px;
        height: 16px;
        background-image: url(/line.svg);
        background-repeat: no-repeat;
        background-position: center center;
        background-size: contain;
        &--line {
          background-image: url(/line.svg);
        }
        &--fb {
          background-image: url(/facebook.svg);
        }
        &--ins {
          background-image: url(/instagram.svg);
        }
        &--mobile {
          background-image: url(/smartphone.svg);
        }
        &--phone {
          background-image: url(/phone.svg);
        }
        &--email {
          background-image: url(/email.svg);
        }
      }
    }
  }
}

</style>
