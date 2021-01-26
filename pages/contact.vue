<template>
  <div class="page__contentText">
    <div class="page__contentTextTitle">媒體 Media</div>
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
export default class Contact extends Vue {}
</script>
