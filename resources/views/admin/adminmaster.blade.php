
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin | Blog-Vue_Laravel_Vuex Project</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="{{asset("assets/public/asset/ico/vue.png")}}"/>

  <meta name="csrf-token" content="{{ csrf_token() }}">     <!--this is for 'error free console'/(vue_devTool)-->

  <!-- Styles -->
  <link href="{{ asset('css/app.css') }}" rel="stylesheet">

</head>


<body class="hold-transition sidebar-mini">

<!-- Site wrapper -->
<!--VUE_Js er jnno ei id='app' ta entire body te nyechi// id ta direct body_tag e use kra jai na,error dibe-->
<div class="wrapper" id="app">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
    <!-- Left navbar links -->
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="../../index3.html" class="brand-link">
      <img src="{{ asset('assets/admin/default/admin.png') }}"
           alt="AdminLTE Logo"
           class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">{{ Auth::user()->name }}</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel d-flex">
        <marquee class="text-info">#&nbsp&nbsp Blog - Project &nbsp&nbsp#&nbsp&nbsp Laraval - 5.7 &nbsp&nbsp#&nbsp&nbsp Vue JS</marquee>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <router-link to="/home" class="nav-link user-panel">
              <i class="nav-icon fa fa-th"></i>
              <p>
                Dashboard
              </p>
            </router-link>
          </li>

          <li class="nav-item ">
            <router-link to="/category-list" class="nav-link user-panel">
              <i class="nav-icon fa fa-book"></i>
              <p>
                Category
              </p>
            </router-link>
          </li>
          <li class="nav-item ">
            <router-link to="/post-list" class="nav-link user-panel">
              <i class="nav-icon fa fa-edit"></i>
              <p>
                Post
                <span class="right badge badge-danger">New</span>
              </p>
            </router-link>
          </li>

        </ul>
      </nav>  <!-- /.sidebar-menu -->
    </div>  <!-- /.sidebar -->
  </aside>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper pl-2 pb-5">
    <!--------------------------Vue Routing------------------------>
    <admin-main></admin-main>       <!--AdminMaster.vue loaded here--//it's come From "resources/js/app.js"-->
  </div>
  <!-- /.content-wrapper -->



  <!----------------------Start_Footer---------------------------->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b>1.0
    </div>
    <p>Copyright &copy; 2014-2018 || <strong>Blog - Project using Laravel-5.7 & Vue</strong> || AdminLTE-3.0.0-alpha.2 || All rights
    reserved.</p>
  </footer>  <!--------End_Footer-------->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->




  <!---------------------------External JS files------------------------------------------------>
  <!-- Scripts -->
  <script src="{{ asset('js/app.js') }}" defer></script>

</body>
</html>
