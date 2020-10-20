<template>
    <div>
        <section class="content">
            <div class="row justify-content-around" >
                <div class="col-12 ">
                    <div class="card shadow">
                        <div class="card-header bg-primary">
                            <h3 class="card-title">Post List</h3>

                            <div class="card-tools">
                                <router-link to="/add-post" style="color:#fff"><button class="btn btn-success text-white font-weight-bold"> Add New Post</button></router-link>      <!----</button>---->
                            </div>
                        </div>

                        <!--/.card-header-->
                        <div class="card-body">
                            <table id="example2" class="table table-bordered table-hover table-striped table-warning">
                                <thead>
                                <tr class="bg-success">
                                    <th>Sl</th>
                                    <th>User</th>
                                    <th>Category</th>
                                    <th>Title</th>
                                    <th>Description</th>
                                    <th>Photo</th>
                                    <th>Action</th>
                                </tr>
                                </thead>

                                <tbody>
                                <tr v-for="(post,index) in allpost">
                                    <td> {{index+1}} </td>
                                    <td v-if="post.user"> {{post.user.name}} </td>
                                    <td v-if="post.category"> {{post.category.cat_name}} </td>
                                    <td> {{post.title | shortlength(20,"---")}} </td>
                                    <td> {{post.description | shortlength(40,"....")}} </td>
                                    <td> <img :src="ourImage(post.photo)" width="40" height="50"> </td>
                                    <td>
                                        <router-link :to="`edit-post/${post.id}`" class="btn btn-sm btn-primary text-white">Edit</router-link>
                                        <a @click.prevent = "deletePost(post.id)" class="btn btn-sm btn-danger text-white">Delete</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>  <!--/.card-body-->
                    </div>
                </div>  <!--/.col-->
            </div>  <!--/.row-->
        </section>  <!--/.content-->
    </div>
</template>

<script>
    export default {
        name: "List",
        mounted(){                                        //--p1--
            this.$store.dispatch('getAllPost')
        },
        computed:{                                        //--p2--
            allpost(){
                return this.$store.getters.getAllPost
            }
        },
        methods:{
            ourImage(img){
                return "uploadimage/"+img;
            },
            deletePost(id){
               axios.get('/delete/'+id)
                   .then(()=>{
                       this.$store.dispatch('getAllPost')       //--for reloading page
                       toast.fire({
                           icon: 'success',
                           title: 'Post Deleted successfully'
                       })
                   })
                   .catch(()=>{

                   })
            }
        }
    }
</script>

<style scoped>

</style>
