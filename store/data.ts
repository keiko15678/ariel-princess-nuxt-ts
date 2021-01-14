import { Module, VuexModule, Action, Mutation } from 'vuex-module-decorators'
import { $axios } from '~/utils/api'
import { determineStaticAssetsPath } from '~/utils/static'

@Module({
  name: 'data',
  stateFactory: true,
  namespaced: true,
  // dynamic: true,
})
export default class DataModule extends VuexModule {
  public data: any = {
    property: '',
  }

  public staticPrefix: string = ''

  @Mutation
  private setData(payload: string) {
    this.data.property = payload
  }

  @Mutation 
  public setStaticPrefix() {
    this.staticPrefix = determineStaticAssetsPath()
  }

  @Action({ commit: 'setData' })
  public async getData(): Promise<string> {
    try {
      return 'Vuex + TS is working...'
    } catch (e) {
      console.log('Error: ' + e.message)
      return 'Vuex + TS is NOT working...'
    }
  }
}
