<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostVideo.aspx.cs" Inherits="es.admin.PostVideo" %>

<panel runat="server">
    <!DOCTYPE html>
    <html lang="en" data-bs-theme="light" data-scheme="navy">

        <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
        <meta name="description" content="Edit, publish, and remove video post page layout">
        <title>Manage Video Posts | Nifty - Admin Template</title>


        <!-- STYLESHEETS -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

        <!-- Fonts [ OPTIONAL ] -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&family=Ubuntu:wght@400;500;700&display=swap" rel="stylesheet">


        <!-- Bootstrap CSS [ REQUIRED ] -->
        <link rel="stylesheet" href="./assets/css/bootstrap.min.css">

        <!-- Nifty CSS [ REQUIRED ] -->
        <link rel="stylesheet" href="./assets/css/nifty.min.css">

        <!-- Nifty Demo Icons [ OPTIONAL ] -->
        <link rel="stylesheet" href="./assets/css/demo-purpose/demo-icons.min.css">

        <!-- Demo purpose CSS [ DEMO ] -->
        <link rel="stylesheet" href="./assets/css/demo-purpose/demo-settings.min.css">


        <!-- Favicons [ OPTIONAL ] -->
        <link rel="apple-touch-icon" sizes="180x180" href="./apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="./favicon-16x16.png">
        <link rel="manifest" href="./site.webmanifest">


        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

        [ REQUIRED ]
        You must include this category in your project.


        [ OPTIONAL ]
        This is an optional plugin. You may choose to include it in your project.


        [ DEMO ]
        Used for demonstration purposes only. This category should NOT be included in your project.


        [ SAMPLE ]
        Here's a sample script that explains how to initialize plugins and/or components: This category should NOT be included in your project.


        Detailed information and more samples can be found in the documentation.

        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


    </head>

        <body class="out-quart">


        <!-- PAGE CONTAINER -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <div id="root" class="root mn--max tm--expanded-hd">

            <!-- CONTENTS -->
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <section id="content" class="content">

                <div class="content__header content__boxed overlapping">
                    <div class="content__wrap">

                        <!-- Post video button placeholder -->
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#videoModal">Post a Video</button>

                        <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="videoModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="videoModalLabel">New Video</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form runat="server">
                                            <div class="mb-3">
                                                <label for="titletext" class="col-form-label">Title</label>
                                                <asp:TextBox runat="server" class="form-control" ID="titletext"></asp:TextBox>
                                            </div>
                                            <div class="mb-3">
                                                <label for="descriptiontext" class="col-form-label">Description</label>
                                                <asp:TextBox runat="server" class="form-control" ID="descriptiontext"></asp:TextBox>
                                            </div>
                                            <div class="mb-3">
                                                <label for="linktext" class="col-form-label">Link</label>
                                                <asp:TextBox runat="server" class="form-control" ID="linktext"></asp:TextBox>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Post</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End -->

                        <!-- Title and information -->
                        <h1 class="page-title d-flex flex-wrap just justify-content-center mb-2 mt-4">Videos</h1>
                        <!-- END : Title and information -->


                        <!-- Search form -->
                        <div class="col-md-8 offset-md-2 mb-3">
                            <form class="searchbox input-group">
                                <input class="searchbox__input form-control form-control-lg" type="search" placeholder="Search videos" aria-label="Search">
                                <div class="searchbox__btn-group">
                                <button class="searchbox__btn btn btn-icon bg-transparent shadow-none border-0 btn-sm" type="submit">
                                    <i class="demo-pli-magnifi-glass"></i>
                                </button>
                                </div>
                            </form>
                        </div>
                        <!-- END : Search form -->
                    </div>
                </div>


                <div class="content__boxed">
                <div class="content__wrap">

                    <div class="card">
                        <div class="card-body">


                            <!-- Blog post lists -->
                            <div class="table-responsive">
                            <table class="table table-striped align-middle">
                                <thead>
                                    <tr>
                                        <th width="55"></th>
                                        <th>Video Title</th>
                                        <th>Description</th>
                                        <th>Link</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><img class="img-sm rounded" src="./assets/img/megamenu/img-1.jpg" alt="thumbs"></td>
                                        <td><span class="text-nowrap text-body-secondary">Title Place Holder</span></td>
                                        <td><span class="text-nowrap text-body-secondary">Description Place Holder</span></td>
                                        <td href="#">Internet</td>
                                        <td>
                                            <button class="btn btn-primary">Post</button>
                                        </td>

                                    </tr>
                                
                                </tbody>
                            </table>
                            </div>
                            <!-- END : Blog post lists -->
                        </div>
                    </div>


                </div>
                </div>


                <!-- FOOTER -->

                <footer class="mt-auto">
                <div class="content__boxed">
                    <div class="content__wrap py-3 py-md-1 d-flex flex-column flex-md-row align-items-md-center">
                        <div class="text-nowrap mb-4 mb-md-0">Copyright &copy; 2024 <a href="#" class="ms-1 btn-link fw-bold">My Company</a></div>
                        <nav class="nav flex-column gap-1 flex-md-row gap-md-3 ms-md-auto">
                            <a class="nav-link link-offset-3 link-underline-hover px-0" href="#">Policy Privacy</a>
                            <a class="nav-link link-offset-3 link-underline-hover px-0" href="#">Terms and conditions</a>
                            <a class="nav-link link-offset-3 link-underline-hover px-0" href="#">Contact Us</a>
                        </nav>
                    </div>
                </div>
                </footer>

                <!-- END - FOOTER -->


            </section>

            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <!-- END - CONTENTS -->


            <!-- HEADER -->
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <header class="header">
                <div class="header__inner">

                    <!-- Brand -->
                    <div class="header__brand">
                        <div class="brand-wrap">

                        <!-- Brand logo -->
                        <a href="Default.aspx" class="brand-img stretched-link">
                            <img src="./assets/img/logo.svg" alt="Nifty Logo" class="Nifty logo" width="16" height="16">
                        </a>


                        <!-- Brand title -->
                        <div class="brand-title">Nifty</div>


                        <!-- You can also use IMG or SVG instead of a text element. -->
                        <!--
                    <div class="brand-title">
                        <img src="./assets/img/brand-title.svg" alt="Brand Title">
                    </div>
                    -->

                        </div>
                    </div>
                    <!-- End - Brand -->


                    <div class="header__content">

                        <!-- Content Header - Left Side: -->
                        <div class="header__content-start">


                        <!-- Navigation Toggler -->
                        <button type="button" class="nav-toggler header__btn btn btn-icon btn-sm" aria-label="Nav Toggler">
                            <i class="demo-psi-list-view"></i>
                        </button>

                        <div class="vr mx-1 d-none d-md-block"></div>

                        <!-- Searchbox -->
            

                            <!-- Searchbox toggler for small devices -->
               

                            <!-- Searchbox input -->
                  
           
                        </div>
                        <!-- End - Content Header - Left Side -->


                        <!-- Content Header - Right Side: -->
                        <div class="header__content-end">


                        <div class="vr mx-1 d-none d-md-block"></div>

                        <div class="form-check form-check-alt form-switch mx-md-2">
                            <input id="headerThemeToggler" class="form-check-input mode-switcher" type="checkbox" role="switch">
                            <label class="form-check-label ps-1 fw-bold d-none d-md-flex align-items-center " for="headerThemeToggler">
                                <i class="mode-switcher-icon icon-light demo-psi-sun fs-5"></i>
                                <i class="mode-switcher-icon icon-dark d-none demo-psi-half-moon"></i>
                            </label>
                        </div>

                        <div class="vr mx-1 d-none d-md-block"></div>

                        <!-- Sidebar Toggler -->
            


                        </div>
                    </div>
                </div>
            </header>
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <!-- END - HEADER -->

      
      
        <!-- MAIN NAVIGATION -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <nav id="mainnav-container" class="mainnav">
            <div class="mainnav__inner">

                    <!-- Navigation menu -->
                    <div class="mainnav__top-content scrollable-content pb-5">


                       <!-- Profile Widget -->
                            <div id="_dm-mainnavProfile" class="mainnav__widget my-3 hv-outline-parent">

                               <!-- Profile picture  -->
                                    <div class="text-center py-2">
                                       <img class="mainnav__avatar img-md rounded-circle hv-oc" src="./assets/img/profile-photos/1.png" alt="Profile Picture">
                                    </div>

                                    <!-- User name and position -->
                                    <div class="text-center">
                                       <h5 class="mb-0">Aaron Chavez</h5>
                                       <small class="text-body-secondary">Administrator</small>
                                    </div>

                            </div>
                       <!-- End - Profile widget -->


                        <!-- Dashboard -->              
                                <div class="mainnav__categoriy py-3">
                                    <ul class="mainnav__menu nav flex-column">
                                    <li class="nav-item">
                                        <a href="./Default.aspx" class="nav-link mininav-toggle"><i class="demo-pli-home fs-5 me-2"></i>
                                        <span class="nav-label mininav-content ms-1">
                                                <span data-popper-arrow class="arrow"></span>
                                                Dashboard
                                        </span>
                                        </a>
                                    </li>
                                    </ul>
                                </div>
                        <!-- End Dashboard -->            

                        <!-- Manage Posts --> 
                                <div class="mainnav__categoriy py-3"> 
                                    <ul class="mainnav__menu nav flex-column">
                                        <li class="nav-item">
                                        <a href="./PostManagement.aspx" class="nav-link mininav-toggle"><i class="demo-pli-receipt-4 fs-5 me-2"></i>
                                            <span class="nav-label mininav-content ms-1">
                                                <span data-popper-arrow class="arrow"></span>
                                                Manage Posts
                                            </span>
                                        </a>
                                        </li>
                                    </ul>
                                </div>  
                        <!-- End Manage Posts -->

                        <!-- Edit Posts -->
                                <div class="mainnav__categoriy py-3">
                                    <ul class="mainnav__menu nav flex-column">
                                        <li class="nav-item">
                                        <a href="./PostEdit.aspx" class="nav-link mininav-toggle"><i class="demo-pli-pen-5 fs-5 me-2"></i>
                                            <span class="nav-label mininav-content ms-1">
                                                <span data-popper-arrow class="arrow"></span>
                                                Edit Posts
                                            </span>
                                        </a>
                                        </li>
                                    </ul>
                                </div>

                        <!-- End Edit Posts -->

                        <!-- Video Posts -->

                                <div class="mainnav__categoriy py-3">
                                    <ul class="mainnav__menu nav flex-column">
                                    <li class="nav-item">
                                        <a href="./PostVideo.aspx" class="nav-link mininav-toggle"><i class="demo-pli-computer-secure fs-5 me-2"></i>
                                        <span class="nav-label mininav-content ms-1">
                                                <span data-popper-arrow class="arrow"></span>
                                                Video Posts
                                        </span>
                                        </a>
                                    </li>
                                    </ul>
                                </div>
                        <!-- End Video Posts -->


                    </div>
                    <!-- End - Navigation menu -->
                    
                <!-- Bottom navigation menu -->
                <div class="mainnav__bottom-content border-top pb-2">
                   <ul id="mainnav" class="mainnav__menu nav flex-column">
                    <!-- Settings -->
                      <li class="nav-item has-sub">
                          <a href="#" class="nav-link">
                              <i class="demo-pli-gear fs-5 me-2"></i>
                              <span class="nav-label ms-1">Settings</span>
                          </a>
                      </li>
                    <!-- Logout -->
                      <li class="nav-item has-sub">
                         <a href="Login.aspx" class="nav-link">
                            <i class="demo-pli-unlock fs-5 me-2"></i>
                            <span class="nav-label ms-1">Logout</span>
                         </a>
                      </li>
            
                   </ul>
                </div>
                <!-- End - Bottom navigation menu -->


            </div>
        </nav>
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <!-- END - MAIN NAVIGATION -->

      

        </div>
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <!-- END - PAGE CONTAINER -->


        <!-- SCROLL TO TOP BUTTON -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <div class="scroll-container">
            <a href="#root" class="scroll-page ratio ratio-1x1" aria-label="Scroll button"></a>
        </div>
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <!-- END - SCROLL TO TOP BUTTON -->



        <!-- JAVASCRIPTS -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


        <!-- Popper JS [ OPTIONAL ] -->
        <script src="./assets/vendors/popperjs/popper.min.js"></script>


        <!-- Bootstrap JS [ OPTIONAL ] -->
        <script src="./assets/vendors/bootstrap/bootstrap.min.js"></script>


        <!-- Nifty JS [ OPTIONAL ] -->
        <script src="./assets/js/nifty.js"></script>


        <!-- Nifty Settings [ DEMO ] -->
        <script src="./assets/js/demo-purpose-only.js"></script>


    </body>

    </html>

</panel>