require('./bootstrap');
import Vue from 'vue';
import VueRouter from 'vue-router';
import Vuex from 'vuex';
import VeeValidate from 'vee-validate'
//import {routes} from './routes.js';
import storeData from './store.js';
import CKEditor from '@ckeditor/ckeditor5-vue';






Vue.component('pagination', require('laravel-vue-pagination'));
export const routes = [

]


Vue.use(VeeValidate);
Vue.use(VueRouter);
Vue.use(Vuex);
Vue.use( CKEditor );



const router = new VueRouter({
routes,
mode: 'history'
});

const store = new Vuex.Store(storeData);
const app = new Vue({
el: '#app',
router,
store,
components: 
{
	MainApp
}
});

