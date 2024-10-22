<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="es.admin._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
    <html lang="en" data-bs-theme="light" data-scheme="ocean">

<head>
   <meta http-equiv="content-type" content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
   <meta name="description" content="Dashboard page with OffCanvas navigation.">
   <title>Dashboard 3 | Nifty - Admin Template</title>


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

<body class="out-quart centered-layout">


   <!-- PAGE CONTAINER -->
   <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
   <div id="root" class="root mn--slide tm--expanded-hd">

      <!-- CONTENTS -->
      <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
      <section id="content" class="content">
         <div class="content__header content__boxed rounded-0">
            <div class="content__wrap">


               <!-- Page title and information -->
               <div class="text-center">
                  <h1 class="page-title mb-3 mt-4">Dashboard</h1>
                  <p class="lead mb-0">Hi <a href="#" class="fw-semibold btn-link text-decoration-underline">Aaron Chavez</a>! Welcome back to the Dashboard.</p>
                  <p>Check out your past searches and the content you’ve browsed in. <a href="#" class="btn-link">View last results</a></p>
               </div>
               <!-- END : Page title and information -->

               <div class="py-4 my-5">


                  <!-- Line Chart -->
                  <div style="height: 300px">
                     <canvas id="_dm-lineChart"></canvas>
                  </div>
                  <!-- END : Line Chart -->


               </div>

               <div class="row mb-4">
                  <div class="col-md-7">


                     <!-- Statistic list -->
                     <h3>Statistics</h3>
                     <ol class="list-group list-group-borderless mb-4">
                        <li class="list-group-item text-body-emphasis d-flex justify-content-between align-items-start px-0">
                           <div class="me-auto">
                              <div class="text-reset fs-5 fw-semibold">Completed Projects</div>
                              <small class="text-reset opacity-50">Lorem ipsum dolor sit.</small>
                           </div>
                           <span class="badge bg-warning rounded-pill">14</span>
                        </li>
                        <li class="list-group-item text-body-emphasis d-flex justify-content-between align-items-start px-0">
                           <div class="me-auto">
                              <div class="text-reset fs-5 fw-semibold">Completed Tasks</div>
                              <small class="text-reset opacity-50">Curabitur ligula sapien, tincidunt non.</small>
                           </div>
                           <span class="badge bg-danger rounded-pill">98</span>
                        </li>
                        <li class="list-group-item text-body-emphasis d-flex justify-content-between align-items-start px-0">
                           <div class="me-auto">
                              <div class="text-reset fs-5 fw-semibold">Resource usage</div>
                              <small class="text-reset opacity-50">Consectetuer adipiscing elit.</small>
                           </div>
                           <span class="badge bg-info rounded-pill">25%</span>
                        </li>
                        <li class="list-group-item text-body-emphasis d-flex justify-content-between align-items-start px-0">
                           <div class="me-auto">
                              <div class="text-reset fs-5 fw-semibold">Earning</div>
                              <small class="text-reset opacity-50">Aenean commodo ligula eget dolor.</small>
                           </div>
                           <span class="badge bg-success rounded-pill">$ 4,900</span>
                        </li>
                     </ol>
                     <!-- END : Statistic list -->


                  </div>
                  <div class="col-md-5">


                     <!-- Doughnut Chart -->
                     <div class="pt-4" style="height: 250px">
                        <canvas id="_dm-doughnutChart"></canvas>
                     </div>
                     <!-- END : Doughnut Chart -->

                  </div>
               </div>


            </div>

         </div>


         <div class="bg-body-tertiary bg-opacity-20">

            <div class="content__boxed">
               <div class="content__wrap">


                  <!-- Infographics -->
                  <div class="row my-3 justify-content-center">
                     <div class="col-md-4 col-lg-3">
                        <div class="card text-center mb-3 mb-md-0">
                           <div class="card-body">

                              <div class="h1 my-4"><i class="demo-psi-data-settings display-3 text-body-emphasis opacity-20"></i></div>
                              <p class="h4">Storage</p>
                              <p class="text-body-emphasis fw-semibold">32TB Total storage</p>
                              <small class="d-block text-body-secondary my-3">The Big Oxmox advised her not to do so, because there were thousands of bad.</small>
                              <button class="btn btn-success mar-ver">Get it now</button>


                           </div>
                        </div>

                     </div>
                     <div class="col-md-4 col-lg-3">
                        <div class="card text-center mb-3 mb-md-0">
                           <div class="card-body">

                              <div class="h1 my-4"><i class="demo-psi-computer-secure display-3 text-body-emphasis opacity-20"></i></div>
                              <p class="h4">Secured</p>
                              <p class="text-body-emphasis fw-semibold">Latest Technology</p>
                              <small class="d-block text-body-secondary my-3">The Big Oxmox advised her not to do so, because there were thousands of bad.</small>
                              <button class="btn btn-info mar-ver">View Reports</button>


                           </div>
                        </div>

                     </div>
                     <div class="col-md-4 col-lg-3">
                        <div class="card text-center">
                           <div class="card-body">

                              <div class="h1 my-4"><i class="demo-psi-consulting display-3 text-body-emphasis opacity-20"></i></div>
                              <p class="h4">Support</p>
                              <p class="text-body-emphasis fw-semibold">We are here 24/7</p>
                              <small class="d-block text-body-secondary my-3">The Big Oxmox advised her not to do so, because there were thousands of bad.</small>
                              <button class="btn btn-danger mar-ver">Contact Us</button>


                           </div>
                        </div>

                     </div>
                  </div>
                  <!-- END : Infographics -->


               </div>
            </div>


         </div>


         <div class="content__boxed pt-4">
            <div class="content__wrap">

               <!-- Tiles -->
               <div class="row">
                  <div class="col-sm-6 col-lg-3">


                     <!-- Stat widget -->
                     <div class="card bg-cyan text-white mb-3 mb-xl-3 hv-grow">
                        <div class="card-body py-3 d-flex align-items-stretch">
                           <div class="d-flex align-items-center justify-content-center flex-shrink-0 rounded-start">
                              <i class="demo-psi-file-word fs-1"></i>
                           </div>
                           <div class="flex-grow-1 ms-3">
                              <h5 class="h2 mb-0">241</h5>
                              <p class="mb-0">Documents</p>
                           </div>
                        </div>
                     </div>
                     <!-- END : Stat widget -->


                  </div>
                  <div class="col-sm-6 col-lg-3">


                     <!-- Stat widget -->
                     <div class="card bg-purple text-white mb-3 mb-xl-3 hv-grow">
                        <div class="card-body py-3 d-flex align-items-stretch">
                           <div class="d-flex align-items-center justify-content-center flex-shrink-0 rounded-start">
                              <i class="demo-psi-file-zip fs-1"></i>
                           </div>
                           <div class="flex-grow-1 ms-3">
                              <h5 class="h2 mb-0">184</h5>
                              <p class="mb-0">Compressed files</p>
                           </div>
                        </div>
                     </div>
                     <!-- END : Stat widget -->


                  </div>
                  <div class="col-sm-6 col-lg-3">


                     <!-- Stat widget -->
                     <div class="card bg-orange text-white mb-3 mb-xl-3 hv-grow">
                        <div class="card-body py-3 d-flex align-items-stretch">
                           <div class="d-flex align-items-center justify-content-center flex-shrink-0 rounded-start">
                              <i class="demo-psi-camera-2 fs-1"></i>
                           </div>
                           <div class="flex-grow-1 ms-3">
                              <h5 class="h2 mb-0">859</h5>
                              <p class="mb-0">Photos</p>
                           </div>
                        </div>
                     </div>
                     <!-- END : Stat widget -->


                  </div>
                  <div class="col-sm-6 col-lg-3">


                     <!-- Stat widget -->
                     <div class="card bg-pink text-white mb-3 mb-xl-3 hv-grow">
                        <div class="card-body py-3 d-flex align-items-stretch">
                           <div class="d-flex align-items-center justify-content-center flex-shrink-0 rounded-start">
                              <i class="demo-psi-video fs-1"></i>
                           </div>
                           <div class="flex-grow-1 ms-3">
                              <h5 class="h2 mb-0">785</h5>
                              <p class="mb-0">Compressed files</p>
                           </div>
                        </div>
                     </div>
                     <!-- END : Stat widget -->


                  </div>
               </div>
               <!-- END : Tiles -->


               <div class="row">
                  <div class="col-md-6 mb-3">


                     <!-- News Feed -->
                     <div class="card h-100">
                        <div class="card-header">
                           <h5 class="card-title mb-0">News Feed</h5>
                        </div>
                        <div class="card-body p-0 overflow-scroll scrollable-content" style="height: 350px;">

                           <div class="card-body">
                              <h5>Uniform gramma</h5>
                              <p>To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.</p>
                              <div class="mt-4 pt-3 border-top d-flex align-items-center gap-2">
                                 <div class="badge bg-info">Feature Request</div>
                                 <div class="badge bg-danger">Bug</div>
                              </div>
                           </div>

                           <div class="card-body bg-body-tertiary bg-opacity-50">
                              <h5>River</h5>
                              <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                              <div class="mt-2 pt-2 border-top d-flex align-items-center">
                                 <div class="d-flex gap-1">
                                    <a href="#" class="btn btn-hover btn-primary px-2 py-1">
                                       <i class="demo-pli-heart-2 fs-5 me-2"></i>87
                                    </a>
                                    <a href="#" class="btn btn-hover btn-primary px-2 py-1">
                                       <i class="demo-pli-speech-bubble-4 fs-5 me-2"></i>107
                                    </a>
                                 </div>
                                 <small class="text-body-secondary ms-auto">9:25AM</small>
                              </div>
                           </div>

                           <img class="img-fluid" src="./assets/img/sample-img/img-3.jpg" alt="sunrice" loading="lazy">
                           <div class="card-body">
                              <h5>Just me</h5>
                              <p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure.</p>
                              <div class="mt-2 pt-2 border-top d-flex align-items-center">
                                 <a href="#" class="btn btn-hover btn-primary px-2 py-1">
                                    <i class="demo-pli-heart-2 fs-5 me-2"></i>37k
                                 </a>
                                 <small class="text-body-secondary ms-auto">06:13PM</small>
                              </div>
                           </div>

                           <div class="card-body bg-body-tertiary bg-opacity-50">
                              <h5>Languages</h5>
                              <p>The European languages are members of the same family. Their separate existence is a myth.</p>
                              <div class="mt-2 pt-3 border-top d-flex align-items-center">
                                 <div class="position-relative hv-outline-parent">
                                    <img class="hv-oc img-xs rounded-circle me-2" src="./assets/img/profile-photos/1.png" alt="task-user">
                                    <a href="#" class="fw-semibold stretched-link btn-link text-decoration-underline">Aaron Chavez</a>
                                 </div>
                                 <small class="text-body-secondary ms-auto">10:45AM</small>
                              </div>
                           </div>

                        </div>
                     </div>
                     <!-- END : News Feed -->


                  </div>
                  <div class="col-md-6 mb-3">


                     <!-- Top Users table -->
                     <div class="card">
                        <div class="card-body">
                           <h5 class="card-title">Top Users</h5>
                           <div class="table-responsive">
                              <table class="table table-striped">
                                 <thead>
                                    <tr>
                                       <th class="text-center">#</th>
                                       <th>User</th>
                                       <th>Order date</th>
                                       <th class="text-center">Plan</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td class="text-center">34521</td>
                                       <td><a href="#" class="btn-link">Scott S. Calabrese</a></td>
                                       <td><span class="text-body-secondary">May 10, 2024</span></td>
                                       <td><span class="d-block badge bg-purple">Bussines</span></td>
                                    </tr>
                                    <tr>
                                       <td class="text-center">23422</td>
                                       <td><a href="#" class="btn-link">Teresa L. Doe</a></td>
                                       <td><span class="text-body-secondary">May 22, 2024</span></td>
                                       <td><span class="d-block badge bg-info">Personal</span></td>
                                    </tr>
                                    <tr>
                                       <td class="text-center">73455</td>
                                       <td><a href="#" class="btn-link">Steve N. Horton</a></td>
                                       <td><span class="text-body-secondary">May 22, 2024</span></td>
                                       <td><span class="d-block badge bg-warning">Trial</span></td>
                                    </tr>
                                    <tr>
                                       <td class="text-center">34523</td>
                                       <td><a href="#" class="btn-link">Charles S Boyle</a></td>
                                       <td><span class="text-body-secondary">Jun 03, 2024</span></td>
                                       <td><span class="d-block badge bg-purple">Bussines</span></td>
                                    </tr>
                                    <tr>
                                       <td class="text-center">74634</td>
                                       <td><a href="#" class="btn-link">Lucy Doe</a></td>
                                       <td><span class="text-body-secondary">Jun 05, 2024</span></td>
                                       <td><span class="d-block badge bg-success">Special</span></td>
                                    </tr>
                                    <tr>
                                       <td class="text-center">23423</td>
                                       <td><a href="#" class="btn-link">Michael Bunr</a></td>
                                       <td><span class="text-body-secondary">Jun 07, 2024</span></td>
                                       <td><span class="d-block badge bg-info">Personal</span></td>
                                    </tr>
                                    <tr>
                                       <td class="text-center">23422</td>
                                       <td><a href="#" class="btn-link">Teresa L. Doe</a></td>
                                       <td><span class="text-body-secondary">Jun 10, 2024</span></td>
                                       <td><span class="d-block badge bg-info">Personal</span></td>
                                    </tr>
                                    <tr>
                                       <td class="text-center">73455</td>
                                       <td><a href="#" class="btn-link">Steve N. Horton</a></td>
                                       <td><span class="text-body-secondary">Jun 10, 2024</span></td>
                                       <td><span class="d-block badge bg-danger">VIP</span></td>
                                    </tr>
                                    <tr>
                                       <td class="text-center">34521</td>
                                       <td><a href="#" class="btn-link">Scott S. Calabrese</a></td>
                                       <td><span class="text-body-secondary">Jun 11, 2024</span></td>
                                       <td><span class="d-block badge bg-purple">Bussines</span></td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>

                        </div>
                     </div>

                     <!-- END : Top Users table -->


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


              <!-- Navigation Category -->
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
                                     <a href="./Post_Managment.aspx" class="nav-link mininav-toggle"><i class="demo-pli-receipt-4 fs-5 me-2"></i>
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
                                     <a href="./Edit_Posts.aspx" class="nav-link mininav-toggle"><i class="demo-pli-pen-5 fs-5 me-2"></i>
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
                                   <a href="./Video_Posts.aspx" class="nav-link mininav-toggle"><i class="demo-pli-computer-secure fs-5 me-2"></i>
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


   <!-- Chart JS Scripts [ OPTIONAL ] -->
   <script src="./assets/vendors/chart.js/chart.umd.min.js"></script>


   <!-- Initialize [ SAMPLE ] -->
   <script src="./assets/pages/dashboard-3.js"></script>


</body>

</html>

</asp:Content>
