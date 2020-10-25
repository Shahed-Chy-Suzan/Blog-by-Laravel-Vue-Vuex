<template>
    <span id="sidebar">
        <div class="span4">
            <aside class="right-sidebar">
              <div class="widget">
                <form class="form-search">   <!----------Search Start------------>
                  <input @keyup="RealSearch" placeholder="Type something" v-model="keyword" type="text" class="input-medium search-query">
                  <button type="submit" @click.prevent="RealSearch" class="btn btn-square btn-theme">Search</button>  <!--@keyup="RealSearch" eta dile realtime search pawa jai/without button click-->
                </form>     <!----Search End---->
              </div>
              <div class="widget">
                <h5 class="widgetheading">Categories</h5>   <!----Show Category Start---->
                <ul class="cat">
                  <li v-for="category in allcategories" :key="category.id"><i class="icon-angle-right"></i><router-link :to="`/categories/${category.id}`">{{category.cat_name}}</router-link><span> (20)</span></li>  <!--go to 'routes.js'>>'BlogPost.vue'-->
                </ul> <!----Show Category End---->
              </div>
              <div class="widget">
                <h5 class="widgetheading">Latest posts</h5>
                <ul class="recent">
                  <li v-for="(post,index) in blogpost" v-if="index<5" :key="post.id">
                    <img :src="`uploadimage/${post.photo}`" class="pull-left" width="40" height="40"/>
                    <h6><router-link :to="`/blog/${post.id}`">{{post.title}}</router-link></h6>
                    <!-- <h6><router-link :to="'/blog/'+post.id">{{post.title}}</router-link></h6> ----OR--->
                    <p>
                     {{post.description | shortlength(100,"...")}}
                    </p>
                  </li>
                </ul>
              </div>
            </aside>
          </div>
    </span>
</template>

<script>
   import _ from 'lodash'       //--underscore means (lodash)
    export default {
        name: "BlogSidebar",
        data(){
           return {
               keyword:''       //--for Search input field
           }
        },
        computed:{
            allcategories(){
                return this.$store.getters.allcategories;          //--fc2--
            },
            blogpost(){
                return this.$store.getters.latestpost              //--flp2--
            }
        },
        mounted(){
            this.$store.dispatch('latestPost');                    //--flp1--
            this.$store.dispatch('allcategories')                  //--fc1--
        },
        methods:{
            RealSearch:_.debounce(function () {                     //--search--
                this.$store.dispatch('SearchPost',this.keyword);
            },1000)   //1000 means 1 second

            // RealSearch(){     //--before appling lodash/debaunce //take a min_time to take value to search
            //    this.$store.dispatch('SearchPost',this.keyword)
            // }
        }
    }
</script>

<style scoped>
/*  -কোন Component Load হওয়র সাথে সাথে mounted load হয় আগে
    -ভুলেও এডমিনের Method/Route গুলা ইউজ করা যাবেনা কারণ ওগুলা Authenticate মানে লগিন থাকা লাগে
    -@keyup="RealSearch" eta dile realtime search pawa jai/without button click
    -realtime search korar 1ta min_time fixed kre dithe 'lodash' use krtechi, ja laravel e buildin
    -lodash er 'debaunce()' function syntex:  _.debounce(func, [wait=0], [options={}])
*/
</style>

