<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="PostManagement.aspx.cs" Inherits="es.admin.PostManagement" %>

<!DOCTYPE html>
<html lang="en" data-bs-theme="light" data-scheme="navy">

        <head>
           <meta http-equiv="content-type" content="text/html; charset=UTF-8">
           <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
           <meta name="description" content="Edit, publish, and remove post page layout">
           <title>Manage Posts | Nifty - Admin Template</title>


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


                       <!-- Breadcrumb -->
                       <nav aria-label="breadcrumb">
                          <ol class="breadcrumb">
                             <li class="breadcrumb-item"><a href="./index.html">Home</a></li>
                             <li class="breadcrumb-item"><a href="./blog-apps.html">Blog Apps</a></li>
                             <li class="breadcrumb-item active" aria-current="page">Manage Posts</li>
                          </ol>
                       </nav>
                       <!-- END : Breadcrumb -->


                       <!-- Title and information -->
                       <h1 class="page-title d-flex flex-wrap just justify-content-center mb-2 mt-4">Manage posts</h1>
                       <p class="text-center lead mb-5">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Optio, <br> esse corporis ipsam fuga ratione cum quisquam voluptas dolores ullam eius.</p>
                       <!-- END : Title and information -->


                       <!-- Search form -->
                       <div class="col-md-8 offset-md-2 mb-3">
                          <form class="searchbox input-group">
                             <input class="searchbox__input form-control form-control-lg" type="search" placeholder="Search posts. . ." aria-label="Search">
                             <div class="searchbox__btn-group">
                                <button class="searchbox__btn btn btn-icon bg-transparent shadow-none border-0 btn-sm" type="submit">
                                   <i class="demo-pli-magnifi-glass"></i>
                                </button>
                             </div>
                          </form>
                       </div>
                       <!-- END : Search form -->


                       <!-- Sort and categories filter -->
                       <div class="d-flex flex-wrap align-items-end justify-content-center gap-2 mb-3 pb-3">
                          <div class="d-md-flex flex-wrap align-items-center gap-2 mb-3 mb-sm-0">
                             <div class="text-center mb-2 mb-md-0">Only in category</div>
                             <select class="form-select w-auto" aria-label="Categories">
                                <option value="none" selected="">-Select category-</option>
                                <option value="musics">Musics</option>
                                <option value="photos">Photos</option>
                                <option value="internet">Internet</option>
                                <option value="sports">Sports</option>
                             </select>
                          </div>


                          <div class="d-md-flex flex-wrap align-items-center gap-2 mb-3 mb-sm-0">
                             <div class="text-center mb-2 mb-md-0">Sort by</div>
                             <select class="form-select w-auto" aria-label="Sort options">
                                <option value="date-created" selected="">Date Created</option>
                                <option value="date-modified">Date Modified</option>
                                <option value="frequency-used">Frequency Used</option>
                                <option value="alpabetically">Alpabetically</option>
                                <option value="alpabetically-reversed">Alpabetically Reversed</option>
                             </select>
                          </div>

                          <button class="btn btn-light mb-3 mb-sm-0">Filter</button>
                       </div>
                       <!-- END : Sort and categories filter -->
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
                                         <th>Post Title</th>
                                         <th class="text-nowrap">Creation Date</th>
                                         <th>Categories</th>
                                         <th>Post by</th>
                                         <th class="text-center">Status</th>
                                         <th class="text-center">Actions</th>
                                      </tr>
                                   </thead>
                                   <tbody>
                                      <tr>
                                         <td><img class="img-sm rounded" src="./assets/img/megamenu/img-1.jpg" alt="thumbs"></td>
                                         <td><a class="btn-link text-body-emphasis text-decoration-underline text-truncate mb-0" href="#">Lorem ipsum dolor sit amet</a></td>
                                         <td><span class="text-nowrap text-body-secondary">May 22, 2024</span></td>
                                         <td>Internet</td>
                                         <td><a href="#" class="btn-link text-nowrap">Betty Murphy</a></td>
                                         <td class="h5">
                                            <div class="d-block badge bg-success">Published</div>
                                         </td>
                                         <td>
                                            <div class="text-nowrap text-center">
                                               <a href="#" class="btn btn-icon btn-sm btn-hover bg-body-tertiary"><i class="demo-pli-gear fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-primary"><i class="demo-pli-pen-5 fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-danger"><i class="demo-pli-trash fs-5"></i></a>
                                            </div>
                                         </td>
                                      </tr>
                                      <tr>
                                         <td><img class="img-sm rounded" src="./assets/img/megamenu/img-3.jpg" alt="thumbs"></td>
                                         <td><a class="btn-link text-body-emphasis text-decoration-underline text-truncate mb-0" href="#">The copy warned the Little Blind Text</a></td>
                                         <td><span class="text-nowrap text-body-secondary">May 24, 2024</span></td>
                                         <td>Movies</td>
                                         <td><a href="#" class="btn-link text-nowrap">Jack George</a></td>
                                         <td class="h5">
                                            <div class="d-block badge bg-success">Published</div>
                                         </td>
                                         <td>
                                            <div class="text-nowrap text-center">
                                               <a href="#" class="btn btn-icon btn-sm btn-hover bg-body-tertiary"><i class="demo-pli-gear fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-primary"><i class="demo-pli-pen-5 fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-danger"><i class="demo-pli-trash fs-5"></i></a>
                                            </div>
                                         </td>
                                      </tr>
                                      <tr>
                                         <td><img class="img-sm rounded" src="./assets/img/megamenu/img-2.jpg" alt="thumbs"></td>
                                         <td><a class="btn-link text-body-emphasis text-decoration-underline text-truncate mb-0" href="#">I should be incapable of drawing a single stroke</a></td>
                                         <td><span class="text-nowrap text-body-secondary">May 24, 2024</span></td>
                                         <td>Sports</td>
                                         <td><a href="#" class="btn-link text-nowrap">Lucy Doe</a></td>
                                         <td class="h5">
                                            <div class="d-block badge bg-light text-dark">Unpublish</div>
                                         </td>
                                         <td>
                                            <div class="text-nowrap text-center">
                                               <a href="#" class="btn btn-icon btn-sm btn-hover bg-body-tertiary"><i class="demo-pli-gear fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-primary"><i class="demo-pli-pen-5 fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-danger"><i class="demo-pli-trash fs-5"></i></a>
                                            </div>
                                         </td>
                                      </tr>
                                      <tr>
                                         <td><img class="img-sm rounded" src="./assets/img/megamenu/img-4.jpg" alt="thumbs"></td>
                                         <td><a class="btn-link text-body-emphasis text-decoration-underline text-truncate mb-0" href="#">Drops of rain could be heard hitting the pane</a></td>
                                         <td><span class="text-nowrap text-body-secondary">May 15, 2024</span></td>
                                         <td>Entertainment</td>
                                         <td><a href="#" class="btn-link text-nowrap">Teresa L. Doe</a></td>
                                         <td class="h5">
                                            <div class="d-block badge bg-light text-dark">Unpublish</div>
                                         </td>
                                         <td>
                                            <div class="text-nowrap text-center">
                                               <a href="#" class="btn btn-icon btn-sm btn-hover bg-body-tertiary"><i class="demo-pli-gear fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-primary"><i class="demo-pli-pen-5 fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-danger"><i class="demo-pli-trash fs-5"></i></a>
                                            </div>
                                         </td>
                                      </tr>
                                      <tr>
                                         <td><img class="img-sm rounded" src="./assets/img/megamenu/img-6.jpg" alt="thumbs"></td>
                                         <td><a class="btn-link text-body-emphasis text-decoration-underline text-truncate mb-0" href="#">How quickly daft jumping zebras</a></td>
                                         <td><span class="text-nowrap text-body-secondary">May 12, 2024</span></td>
                                         <td>Tutorial</td>
                                         <td><a href="#" class="btn-link text-nowrap">Teresa L. Doe</a></td>
                                         <td class="h5">
                                            <div class="d-block badge bg-success">Published</div>
                                         </td>
                                         <td>
                                            <div class="text-nowrap text-center">
                                               <a href="#" class="btn btn-icon btn-sm btn-hover bg-body-tertiary"><i class="demo-pli-gear fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-primary"><i class="demo-pli-pen-5 fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-danger"><i class="demo-pli-trash fs-5"></i></a>
                                            </div>
                                         </td>
                                      </tr>
                                      <tr>
                                         <td><img class="img-sm rounded" src="./assets/img/megamenu/img-2.jpg" alt="thumbs"></td>
                                         <td><a class="btn-link text-body-emphasis text-decoration-underline text-truncate mb-0" href="#">I should be incapable of drawing a single stroke</a></td>
                                         <td><span class="text-nowrap text-body-secondary">May 24, 2024</span></td>
                                         <td>Sports</td>
                                         <td><a href="#" class="btn-link text-nowrap">Lucy Doe</a></td>
                                         <td class="h5">
                                            <div class="d-block badge bg-light text-dark">Unpublish</div>
                                         </td>
                                         <td>
                                            <div class="text-nowrap text-center">
                                               <a href="#" class="btn btn-icon btn-sm btn-hover bg-body-tertiary"><i class="demo-pli-gear fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-primary"><i class="demo-pli-pen-5 fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-danger"><i class="demo-pli-trash fs-5"></i></a>
                                            </div>
                                         </td>
                                      </tr>
                                      <tr>
                                         <td><img class="img-sm rounded" src="./assets/img/megamenu/img-5.jpg" alt="thumbs"></td>
                                         <td><a class="btn-link text-body-emphasis text-decoration-underline text-truncate mb-0" href="#">The copy warned the Little Blind Text</a></td>
                                         <td><span class="text-nowrap text-body-secondary">May 24, 2024</span></td>
                                         <td>Movies</td>
                                         <td><a href="#" class="btn-link text-nowrap">Jack George</a></td>
                                         <td class="h5">
                                            <div class="d-block badge bg-success">Published</div>
                                         </td>
                                         <td>
                                            <div class="text-nowrap text-center">
                                               <a href="#" class="btn btn-icon btn-sm btn-hover bg-body-tertiary"><i class="demo-pli-gear fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-primary"><i class="demo-pli-pen-5 fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-danger"><i class="demo-pli-trash fs-5"></i></a>
                                            </div>
                                         </td>
                                      </tr>
                                      <tr>
                                         <td><img class="img-sm rounded" src="./assets/img/megamenu/img-1.jpg" alt="thumbs"></td>
                                         <td><a class="btn-link text-body-emphasis text-decoration-underline text-truncate mb-0" href="#">I should be incapable of drawing a single stroke</a></td>
                                         <td><span class="text-nowrap text-body-secondary">May 24, 2024</span></td>
                                         <td>Sports</td>
                                         <td><a href="#" class="btn-link text-nowrap">Lucy Doe</a></td>
                                         <td class="h5">
                                            <div class="d-block badge bg-light text-dark">Unpublish</div>
                                         </td>
                                         <td>
                                            <div class="text-nowrap text-center">
                                               <a href="#" class="btn btn-icon btn-sm btn-hover bg-body-tertiary"><i class="demo-pli-gear fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-primary"><i class="demo-pli-pen-5 fs-5"></i></a>
                                               <a href="#" class="btn btn-icon btn-sm btn-hover btn-danger"><i class="demo-pli-trash fs-5"></i></a>
                                            </div>
                                         </td>
                                      </tr>
                                   </tbody>
                                </table>
                             </div>
                             <!-- END : Blog post lists -->


                             <div class="mt-4 d-flex justify-content-center">

                                <!-- Pagination - Disabled and active states -->
                                <nav aria-label="Page navigation">
                                   <ul class="pagination">
                                      <li class="page-item disabled">
                                         <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                      </li>
                                      <li class="page-item"><a class="page-link" href="#">1</a></li>
                                      <li class="page-item active" aria-current="page">
                                         <a class="page-link" href="#">2</a>
                                      </li>
                                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                                      <li class="page-item"><a class="page-link" href="#">4</a></li>
                                      <li class="page-item"><a class="page-link" href="#">5</a></li>
                                      <li class="page-item">
                                         <a class="page-link" href="#">Next</a>
                                      </li>
                                   </ul>
                                </nav>
                                <!-- END : Pagination - Disabled and active states -->

                             </div>


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
                    <a href="index.html" class="brand-img stretched-link">
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
                        <div class="mininav-toggle text-center py-2">
                           <img class="mainnav__avatar img-md rounded-circle hv-oc" src="./assets/img/profile-photos/1.png" alt="Profile Picture">
                        </div>


                        <div class="mininav-content collapse d-mn-max">
                           <span data-popper-arrow class="arrow"></span>
                           <div class="d-grid">

                              <!-- User name and position -->
                              <button class="mainnav-widget-toggle d-block btn border-0 p-2" data-bs-toggle="collapse" data-bs-target="#usernav" aria-expanded="false" aria-controls="usernav">
                                 <span class="dropdown-toggle d-flex justify-content-center align-items-center">
                                    <h5 class="mb-0 me-3">Aaron Chavez</h5>
                                 </span>
                                 <small class="text-body-secondary">Administrator</small>
                              </button>


                              <!-- Collapsed user menu -->
                              <div id="usernav" class="nav flex-column collapse">
                 
                 
                                 <a href="#" class="nav-link">
                                    <i class="demo-pli-gear fs-5 me-2"></i>
                                    <span class="ms-1">Settings</span>
                                 </a>
                 
                                 <a href="#" class="nav-link">
                                    <i class="demo-pli-unlock fs-5 me-2"></i>
                                    <span class="ms-1">Logout</span>
                                 </a>
                              </div>


                           </div>
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
                        <li class="nav-item has-sub">
                           <a href="#" class="nav-link mininav-toggle collapsed" aria-expanded="false">
                              <i class="demo-pli-unlock fs-5 me-2"></i>
                              <span class="nav-label ms-1">Logout</span>
                           </a>
                           <ul class="mininav-content nav flex-column collapse">
                              <li data-popper-arrow class="arrow"></li>
                              <li class="nav-item">
                                 <a href="#" class="nav-link">This device only</a>
                              </li>
                              <li class="nav-item">
                                 <a href="#" class="nav-link">All Devices</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Lock screen</a>
                              </li>
                           </ul>
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


           <!-- BOXED LAYOUT : BACKGROUND IMAGES CONTENT [ DEMO ] -->
           <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
           <div id="_dm-boxedBgContent" class="_dm-boxbg offcanvas offcanvas-bottom" data-bs-scroll="true" tabindex="-1">
              <div class="offcanvas-body px-4">

                 <!-- Content Header -->
                 <div class="offcanvas-header border-bottom p-0 pb-3">
                    <div>
                       <h4 class="offcanvas-title">Background Images</h4>
                       <span class="text-body-secondary">Add an image to replace the solid background color</span>
                    </div>
                    <button type="button" class="btn-close btn-lg text-reset shadow-none" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                 </div>
                 <!-- End - Content header -->


                 <!-- Collection Of Images -->
                 <div id="_dm-boxedBgContainer" class="row mt-3">

                    <!-- Blurred Background Images -->
                    <div class="col-lg-4">
                       <h5 class="mb-2">Blurred</h5>
                       <div class="_dm-boxbg__img-container d-flex flex-wrap">
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/1.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/2.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/3.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/4.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/5.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/6.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/7.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/8.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/9.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/10.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/11.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/12.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/13.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/14.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/15.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/blurred/thumbs/16.jpg" alt="Background Image" loading="lazy">
                          </a>
                       </div>
                    </div>
                    <!-- End - Blurred Background Images -->


                    <!-- Polygon Background Images -->
                    <div class="col-lg-4">
                       <h5 class="mb-2">Polygon &amp; Geometric</h5>
                       <div class="_dm-boxbg__img-container d-flex flex-wrap mb-4">
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/1.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/2.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/3.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/4.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/5.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/6.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/7.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/8.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/9.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/10.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/11.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/12.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/13.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/14.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/15.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/polygon/thumbs/16.jpg" alt="Background Image" loading="lazy">
                          </a>
                       </div>
                    </div>
                    <!-- End - Polygon Background Images -->


                    <!-- Abstract Background Images -->
                    <div class="col-lg-4">
                       <h5 class="mb-2">Abstract</h5>
                       <div class="_dm-boxbg__img-container d-flex flex-wrap">
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/1.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/2.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/3.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/4.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/5.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/6.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/7.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/8.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/9.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/10.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/11.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/12.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/13.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/14.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/15.jpg" alt="Background Image" loading="lazy">
                          </a>
                          <a href="#" class="_dm-boxbg__thumb ratio ratio-16x9">
                             <img class="img-responsive" src="./assets/premium/boxed-bg/abstract/thumbs/16.jpg" alt="Background Image" loading="lazy">
                          </a>
                       </div>
                    </div>
                    <!-- End - Abstract Background Images -->


                 </div>
                 <!-- End - Collection Of Images -->


              </div>
           </div>
           <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
           <!-- END - BOXED LAYOUT : BACKGROUND IMAGES CONTENT [ DEMO ] -->


           <!-- SETTINGS CONTAINER [ DEMO ] -->
           <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
   
           <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
           <!-- END - SETTINGS CONTAINER [ DEMO ] -->


           <!-- OFFCANVAS [ DEMO ] -->
           <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
           <div id="_dm-offcanvas" class="offcanvas" tabindex="-1">

              <!-- Offcanvas header -->
              <div class="offcanvas-header">
                 <h5 class="offcanvas-title">Offcanvas Header</h5>
                 <button type="button" class="btn-close btn-lg text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
              </div>

              <!-- Offcanvas content -->
              <div class="offcanvas-body">
                 <h5>Content Here</h5>
                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente eos nihil earum aliquam quod in dolor, aspernatur obcaecati et at. Dicta, ipsum aut, fugit nam dolore porro non est totam sapiente animi recusandae obcaecati dolorum, rem ullam cumque. Illum quidem reiciendis autem neque excepturi odit est accusantium, facilis provident molestias, dicta obcaecati itaque ducimus fuga iure in distinctio voluptate nesciunt dignissimos rem error a. Expedita officiis nam dolore dolores ea. Soluta repellendus delectus culpa quo. Ea tenetur impedit error quod exercitationem ut ad provident quisquam omnis! Nostrum quasi ex delectus vero, facilis aut recusandae deleniti beatae. Qui velit commodi inventore.</p>
              </div>

           </div>
           <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
           <!-- END - OFFCANVAS [ DEMO ] -->


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
