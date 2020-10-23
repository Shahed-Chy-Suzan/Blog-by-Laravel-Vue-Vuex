<template>
  <span id="blogpost">    <!--Vue can not support double div such- <div></div> & <div></div> into <template></template>, so always use nested like- <div><div> </div></div> || or <span></span>-->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Blog left sidebar</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">Blog</a><i class="icon-angle-right"></i></li>
              <li class="active">Blog with left sidebar</li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span8">

            <article v-for="post in blogpost" :key="post.id">
              <div class="row">
                <div class="span8">
                  <div class="post-image">
                    <div class="post-heading">
                      <h3><a href="#">{{post.title}}</a></h3>
                    </div>
                    <img :src="`uploadimage/${post.photo}`">
                    <!-- <img :src="ourImage(post.photo)"/> --> <!--Optional,We can use given upper-->
                  </div>
                  <p>
                   {{post.description | shortlength(500,"...")}}
                   <!--goto filter.js || first 500 character & show the dot dot('...')-->
                  </p>
                  <div class="bottom-article">
                    <ul class="meta-post">
                      <li><i class="icon-calendar"></i><a href="#"> Mar 23, 2013</a></li>
                      <li v-if="post.user"><i class="icon-user"></i><a href="#">{{post.user.name}}</a></li>
                      <li v-if="post.category"><i class="icon-folder-open"></i><a href="#"> {{post.category.cat_name}}</a></li>
                      <li><i class="icon-comments"></i><a href="#">4 Comments</a></li>
                    </ul>
                    <router-link :to="`/blog/${post.id}`" class="pull-right">Continue reading... <i class="icon-angle-right"></i></router-link>
                  </div>
                </div>
              </div>
            </article>

            <div id="pagination">
              <span class="all">Page 1 of 3</span>
              <span class="current">1</span>
              <a href="#" class="inactive">2</a>
              <a href="#" class="inactive">3</a>
            </div>
          </div>
         <BlogSidebar></BlogSidebar>        <!--OR--- <BlogSidebar/> --->
        </div>
      </div>
    </section>
  </span>
</template>

<script>
    import BlogSidebar from "./BlogSidebar.vue"        //sidebar imported
    export default {
        name: "BlogPost",
        components:{
            BlogSidebar    //already import & for the <BlogSidebar></BlogSidebar>
        },
        mounted(){
            this.$store.dispatch('getblogPost');            //--bp1--
        },
        computed:{
            blogpost(){                                     //--bp2--
                return this.$store.getters.getblogPost
            }
        },
        methods:{
            getAllCategoryPost(){                         //--Sbar1.2--
                if(this.$route.params.id!=null){
                    this.$store.dispatch('getPostByCatId',this.$route.params.id);
                }else{
                    this.$store.dispatch('getblogPost');
                }
            }
        },
        watch:{                              //from rightSideBar>>category>click
            $route(to,from){                      //--Sbar1.1-->>methods
                this.getAllCategoryPost();
            }     //Sidebar এ Categories এ ক্লিক করলে পোস্ট ঐ অনুসারে পোস্ট দেখাবে । আবার "Blog" এ ক্লিক করলে Blog এ নিয়ে আসবে । watch ব্যবহার না করলে Category wise Posts দেখালে "Blog" এ ক্লিক করলে তখন কাজ করবেনা.......//Sidebar er "Categories" gula te click korle route change holeo component/content change hocchilo na, Page_reload korte hocchilo, tai ai "watch" use korte hoyeche,
        }
        //  ourImage(img){                //--Optional--
        //     return "Upload_Image/"+img;
        //  },
    }
</script>

<style scoped>
</style>
