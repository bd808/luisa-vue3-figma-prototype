import { shallowMount } from '@vue/test-utils'
import Home from '@/views/Home.vue'

describe('Home.vue', () => {
  it('mounts', () => {
    const wrapper = shallowMount(Home, {})
    expect(wrapper.text()).toMatch("")
  })
})
