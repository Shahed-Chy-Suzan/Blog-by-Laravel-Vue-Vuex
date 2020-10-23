
//----Moment_Js------
import moment from 'moment'      // var moment = require('moment'); //or,
import Vue from 'vue'           //Vue have to defined

Vue.filter('timeformat',(arg)=>{                //--for formatting Time
    return moment(arg).format("MMM Do YYYY")    //Feb 3rd 2020
})

Vue.filter('shortlength',function (text,length,suffix) {    //--for shortening description(List.vue)
    return text.substring(0,length)+suffix;         //0 to length(40) character & 'suffix' indicate '...'
})
