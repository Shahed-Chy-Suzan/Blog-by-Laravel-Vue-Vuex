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
                                <tr class="bg-success">  <!-------Category Delete using CheckBox Start-------->
                                    <th>
                                        <select v-model="select" @change="deleteSelected">
                                            <option value="">Select</option>
                                            <option value="">Delete all</option>
                                        </select><br>
                                        <input type="checkbox" @click.prevent="selectAll" v-model="all_select">
                                        <span v-if="all_select==false">Check All</span>
                                        <span v-else>Uncheck All</span>
                                    </th>              <!-------Category Delete using CheckBox End------ -->
                                    <th>Sl</th>
                                    <th>Name</th>
                                    <th>Date</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>

                                <tbody>
                                <tr v-for="(category,index) in getallCategory" :key="category.id">
                                    <td><input type="checkbox" v-model="categoryItem" :value="category.id"></td>
                                    <td>{{index+1}}</td>    <!--for getting Serial-->
                                    <td>{{category.cat_name}}</td>
                                    <td>{{category.created_at | timeformat}}</td>   <!--Moment_Js applied to format date-->
                                    <td>
                                        <!-- <router-link :to="'/edit-category/'+category.id" class="btn btn-warning mr-1">Edit</router-link> --> <!--or, -->
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
                categoryItem:[],      //will receive selected checkbox's cat_id (tbody,td)
                select:'',          //auto select 'select' option in dropdown when checked for delete(thead)
                all_select:false     //initial stage it will be false (before select item)
            }
        },
        mounted(){                                         //--1-->>action--
            this.$store.dispatch("allCategory")           //the data in List updated without reload
        },
        computed:{
           getallCategory(){                               //--2--
               return this.$store.getters.getCategory    //--$store from app.js(const store)
           }
        },
        methods:{
            // deletecategory(id){           //--this like:video,/with New delete confirm Alert added below
            //    axios.get('/category/'+id)
            //        .then(()=>{
            //            this.$store.dispatch("allCategory")
            //            toast.fire({
            //               icon: 'success',
            //               title: 'Category Deleted Successfully'
            //            })
            //        })
            //        .catch(()=>{

            //        })
            // },

            deletecategory(id){
                swal.fire({                       //---Delete confirmation Alert Message--
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, Delete it!'
                  }).then((result) => {
                        if (result.value) {              //in video the part its after- deletecategory(id)
                            axios.get('/category/'+id)    //--when the request has passed then go next step
                                .then(()=>{
                                  this.$store.dispatch("allCategory") //after delete-list updated without reload
                                  toast.fire({              //For Success Alert Message
                                      icon: 'success',
                                      title: 'Category Deleted Successfully'
                                  })
                              })
                        }
                    })
            },

            deleteSelected(){
                console.log(this.categoryItem)
                axios.get('/deletecategory/'+this.categoryItem)
                   .then(()=>{
                       this.categoryItem = []        //after deleting of selected id then the dropdown will be null,//must b []
                       this.$store.dispatch("allCategory")    //for reload purpose
                       toast.fire({
                           icon: 'success',
                           title: 'Category Deleted Successfully'
                       })
                   })
            },

            selectAll(){
                if(this.all_select==false) {
                    this.all_select = true     // সিলেক্ত করলে উপরে False এসাইনটা True হয়ে যাবে ।
                    for(var category in this.getallCategory){      // "var category" দিয়ে category ডিক্লার করছে + "getAllCategory" উপরের "computed->getAllCategory()" থেকে কল করা
                        this.categoryItem.push(this.getallCategory[category].id)   // "this.categoryItem" উপরের "data->categoryItem" থেকে কল  || "getAllCategory[category].id" এই মেথডের ভিতরে Category->id টা নিচ্ছে
                    }
                }else{
                    this.all_select = false      // সিলেক্ত না করলে উপরে False এসাইনটা False ই থাকবে ।
                    this.categoryItem = []   //if click uncheck then all selected item will be null/Uncheck
                }
            }
        }
    }
</script>

<style scoped>
</style>
