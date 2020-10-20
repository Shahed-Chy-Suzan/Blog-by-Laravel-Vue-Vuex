
require('./bootstrap');

// window.Vue = require('vue'); //or bellow line
import Vue from 'vue'      //--these nxt 3_lines are newly added as we installed vue-router
import VueRouter from 'vue-router'
Vue.use(VueRouter)


//----Support Vuex-----
import Vuex from 'vuex'
Vue.use(Vuex)

import storeData from "./store/index"   //--Vuex Coding file imported
const store = new Vuex.Store(           //--Only 1st_bracket() here
    storeData
)


//----Support Moment_Js------
import {filter} from "./filter"     //--Used for Shortening description


//----Support Editor------
import 'v-markdown-editor/dist/v-markdown-editor.css';
import Editor from 'v-markdown-editor'
Vue.use(Editor);


//---router file imported---
import {routes} from "./routes";

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('admin-main', require('./components/admin/AdminMaster.vue').default);   //situated in root-html+Contain <router-view>


//----V-form----
import { Form, HasError, AlertError } from 'vform'

Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)
window.Form = Form;     //--for 'globally' use


//------Sweet_alert_2-----
import swal from 'sweetalert2'
window.swal = swal;

const toast = swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 3000
});
window.toast = toast


const router = new VueRouter({  //------------
  routes,
  mode: 'hash'
  //mode: 'history'     //To remove '#' from URL
})


const app = new Vue({
    el: '#app',     //--took id(#app) from root_html
    router,         //--"router" ta oporer_code (const router) er teke bosano.
    store           //--"store" ta oporer_code (const store) er teke bosano.
});
