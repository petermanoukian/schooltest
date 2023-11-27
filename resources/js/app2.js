require('./bootstrap');
import Vue from 'vue';
import VueRouter from 'vue-router';
import VueCarousel from '@chenfengyuan/vue-carousel';
import Vuex from 'vuex';
import VeeValidate from 'vee-validate'
//import {routes} from './routes.js';
import storeData from './store.js';

import MainHome from './components/Main.vue';
import Home from './components/Home.vue';

import Result from './components/Result.vue';
import Resultfinal from './components/Resultfinal.vue';


Vue.component('pagination', require('laravel-vue-pagination'));

export const routes = [

	{
		path: '/',
		name: 'home1',
		component: Home,
	},
	{
		path: '/home',
		name: 'home',
		component: Home,
	},

	{
		path: '/result/:id?/:email?',
		name: 'result',
		component: Result,
		props: true,
	},
	{
		path: '/resultfinal/:id?/:email?',
		name: 'resultfinal',
		component: Resultfinal,
		props: true,
	},

	

]

Vue.use(VeeValidate);
Vue.use(VueRouter);
Vue.use(Vuex);
Vue.use(VueCarousel);
const router = new VueRouter({
	routes,
	mode: 'history'
});

const store = new Vuex.Store(storeData);

Vue.mixin({
  data: function() {
    return {
      globalURL:'http://127.0.0.1:8000/'
    }
  }
})


const app2 = new Vue({
	el: '#app2',
	router,
	store,
	created: function() {
    
  },
	
	
	components: 
	{
		MainHome
	}
});