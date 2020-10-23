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
                                    <td>{{index+1}}</td>    <!--for getting Serial-->
                                    <td>{{category.cat_name}}</td>
                                    <td>{{category.created_at | timeformat}}</td>   <!--Moment_Js applied to format date-->
                                    <td>
                                        <!-- <router-link :to="`/edit-category/${category.id}`" class="btn btn-warning mr-1">Edit</router-link> --> <!--or, -->
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
                // all_select:false     //initial stage it will be false (before select item)
            }
        },
        mounted(){                                         //--1-->>action--
            this.$store.dispatch("allCategory")           //the data in list updated without reload
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
        //                this.categoryItem = []  //after deleting of selected id then the dropdown will be nll
        //                this.$store.dispatch("allCategory")
        //                toast({
        //                    type: 'success',
        //                    title: 'Category Deleted successfully'
        //                })

        //            })
        //     },
        //     selectAll(){
        //         if(this.all_select==false){
        //             this.all_select = true     // সিলেক্ত করলে উপরে False এসাইনটা True হয়ে যাবে ।
        //             for(var category in this.getallCategory){      // "var category" দিয়ে category ডিক্লার করছে ।। "getAllCategory" উপরের "mounted->getAllCategory()" থেকে কল করা
        //                 this.categoryItem.push(this.getallCategory[category].id)   // "this.categoryItem" উপরের "data->categoryItem" থেকে কল  || "getAllCategory[category].id" এই মেথডের ভিতরে Category->id টা নিচ্ছে
        //             }
        //         }else{
        //             this.all_select = false      // সিলেক্ত না করলে উপরে False এসাইনটা False ই থাকবে ।
        //             this.categoryItem = []   //if click uncheck then all selected item will be null/Uncheck
        //         }
        //     }
        }
    }
</script>

<style scoped>
</style>
