<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="PostEdit.aspx.cs" Inherits="es.admin.PostEdit" %>

<!DOCTYPE html>
<html lang="en" data-bs-theme="light" data-scheme="navy">

<head>
   <meta http-equiv="content-type" content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
   <meta name="description" content="Write a new article or edit an article to improve it.">
   <title>Add Edit Posts | Nifty - Admin Template</title>


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
   <!-- Quill [ OPTIONAL ] -->
   <link rel="stylesheet" href="./assets/vendors/quill/quill.min.css">


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





               <h1 class="page-title mb-0 mt-2">Add Edit Posts</h1>

               <p class="lead">
                  Write a new article or edit an article to improve it.
               </p>
               <input class="form-control form-control-lg mb-4 rounded" type="text" placeholder="Enter title here" aria-label="Post title" value="These sweet mornings of spring">
            </div>

         </div>


         <div class="content__boxed">
            <div class="content__wrap">
               <div class="card">
                  <div class="d-md-flex gap-4">
                     <div class="flex-fill">

                        <!-- Quill TextEditor -->
                        <div class="ql-mh  h-100 d-flex flex-column">

                           <!-- Toolbar -->
                           <div id="_dm-quillAdvancedToolbar" class="mt-2 p-2">
                              <div class="d-sm-flex flex-wrap">
                                 <div class="d-flex flex-column mb-3">
                                    <div class="d-flex flex-column mb-2">

                                       <!-- Fonts selector -->
                                       <div class="d-flex">
                                          <span class="ql-formats">
                                             <select class="ql-font">
                                                <option selected=""></option>
                                                <option value="serif"></option>
                                                <option value="monospace"></option>
                                             </select>
                                          </span>
                                          <span class="ql-formats m-0">
                                             <select class="ql-size">
                                                <option value="small"></option>
                                                <option selected=""></option>
                                                <option value="large"></option>
                                                <option value="huge"></option>
                                             </select>
                                          </span>
                                       </div>
                                       <!-- END : Fonts selector -->

                                    </div>
                                    <div class="d-flex justify-content-between">

                                       <!-- Font decoration -->
                                       <span class="ql-formats d-flex">
                                          <button class="ql-bold"></button>
                                          <button class="ql-italic"></button>
                                          <button class="ql-underline"></button>
                                          <button class="ql-strike"></button>
                                       </span>


                                       <!-- Vertical alignment -->
                                       <span class="ql-formats d-flex">
                                          <button class="ql-script" value="super"></button>
                                          <button class="ql-script" value="sub"></button>
                                          <button class="ql-direction" value="rtl"></button>
                                       </span>

                                    </div>
                                 </div>
                                 <div class="d-none d-sm-block opacity-10 vr mx-2 mb-3"></div>
                                 <div class="d-sm-flex flex-column justify-content-between mb-3">


                                    <!-- List and indentation -->
                                    <span class="ql-formats d-sm-flex m-0 me-md-3">
                                       <button class="ql-list" value="ordered"></button>
                                       <button class="ql-list" value="bullet"></button>
                                       <button class="ql-indent" value="+1"></button>
                                       <button class="ql-indent" value="-1"></button>
                                    </span>

                                    <!-- Text alignment -->
                                    <span class="ql-formats d-sm-flex m-0 me-md-3">
                                       <button class="ql-align" value=""></button>
                                       <button class="ql-align" value="center"></button>
                                       <button class="ql-align" value="right"></button>
                                       <button class="ql-align" value="justify"></button>
                                    </span>


                                 </div>
                                 <div class="d-none d-sm-block opacity-10 vr mx-2 mb-3"></div>
                                 <div class="d-flex justify-content-between mt-3 mt-sm-0 pb-3">
                                    <div class="d-flex">

                                       <!-- Blockquote and code -->
                                       <span class="ql-formats m-0 d-flex">
                                          <button class="ql-blockquote"></button>
                                          <button class="ql-code-block"></button>
                                       </span>

                                       <div class="vr opacity-10 mx-2"></div>

                                       <!-- Attachment -->
                                       <span class="ql-formats d-flex">
                                          <button class="ql-link"></button>
                                          <button class="ql-image"></button>
                                          <button class="ql-video"></button>
                                       </span>

                                    </div>
                                    <div>

                                       <!-- Background and text colors -->
                                       <span class="ql-formats m-0">
                                          <select class="ql-color"></select>
                                          <select class="ql-background"></select>
                                       </span>


                                       <!-- Headers -->
                                       <span class="ql-formats me-1">
                                          <button class="ql-header" value="1"></button>
                                          <button class="ql-header" value="2"></button>
                                       </span>

                                       <!-- Clean -->
                                       <span class="ql-formats">
                                          <button class="ql-clean"></button>
                                       </span>

                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- END : Toolbar -->

                           <!-- Editor -->
                           <div id="_dm-quillAdvancedEditor" class="pb-5">
                              <h1>These sweet mornings of spring</h1>
                              <p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked.</p>
                              <br>
                              <p><strong><em>"What's happened to me?"</em></strong> he thought. It wasn't a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. <a href="#" class="btn-link">A collection of textile samples</a> lay spread out on the table.</p>
                              <br>
                              <p>Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! "Now fax quiz Jack!" my brave ghost pled. Five quacking zephyrs jolt my wax bed. Flummoxed by job, kvetching W. zaps Iraq. Cozy sphinx waves quart jug of bad milk. A very bad quack might jinx zippy fowls. Few quips galvanized the mock jury box. <span style="background-color: rgb(0, 71, 178); color: rgb(255, 255, 255);">Quick brown dogs jump over the lazy fox.</span></p>
                              <br><br>
                              <p><span class="ql-size-large" style="color: rgb(107, 36, 178);">Brick quiz</span> whangs jumpy veldt fox. Bright vixens jump; dozy fowl quack. Quick wafting zephyrs vex bold Jim. Quick zephyrs blow, vexing daft Jim.</p>

                           </div>
                           <!-- END : Editor -->

                        </div>
                        <!-- END : Quill TextEditor -->

                     </div>


                     <!-- Sidebar -->
                     <div class="w-md-250px d-flex flex-column flex-grow-0 flex-shrink-0 card-body ps-md-0">


                        <!-- Publish option -->
                        <div class="mb-3">
                           <div class="d-flex align-items-center justify-content-between mb-3">
                              <h5 class="m-0">Publish</h5>
                              <div class="dropdown">
                                 <button class="btn btn-icon btn-sm btn-hover btn-light" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="demo-pli-dot-horizontal fs-4"></i>
                                    <span class="visually-hidden">Toggle Dropdown</span>
                                 </button>
                                 <ul class="dropdown-menu dropdown-menu-end">
                                    <li>
                                       <a href="#" class="dropdown-item">
                                          <i class="demo-pli-pen-5 fs-5 me-2"></i> Edit
                                       </a>
                                    </li>
                                    <li>
                                       <a href="#" class="dropdown-item text-danger">
                                          <i class="demo-pli-recycling fs-5 me-2"></i> Remove
                                       </a>
                                    </li>
                                    <li>
                                       <hr class="dropdown-divider">
                                    </li>
                                    <li>
                                       <a href="#" class="dropdown-item">
                                          <i class="demo-pli-magnifi-glass fs-5 me-2"></i> Preview
                                       </a>
                                    </li>
                                    <li>
                                       <a href="#" class="dropdown-item">
                                          <i class="demo-pli-upload-to-cloud fs-5 me-2"></i> Publish
                                       </a>
                                    </li>
                                    <li>
                                       <a href="#" class="dropdown-item">
                                          <i class="demo-pli-lock-user fs-5 me-2"></i> Lock
                                       </a>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                           <ul class="list-group list-group-borderless mb-3">
                              <li class="list-group-item d-flex justify-content-between align-items-start px-0">
                                 <div class="me-auto">
                                    <i class="demo-pli-information fs-5 me-2"></i>Status
                                 </div>
                                 <a href="#" class="h6 btn-link text-decoration-underline">Draft</a>
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-start px-0">
                                 <div class="me-auto">
                                    <i class="demo-pli-male fs-5 me-2"></i>Visibility
                                 </div>
                                 <a href="#" class="h6 btn-link text-decoration-underline">Public</a>
                              </li>
                              <li class="list-group-item d-flex justify-content-between align-items-start px-0">
                                 <div class="me-auto">
                                    <i class="demo-pli-calendar-4 fs-5 me-2"></i>Puslish
                                 </div>
                                 <a href="#" class="h6 btn-link text-decoration-underline">Immediately</a>
                              </li>
                           </ul>
                        </div>
                        <!-- END : Publish option -->


                        <!-- Categories -->
                        <div class="mb-3">
                           <div class="d-flex align-items-center justify-content-between mb-3">
                              <h5 class="m-0">Categories</h5>
                              <a href="#" type="button" class="btn btn-icon btn-primary btn-sm">+</a>
                           </div>
                           <div class="form-check mb-3">
                              <input id="_dm-sportCategory" class="form-check-input" type="checkbox">
                              <label for="_dm-sportCategory" class="form-check-label">
                                 Sport
                              </label>
                           </div>
                           <div class="form-check mb-3">
                              <input id="_dm-moviesCategory" class="form-check-input" type="checkbox">
                              <label for="_dm-moviesCategory" class="form-check-label">
                                 Movies
                              </label>
                           </div>
                           <div class="form-check mb-3">
                              <input id="_dm-musicCategory" class="form-check-input" type="checkbox">
                              <label for="_dm-musicCategory" class="form-check-label">
                                 Music
                              </label>
                           </div>
                           <div class="form-check mb-3">
                              <input id="_dm-internetCategory" class="form-check-input" type="checkbox" checked>
                              <label for="_dm-internetCategory" class="form-check-label">
                                 Internet
                              </label>
                           </div>
                        </div>
                        <!-- END : Categories -->


                        <!-- Footer -->
                        <hr class="mb-4">
                        <div class="d-flex align-items-center justify-content-end gap-2 mb-3 mt-auto">
                           <button type="button" class="btn btn-secondary btn-sm">Preview</button>
                           <button type="button" class="btn btn-secondary btn-sm">Draft</button>
                        </div>
                        <div class="d-grid">
                           <button type="button" class="btn btn-primary btn-lg text-nowrap">Save &amp; Publish</button>
                        </div>
                        <!-- END : Footer -->


                     </div>
                     <!-- END : Sidebar -->

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


   <!-- Quill [ OPTIONAL ] -->
   <script src="./assets/vendors/quill/quill.min.js"></script>


   <!-- Initialize [ SAMPLE ] -->
   <script src="./assets/pages/blog-add-edit-post.js"></script>


</body>

</html>

