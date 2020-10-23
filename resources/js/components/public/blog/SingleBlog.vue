<template>
  <span id="singleblog">
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span8">
            <article>
              <div class="row">
                <div class="span8">
                  <div class="post-image">
                    <div class="post-heading">
                      <h3><a href="#"> {{singlepost.title}}</a></h3>
                    </div>
                    <img :src="`uploadimage/${singlepost.photo}`"/>
                  </div>
                  <p>
                   {{singlepost.description}}
                  </p>

                  <div class="bottom-article">
                    <ul class="meta-post">
                      <li v-if="singlepost.user"><i class="icon-user"></i><a href="#"> {{singlepost.user.name}}</a></li>
                      <li v-if="singlepost.category"><i class="icon-folder-open"></i><a href="#"> {{singlepost.category.cat_name}}</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </article>
          </div>
          <BlogSidebar/>      <!--OR--- <BlogSidebar></BlogSidebar> --->
        </div>
      </div>
    </section>
    </span>
</template>

<script>
    import BlogSidebar from "./BlogSidebar.vue"       //sidebar imported->>1
    export default {
        name: "SingleBlog",
        components:{
            BlogSidebar    //already import & for the <BlogSidebar></BlogSidebar>  //--1-
        },
        computed:{
            singlepost(){                   //--sp2--
                return this.$store.getters.singlepost
            }
        },
        methods:{                         //--sp1.1   //--sp1.1.2
            singlePost(){
                this.$store.dispatch('getPostById',this.$route.params.id);
            }
        },
        mounted(){
            this.singlePost();            //--sp1-->>methods
        },
        watch:{
            $route(to,from){              //--sp1.1.1-->>methods
                this.singlePost();
            }   //--SingleBlog.vue te Sidebar er "Latest Post" e click korle route change holeo component/content change hocchilo na, Page_reload korte hocchilo, tai ai "watch" use korte hoyeche,
        }
    }
</script>

<style scoped>
</style>
