<template>
  <div class="container">
    <div class="row">
      <div class="col">
        <main style="margin-top: 150px; display: flex; flex-direction: column">
          <Logo />
          <h1 class="title">nuxt-ts-docker-template</h1>
          <div class="links" style="align-self: center">
            <a href="https://nuxtjs.org/" target="_blank" rel="noopener noreferrer" class="button--green">
              Documentation
            </a>
            <a href="https://github.com/nuxt/nuxt.js" target="_blank" rel="noopener noreferrer" class="button--grey">
              GitHub
            </a>
          </div>
          <div style="margin-top: 20px; font-size: 16px">Vuex Integrations with nuxt-property-decorator</div>
          <div style="margin-top: 20px; font-size: 16px">
            Vuex: <span style="color: green">{{ storeData }}</span>
          </div>
          <div style="margin-top: 20px; font-size: 16px">
            Axios: <span style="color: green">{{ axiosIsWorking }}</span>
          </div>
        </main>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <div style="width: 100%; display: flex; align-items: center; margin-top: 12px">
          Node-Sass:&nbsp;<button class="btn btn--primary">Sass Is Working...</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'nuxt-property-decorator'
import Logo from '~/components/Logo.vue'
import { dataStore } from '~/store/index'
import { $axios } from '~/utils/api'

@Component({
  components: {
    Logo,
  },
})
export default class Index extends Vue {
  private axiosIsWorking: any = ''

  private get storeData(): string {
    return dataStore.data ? dataStore.data.property : ''
  }

  private async created(): Promise<void> {
    await dataStore.getData()
    console.log(dataStore)
    console.log($axios)
    this.axiosIsWorking = $axios
  }
}
</script>

<style>
.title {
  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue',
    Arial, sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
