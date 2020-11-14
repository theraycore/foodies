import Vue from 'vue';

import LandingApp from './components/LandingApp.vue'
import MenuApp from './components/MenuApp.vue'

try{
  new Vue({
    render: h => h(LandingApp)
  }).$mount('#landing-app');
} catch(error) {};

try{
  new Vue({
    render: h => h(MenuApp)
  }).$mount('#menu-app');
} catch(error) {};
