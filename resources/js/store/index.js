
export default {
  state:{
      category:[],
      post:[],
      blogpost:[],
      singlepost:[],
      allcategories:[],
      latestpost:[]
  },

  getters:{
      getCategory(state){                  //--2--
          return state.category
      },
      getAllPost(state){                   //--p2--
          return state.post
      },
      getblogPost(state){                  //--bp2--
          return state.blogpost
      },
      singlepost(state){                   //--sp2--
          return state.singlepost
      },
      allcategories(state){                //--fc2--
          return state.allcategories
      },
      latestpost(state){                  //--flp2--
          return state.latestpost
      }
  },

  actions:{
      allCategory(context){                  //--1-->>mutations--
          axios.get('/category')
              .then((response)=>{
                  context.commit('categoreis',response.data.categories)
              })
      },
      getAllPost(context){                    //--p1-->>mutations
          axios.get('/post')                  //match with route in web.php
              .then((response)=>{
                  console.log(response.data)
                  context.commit('allpost',response.data.posts) //from controller
              })
      },
      getblogPost(context){                 //--bp1-->>mutations
          axios.get('/blogpost')
              .then((response)=>{
                  // console.log(response.data)
                  context.commit('getblogPost',response.data.posts)
              })
      },
      getPostById(context,payload){           //--sp1.1-->>mutations
          axios.get('/singlepost/'+payload)
              .then((response)=>{
                  context.commit('siglePost',response.data.post)
              })
      },
      allcategories(context){               //--fc1-->>mutations
          axios.get('/categories')
              .then((response)=>{
                  context.commit('allcategories',response.data.categories)
              })
      },
      getPostByCatId(context,payload){            //--Sbar1.2-->>mutations
          axios.get('/categorypost/'+payload)
              .then((response)=>{
                  console.log(response.data.posts)
                  context.commit('getPostByCatId',response.data.posts)
              })
      },
      SearchPost(context,payload){             //--search-->>mutations
          axios.get('/search?s='+payload)
              .then((response)=>{
                  context.commit('getSearchPost',response.data.posts)
              })
      },
      latestPost(context){                //--flp1-->>mutations
          axios.get('/latestpost')
              .then((response)=>{
                  // console.log(response.data)
                  context.commit('latestpost',response.data.posts)
              })
      }
  },

  mutations:{
      categoreis(state,data){                     //--1-->>state
          return state.category = data      //এখানে data = response.data.posts
      },
      allpost(state,payload){                     //--p1-->>state
          return state.post = payload
      },
      getblogPost(state,payload){                 //--bp1-->>state
          return state.blogpost = payload
      },
      siglePost(state,payload){                   //sp1.1-->>state
          return state.singlepost = payload
      },
      allcategories(state,payload){	              //--fc1-->>state
          return state.allcategories = payload
      },
      getPostByCatId(state,payload){              //--Sbar1.2-->>state
          return state.blogpost = payload
      },
      getSearchPost(state,payload){               //--search-->>state
          state.blogpost = payload
      },
      latestpost(state,payload){                //--flp1-->>state
          state.latestpost = payload
      }
  }

}
