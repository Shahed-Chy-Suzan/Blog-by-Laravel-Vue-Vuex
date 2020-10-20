
//let AdminHome = require('./components/admin/AdminHome.vue').default;  //---OR/alternative---
import AdminHome from './components/admin/AdminHome.vue'
//--Category--
import CategoryList from './components/admin/category/List.vue'
import AddCategory from './components/admin/category/New.vue'
import EditCategory from './components/admin/category/Edit.vue'
//--Post--
import PostList from './components/admin/post/List.vue'
import AddPost from './components/admin/post/New.vue'
import EditPost from './components/admin/post/Edit.vue'


export const routes = [
  { path: '/home', component: AdminHome },
  //--category--
  {
    path:'/category-list',
    component: CategoryList
  },
  { path:'/add-category', component: AddCategory },
  { path:'/edit-category/:categoryid', component: EditCategory },
  //--Post--
  { path:'/post-list',component: PostList },  
  { path:'/add-post', component: AddPost },
  { path:'/edit-post/:postid', component: EditPost },


]
