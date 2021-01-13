import { Module, VuexModule, Action, Mutation } from 'vuex-module-decorators'
import { $axios } from '~/utils/api'

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

  @Mutation
  private setData(payload: string) {
    this.data.property = payload
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
