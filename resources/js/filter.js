
//----Moment_Js------
import moment from 'moment'
import Vue from 'vue'

Vue.filter('timeformat',(arg)=>{                //--for formatting Time
    return moment(arg).format("MMM Do YYYY")
})

Vue.filter('sortlength',function (text,length,suffix) {
    return text.substring(0,length)+suffix;
})