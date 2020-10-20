<template>
    <section class="content">
        <div class="container-fluid">
            <div class="row justify-content-around">
                <div class="col-md-10">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Add New Post</h3>
                        </div>  <!--/.card-header-->

                <!---------form start--------------->
                        <form role="form" enctype="multipart/form-data" @submit.prevent="addnewPost()">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="postId">Title </label>
                                    <input type="text" class="form-control" id="postId" placeholder="Add Post Title" v-model="form.title" name="title" :class="{ 'is-invalid': form.errors.has('title') }">
                                    <has-error :form="form" field="title"></has-error>
                                </div>

                                <div class="form-group">
                                    <label> Description</label>

                                    <markdown-editor v-model="form.description"></markdown-editor>

                                    <has-error :form="form" field="description"></has-error>
                                </div>

                                <div class="form-group" >
                                    <label>Select Category</label>
                                    <select class="form-control" :class="{ 'is-invalid': form.errors.has('cat_id') }" v-model="form.cat_id">
                                        <option disabled value="">Select One</option>
                                        <option :value="category.id" v-for="category in getallCategory"> {{category.cat_name}}</option>
                                    </select>
                                    <has-error :form="form" field="cat_id"></has-error>
                                </div>

                                <div class="form-group" >
                                    <input @change = "changePhoto($event)" name="photo" type="file" :class="{ 'is-invalid': form.errors.has('photo') }" class="btn btn-info">
                                    <img :src="form.photo" width="80" height="80">
                                    <has-error :form="form" field="photo"></has-error>
                                </div>
                            </div>  <!--/.card-body-->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                    </div>  <!--/.card-->
                </div>
            </div>  <!--/.row-->
        </div>  <!--/.container-fluid -->
    </section>
</template>

<script>
    export default {
        name: "New",
        data(){
            return{
                form: new Form({
                    title:'',
                    description:'',
                    cat_id:'',
                    photo:'',
                })
            }
        },
        mounted(){
            this.$store.dispatch("allCategory")             //--1--
        },
        computed:{
            getallCategory(){
                return this.$store.getters.getCategory      //--2--
            }
        },
        methods:{
            changePhoto(event){                     //click korlei ai 'event' er vitor pic er sob details chole asbe
                let file = event.target.files[0];     //now,File's(name,size,type) available in variable 'file'

                 if(file.size>1048576){            //made condition: file will less than 1MB(1024*1024=1048576 byte)
                     swal.fire({
                         icon: 'error',
                         title: 'Oops...',
                         text: 'Image should be less than 1MB!',
                         footer: '<a href>Please upload image which is less than 1MB!</a>'
                     })
                 }else{
                     let reader = new FileReader();
                     reader.onload = event => {
                         this.form.photo = event.target.result    //storing/taking new_pic's extention in 'newphoto'
                         console.log(event.target.result)
                     };
                     reader.readAsDataURL(file);
                 }
            },
            addnewPost(){
                this.form.post('/savepost')
                    .then(()=>{
                        this.$router.push('/post-list')
                        toast.fire({
                            icon: 'success',
                            title: 'Post Added Successfully'
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
