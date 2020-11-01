<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Blog - Vue_Laravel_Vuex Project</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <meta name="csrf-token" content="{{csrf_token()}}"/>


  <!-- css -->
  <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700"
    rel="stylesheet">
  <link href="{{asset("assets/public/asset/css/")}}/bootstrap.css" rel="stylesheet"/>
  <link href="{{asset("assets/public/asset/css/")}}/bootstrap-responsive.css" rel="stylesheet"/>
  <link href="{{asset("assets/public/asset/css/")}}/fancybox/jquery.fancybox.css" rel="stylesheet">
  <link href="{{asset("assets/public/asset/css/")}}/jcarousel.css" rel="stylesheet"/>
  <link href="{{asset("assets/public/asset/css/")}}/flexslider.css" rel="stylesheet"/>
  <link href="{{asset("assets/public/asset/css/")}}/style.css" rel="stylesheet"/>
  <!-- Theme skin -->
  <link href="{{asset("assets/public/asset/skins/default.css")}}" rel="stylesheet"/>
  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{{asset('assets/public/asset/ico/apple-touch-icon-144-precomposed.png')}}" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{{asset('assets/public/asset/ico/apple-touch-icon-114-precomposed.png')}}" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{{asset('assets/public/asset/ico/apple-touch-icon-72-precomposed.png')}}" />
  <link rel="apple-touch-icon-precomposed" href="{{asset('assets/public/asset/ico/apple-touch-icon-57-precomposed.png')}}" />
  <link rel="shortcut icon" href="{{asset("assets/public/asset/ico/vue.png")}}"/>   <!--favicon-->

  <!-- =======================================================
      Theme Name: Flattern
      Theme URL: https://bootstrapmade.com/flattern-multipurpose-bootstrap-template/
      Author: BootstrapMade.com
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>

