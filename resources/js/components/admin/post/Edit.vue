<template>
    <section class="content">
        <div class="container-fluid">
            <div class="row justify-content-around">
                <div class="col-md-10">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Update Post</h3>
                        </div>  <!-- /.card-header -->

                        <!-- form start -->
                        <form role="form" enctype="multipart/form-data" @submit.prevent="updatePost()">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="postId">Edit Title </label>
                                    <input type="text" class="form-control" id="postId" placeholder="Edit Post Title" v-model="form.title" name="title" :class="{ 'is-invalid': form.errors.has('title') }">
                                    <has-error :form="form" field="title"></has-error>
                                </div>
                                <div class="form-group">
                                    <label for="descriptionId">Edit Description</label>

                                    <markdown-editor v-model="form.description"></markdown-editor>

                                    <has-error :form="form" field="description"></has-error>
                                </div>

                                <div class="form-group" >
                                    <label>Select Category</label>
                                    <select class="form-control" :class="{ 'is-invalid': form.errors.has('cat_id') }" v-model="form.cat_id">
                                        <option disabled value="">Select One</option>
                                        <option :value="category.id" v-for="category in getallCategory">{{category.cat_name}}</option>
                                    </select>
                                    <has-error :form="form" field="cat_id"></has-error>
                                </div>
                                <div class="form-group" >
                                    <input @change = "changePhoto($event)" name="photo" type="file" :class="{ 'is-invalid': form.errors.has('photo') }" class="btn btn-info">
                                    <img :src="updateImage()" width="80" height="80">
                                    <has-error :form="form" field="photo"></has-error>
                                </div>
                            </div>  <!--/.card-body-->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </form>
                    </div>   <!--/.card-->
                </div>
            </div>  <!--/.row-->
        </div>  <!--/.container-fluid-->
    </section>
</template>

<script>
    export default {
        name: "Edit",
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
            this.$store.dispatch("allCategory")                 //--1--
        },
        created(){
            axios.get(`post/${this.$route.params.postid}`)
                .then((response)=>{
                    console.log(response.data)
                    this.form.fill(response.data.post)        //fill = v-form buildin
                })
        },
        computed:{
            getallCategory(){
                return this.$store.getters.getCategory        //--2--
            }
        },
        methods:{
            changePhoto(event){
                let file = event.target.files[0];

                if(file.size>1048576){
                    swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Image should be less than 1MB!',
                        footer: '<a href>Please upload image which is less than 1MB!</a>'
                    })
                }else{
                    let reader = new FileReader();
                    reader.onload = event => {
                        this.form.photo = event.target.result
                        console.log(event.target.result)
                    };
                    reader.readAsDataURL(file);
                }
            },
            updatePost(){
                this.form.post(`update/${this.$route.params.postid}`)
                    .then(()=>{
                        this.$router.push('/post-list')
                        toast.fire({
                            icon: 'success',
                            title: 'Post Updated Successfully'
                        })
                    })
                    .catch(()=>{

                    })
            },
            updateImage(){
                let img = this.form.photo;
                if(img.length>100){
                    return  this.form.photo                   //will show if newPhoto added
                }else{
                    return `uploadimage/${this.form.photo}`   //will show oldPhoto from projectFolder
                }
            }
        }
    }
</script>

<style scoped>

</style>
