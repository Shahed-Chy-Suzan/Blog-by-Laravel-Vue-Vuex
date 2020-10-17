<template>
    <div>
        <section class="content">
            <div class="row justify-content-around pt-1">
                <div class="col-8 ">
                    <div class="card shadow">
                        <div class="card-header bg-primary">
                            <h3 class="card-title">Category List</h3>

                            <div class="card-tools">
                                  <router-link to="/add-category" style="color:#fff"><button class="btn btn-success text-white font-weight-bold"> Add Category</button></router-link>      <!----</button>---->
                            </div>
                        </div>

                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example2" class="table table-bordered table-hover table-striped table-warning">
                                <thead>
                                <tr class="bg-success">
                                    <!-- <th>
                                        <select name="" id="" v-model="select" @change="deleteSelected">
                                            <option value="">Select</option>
                                            <option value="">Delete all</option>
                                        </select><br>
                                        <input type="checkbox" @click.prevent="selectAll" v-model="all_select">
                                        <span v-if="all_select==false">Check All</span>
                                        <span v-else>Uncheck All</span>
                                    </th> -->
                                    <th>Sl</th>
                                    <th>Name</th>
                                    <th>Date</th>
                                    <th>Actions</th>

                                </tr>
                                </thead>
                                <tbody>

                                <tr v-for="(category,index) in getallCategory" :key="category.id">
                                    <!-- <td><input type="checkbox" v-model="categoryItem" :value="category.id" ></td> -->
                                    <td>{{index+1}}</td>
                                    <td>{{category.cat_name}}</td>
                                    <td>{{category.created_at | timeformat}}</td>   <!--Moment_Js applied to format date-->
                                    <td>
                                        <router-link :to="`/edit-category/${category.id}`" class="btn btn-sm btn-primary text-white">Edit</router-link>
                                        <a @click.prevent = "deletecategory(category.id)" class="btn btn-sm btn-danger text-white">Delete</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>    <!--/.card-body-->
                    </div>
                </div>  <!--/.col-->
            </div>  <!--/.row-->
        </section> <!--/.content-->
    </div>
</template>

<script>
    export default {
        name: "List",
        data(){
            return{
                // categoryItem:[],
                // select:'',
                // all_select:false
            }
        },
        mounted(){                                         //--1-->>action--
            this.$store.dispatch("allCategory")
        },
        computed:{
           getallCategory(){                               //--2--
               return this.$store.getters.getCategory    //--$store from app.js(const store)
           }
        },
        methods:{
            deletecategory(id){
               axios.get('/category/'+id)
                   .then(()=>{
                       this.$store.dispatch("allCategory")
                       toast.fire({
                          icon: 'success',
                          title: 'Category Deleted Successfully'
                       })
                   })
                   .catch(()=>{

                   })
            },
        //     deleteSelected(){
        //         console.log(this.categoryItem)
        //        axios.get('/deletecategory/'+this.categoryItem)
        //            .then(()=>{
        //                this.categoryItem = []
        //                this.$store.dispatch("allCategory")
        //                toast({
        //                    type: 'success',
        //                    title: 'Category Deleted successfully'
        //                })

        //            })
        //     },
        //     selectAll(){
        //         if(this.all_select==false){
        //             this.all_select = true
        //             for(var category in this.getallCategory){
        //                 this.categoryItem.push(this.getallCategory[category].id)
        //             }
        //         }else{
        //             this.all_select = false
        //             this.categoryItem = []
        //         }
        //     }
        }
    }
</script>

<style scoped>
</style>