<body>
  <div id="app">        <!---come from "resources/js/app.js" & must be use for supporting of Vue element-->
    <div id="wrapper">
      <!-- start header -->
      <header>
        <div class="container">
          <!-- hidden top area toggle link -->
          <div id="header-hidden-link">
            <a href="#" class="toggle-link" title="Click me you'll get a surprise"
              data-target=".hidden-top"><i></i>Open</a>
          </div>
          <!-- end toggle link -->
          <div class="row nomargin">
            <div class="span12">
              <div class="headnav">
                <ul>
                  <li><a href="#mySignup" data-toggle="modal"><i class="icon-user"></i> Sign up</a></li>
                  <li><a href="#mySignin" data-toggle="modal">Sign in</a></li>
                </ul>
              </div>
              <!-- Signup Modal -->
              <div id="mySignup" class="modal styled hide fade" tabindex="-1" role="dialog"
                aria-labelledby="mySignupModalLabel" aria-hidden="true">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                  <h4 id="mySignupModalLabel">Create an <strong>account</strong></h4>
                </div>
                <div class="modal-body">
                  <form class="form-horizontal">
                    <div class="control-group">
                      <label class="control-label" for="inputEmail">Email</label>
                      <div class="controls">
                        <input type="text" id="inputEmail" placeholder="Email">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="inputSignupPassword">Password</label>
                      <div class="controls">
                        <input type="password" id="inputSignupPassword" placeholder="Password">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="inputSignupPassword2">Confirm Password</label>
                      <div class="controls">
                        <input type="password" id="inputSignupPassword2" placeholder="Password">
                      </div>
                    </div>
                    <div class="control-group">
                      <div class="controls">
                        <button type="submit" class="btn">Sign up</button>
                      </div>
                      <p class="aligncenter margintop20">
                        Already have an account? <a href="#mySignin" data-dismiss="modal" aria-hidden="true"
                          data-toggle="modal">Sign in</a>
                      </p>
                    </div>
                  </form>
                </div>
              </div>
              <!-- end signup modal -->
              <!-- Sign in Modal -->
              <div id="mySignin" class="modal styled hide fade" tabindex="-1" role="dialog"
                aria-labelledby="mySigninModalLabel" aria-hidden="true">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                  <h4 id="mySigninModalLabel">Login to your <strong>account</strong></h4>
                </div>
                <div class="modal-body">
                  <form class="form-horizontal">
                    <div class="control-group">
                      <label class="control-label" for="inputText">Username</label>
                      <div class="controls">
                        <input type="text" id="inputText" placeholder="Username">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="inputSigninPassword">Password</label>
                      <div class="controls">
                        <input type="password" id="inputSigninPassword" placeholder="Password">
                      </div>
                    </div>
                    <div class="control-group">
                      <div class="controls">
                        <button type="submit" class="btn">Sign in</button>
                      </div>
                      <p class="aligncenter margintop20">
                        Forgot password? <a href="#myReset" data-dismiss="modal" aria-hidden="true"
                          data-toggle="modal">Reset</a>
                      </p>
                    </div>
                  </form>
                </div>
              </div>
              <!-- end signin modal -->
              <!-- Reset Modal -->
              <div id="myReset" class="modal styled hide fade" tabindex="-1" role="dialog"
                aria-labelledby="myResetModalLabel" aria-hidden="true">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                  <h4 id="myResetModalLabel">Reset your <strong>password</strong></h4>
                </div>
                <div class="modal-body">
                  <form class="form-horizontal">
                    <div class="control-group">
                      <label class="control-label" for="inputResetEmail">Email</label>
                      <div class="controls">
                        <input type="text" id="inputResetEmail" placeholder="Email">
                      </div>
                    </div>
                    <div class="control-group">
                      <div class="controls">
                        <button type="submit" class="btn">Reset password</button>
                      </div>
                      <p class="aligncenter margintop20">
                        We will send instructions on how to reset your password to your inbox
                      </p>
                    </div>
                  </form>
                </div>
              </div>
              <!-- end reset modal -->
            </div>
          </div>

          <div class="row">
            <div class="span4">
              <div class="logo">
                <router-link to="/"><img src="{{asset("assets/public/asset/img/")}}/logo.png" class="logo"/></router-link>
                <h1 class="text-primary">'Blog' Project - Laravel + Vue + Vuex</h1>
              </div>
            </div>
            <div class="span8">
              <div class="navbar navbar-static-top">
                <div class="navigation">
                  <nav>
                    <ul class="nav topnav">
                      <li class="dropdown active">
                        <router-link to="/">Home</router-link>
                      </li>
                      <li>
                        <router-link to="/blog">Blog </router-link>   <!---------Blog|Navbar------------>
                      </li>
                      <li class="dropdown">
                        <a href="#">Features <i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                          <li><a href="typography.html">Typography</a></li>
                          <li><a href="table.html">Table</a></li>
                          <li><a href="components.html">Components</a></li>
                          <li><a href="animations.html">56 Animations</a></li>
                          <li><a href="icons.html">Icons</a></li>
                          <li><a href="icon-variations.html">Icon variations</a></li>
                          <li class="dropdown"><a href="#">3 Sliders <i class="icon-angle-right"></i></a>
                            <ul class="dropdown-menu sub-menu-level1">
                              <li><a href="index.html">Nivo slider</a></li>
                              <li><a href="index-alt2.html">Slit slider</a></li>
                              <li><a href="index-alt3.html">Parallax slider</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#">Pages <i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                          <li><a href="about.html">About us</a></li>
                          <li><a href="pricingbox.html">Pricing boxes</a></li>
                          <li><a href="testimonials.html">Testimonials</a></li>
                          <li><a href="404.html">404</a></li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#">Portfolio <i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                          <li><a href="portfolio-2cols.html">Portfolio 2 columns</a></li>
                          <li><a href="portfolio-3cols.html">Portfolio 3 columns</a></li>
                          <li><a href="portfolio-4cols.html">Portfolio 4 columns</a></li>
                          <li><a href="portfolio-detail.html">Portfolio detail</a></li>
                        </ul>
                      </li>
                      <li>
                        <a href="contact.html">Contact </a>
                      </li>
                    </ul>
                  </nav>
                </div>  <!---end navigation--->
              </div>
            </div>
          </div>
        </div>
      </header> <!---nd header--->




      <!--============================== Vue Routing Start ===========================-->

        <home-main></home-main>   <!--it's Loaded(PublicMaster) now & it's come From "resources/js/app.js"-->

      <!--============================== Vue Routing End   ===========================-->



  <!-------------------Footer Start---------------------->
      <footer>
        <div class="container">
          <div class="row">
            <div class="span5">
              <div class="widget">
                <h5 class="widgetheading">Project's Require Information:</h5>
                <ul class="link-list">
                  <li><strong>- Backend(Admin_Dashboard) :</strong></li>
                  <li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - http://127.0.0.1:8000/home#/ </li>
                  <li><strong>- Admin Login :</strong></li>
                  <li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Email: admin@gmail.com</li>
                  <li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - password: admin</li>
                  <li><strong>- Project_Run(Frontend) :</strong></li>
                  <li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - http://127.0.0.1:8000/#/		 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//working(Development Server)</li>
                  <li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - http://localhost/Blog/#/blog  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// not working features</li>
                </ul>
              </div>
            </div>
            <div class="span3">
              <div class="widget">
                <h5 class="widgetheading">Important stuff</h5>
                <ul class="link-list">
                  <li><a href="#">Press release</a></li>
                  <li><a href="#">Terms and conditions</a></li>
                  <li><a href="#">Privacy policy</a></li>
                  <li><a href="#">Career center</a></li>
                  <li><a href="#">Flattern forum</a></li>
                </ul>
              </div>
            </div>
            {{-- <div class="span3">
              <div class="widget">
                <h5 class="widgetheading">Flickr photostream</h5>
                <div class="flickr_badge">
                  <script type="text/javascript"
                    src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03">
                  </script>
                </div>
                <div class="clear">
                </div>
              </div>
            </div> --}}
            <div class="span3">
              <div class="widget">
                <h5 class="widgetheading">Get in touch with us</h5>
                <address>
                  <strong>Flattern studio, Pte Ltd</strong><br>
                  Springville center X264, Park Ave S.01<br>
                  Semarang 16425 Indonesia
                </address>
                <p>
                  <i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <br>
                  <i class="icon-envelope-alt"></i> email@domainname.com
                </p>
              </div>
            </div>
          </div>
        </div>
        <div id="sub-footer">
          <div class="container">
            <div class="row">
              <div class="span6">
                <div class="copyright">
                  <p>
                    <span>&copy; Flattern - All right reserved.</span>
                  </p>
                  <div class="credits">
                    <!--
                      All the links in the footer should remain intact.
                      You can delete the links only if you purchased the pro version.
                      Licensing information: https://bootstrapmade.com/license/
                      Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Flattern
                    -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                  </div>
                </div>
              </div>
              <div class="span6">
                <ul class="social-network">
                  <li><a href="#" data-placement="bottom" title="Facebook"><i class="icon-facebook icon-square"></i></a>
                  </li>
                  <li><a href="#" data-placement="bottom" title="Twitter"><i class="icon-twitter icon-square"></i></a>
                  </li>
                  <li><a href="#" data-placement="bottom" title="Linkedin"><i class="icon-linkedin icon-square"></i></a>
                  </li>
                  <li><a href="#" data-placement="bottom" title="Pinterest"><i
                        class="icon-pinterest icon-square"></i></a></li>
                  <li><a href="#" data-placement="bottom" title="Google plus"><i
                        class="icon-google-plus icon-square"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </footer>   <!-------------------End Footer---------------------->
    </div>
  </div>

<a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-32 active"></i></a>



  <!----- javascript files--->
  <!----- Placed at the end of the document so the pages load faster ----->


  <!--Load app.js for using vue component-->
  <script src="{{asset("js/app.js")}}"></script>    <!--compile app.js/ Must be added/linked-->

  <script src="{{asset("assets/public/asset/js/")}}/jquery.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/jquery.easing.1.3.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/bootstrap.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/jcarousel/jquery.jcarousel.min.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/jquery.fancybox.pack.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/jquery.fancybox-media.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/google-code-prettify/prettify.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/portfolio/jquery.quicksand.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/portfolio/setting.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/jquery.flexslider.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/jquery.nivo.slider.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/modernizr.custom.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/jquery.ba-cond.min.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/jquery.slitslider.js"></script>
  <script src="{{asset("assets/public/asset/js/")}}/animate.js"></script>

  <!-- Template Custom JavaScript File -->
  <script src="{{asset("assets/public/asset/js/")}}/custom.js"></script>

</body>
</html>
