<template>
    <div>

        <h2>Welcome to Blog Project</h2>
        <h5>Technology Used: Laravel | Vue | Vuex</h5>
        <img class="a" src="../../../../public/assets/public/asset/img/Coder-giphy.gif">
        <img class="b" src="../../../../public/assets/public/asset/img/search-giphy.gif">
        <img class="c" src="../../../../public/assets/public/asset/img/giphy (3).gif">

        <p class="blog">To run this project please go to 'BLOG' from menu bar</p>
        <p>This is simple Home Page. If we need to add any kind of Content/Section in Project 'Home Page' we can normally add these here, Just like we already have deleted some content/section form Home Page recently.</p>
    </div>
</template>

<script>
    export default {
        name: "PublicHome"
    }
</script>

<style scoped>
  div{
    background-color: rgb(250, 245, 241);
    padding: 15px;
  }
  h2{
    color: red;
    width: 500px;
    margin: auto;
    padding-top: 25px;
    font-weight: bolder;
  }
  h5{
    color: rgb(46, 101, 184);
    width: 450px;
    margin: auto;
    padding-bottom: 50px;
  }
  p.blog{
    color: rgb(255, 92, 28);
    width: 450px;
    margin: auto;
    padding: 50px;
    font-size: 16px;
    font-weight: 600;
  }
  p{
    width: 1350px;
    margin: auto;
  }
  img.c{
    width: 480px;
    height: 360px;
    padding-left:10px;
    padding-right:10px;
  }
  img.a{
    padding-left:10px;
    padding-right:10px;
  }
</style>
