<!DOCTYPE html>
<html lang="en" data-bs-theme="light" data-scheme="navy">

<head>
   <meta http-equiv="content-type" content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
   <meta name="description" content="Nifty is a responsive admin dashboard template based on Bootstrap 5 framework. There are a lot of useful components.">
   <title>Dashboard 1 | Nifty - Admin Template</title>


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


               <!-- Page title and information -->
               <h1 class="page-title mb-2">Dashboard</h1>
               <h2 class="h5">Welcome back to the Dashboard.</h2>
               <p>Scroll down to see quick links and overviews of your Server, To do list<br> Order status or get some Help using Nifty.</p>
               <!-- END : Page title and information -->

            </div>

         </div>


         <div class="content__boxed">
            <div class="content__wrap">
               <div class="row">
                  <div class="col-xl-7 mb-3 mb-xl-0">

                     <div class="card h-100">
                        <div class="card-header d-flex align-items-center border-0">
                           <div class="me-auto">
                              <h3 class="h4 m-0">Network</h3>
                           </div>
                           <div class="toolbar-end">
                              <button type="button" class="btn btn-icon btn-sm btn-hover btn-light" aria-label="Refresh Network Chart">
                                 <i class="demo-pli-repeat-2 fs-5"></i>
                              </button>
                              <div class="dropdown">
                                 <button class="btn btn-icon btn-sm btn-hover btn-light" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Network dropdown">
                                    <i class="demo-pli-dot-horizontal fs-4"></i>
                                    <span class="visually-hidden">Toggle Dropdown</span>
                                 </button>
                                 <ul class="dropdown-menu dropdown-menu-end">
                                    <li>
                                       <a href="#" class="dropdown-item">
                                          <i class="demo-pli-pen-5 fs-5 me-2"></i> Edit Date
                                       </a>
                                    </li>
                                    <li>
                                       <a href="#" class="dropdown-item">
                                          <i class="demo-pli-refresh fs-5 me-2"></i> Refresh
                                       </a>
                                    </li>
                                    <li>
                                       <hr class="dropdown-divider">
                                    </li>
                                    <li>
                                       <a href="#" class="dropdown-item">
                                          <i class="demo-pli-file-csv fs-5 me-2"></i> Save as CSV
                                       </a>
                                    </li>
                                    <li>
                                       <a href="#" class="dropdown-item">
                                          <i class="demo-pli-calendar-4 fs-5 me-2"></i> View Details
                                       </a>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>


                        <!-- Network - Area Chart -->
                        <div class="card-body py-0" style="height: 250px; max-height: 275px">
                           <canvas id="_dm-networkChart"></canvas>
                        </div>
                        <!-- END : Network - Area Chart -->


                        <div class="card-body mt-4">
                           <div class="row">
                              <div class="col-md-8">

                                 <!-- CPU Temperature -->
                                 <h4 class="h5 mb-3">CPU Temperature</h4>
                                 <div class="row">
                                    <div class="col-5">
                                       <div class="h5 display-6 fw-normal">
                                          43.7 <span class="fw-bold fs-5 align-top">°C</span>
                                       </div>
                                    </div>
                                    <div class="col-7 text-sm">
                                       <div class="d-flex justify-content-between align-items-start px-3 mb-3">
                                          Min Values
                                          <span class="d-block badge bg-success ms-auto">27°</span>
                                       </div>
                                       <div class="d-flex justify-content-between align-items-start px-3">
                                          Max Values
                                          <span class="d-block badge bg-danger ms-auto">89°</span>
                                       </div>
                                    </div>
                                 </div>
                                 <!-- END : CPU Temperature -->


                                 <!-- Today Tips -->
                                 <div class="mt-4">
                                    <h5>Today Tips</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.</p>
                                 </div>
                                 <!-- END : Today Tips -->


                              </div>
                              <div class="col-md-4">


                                 <!-- Bandwidth usage and progress bars -->
                                 <h4 class="h5 mb-3">Bandwidth Usage</h4>
                                 <div class="h2 fw-normal">
                                    754.9<span class="ms-2 fs-6 align-top">Mbps</span>
                                 </div>


                                 <div class="mt-4 mb-2 d-flex justify-content-between">
                                    <span class="">Income</span>
                                    <span class="">70%</span>
                                 </div>
                                 <div class="progress progress-md">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 70%" aria-label="Incoming Progress" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                 </div>


                                 <div class="mt-4 mb-2 d-flex justify-content-between">
                                    <span class="">Outcome</span>
                                    <span class="">10%</span>
                                 </div>
                                 <div class="progress progress-md">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 10%" aria-label="Outcome Progress" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                                 </div>
                                 <!-- END : Bandwidth usage and progress bars -->


                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-5">
                     <div class="row">
                        <div class="col-sm-6">


                           <!-- Tile - HDD Usage -->
                           <div class="card bg-success text-white overflow-hidden mb-3">
                              <div class="p-3 pb-2">
                                 <h5 class="mb-3"><i class="demo-psi-data-storage text-reset text-opacity-75 fs-3 me-2"></i> HDD Usage</h5>
                                 <ul class="list-group list-group-borderless">
                                    <li class="list-group-item p-0 text-reset d-flex justify-content-between align-items-start">
                                       <div class="me-auto">Free Space</div>
                                       <span class="fw-bold">132Gb</span>
                                    </li>
                                    <li class="list-group-item p-0 text-reset d-flex justify-content-between align-items-start">
                                       <div class="me-auto">Used space</div>
                                       <span class="fw-bold">1,45Gb</span>
                                    </li>
                                 </ul>
                              </div>

                              <!-- Area Chart -->
                              <div class="py-0" style="height: 70px; margin: 0 -5px -5px;">
                                 <canvas id="_dm-hddChart"></canvas>
                              </div>
                              <!-- END : Area Chart -->

                           </div>
                           <!-- END : Tile - HDD Usage -->


                        </div>
                        <div class="col-sm-6">


                           <!-- Tile - Earnings -->
                           <div class="card bg-info text-white overflow-hidden mb-3">
                              <div class="p-3 pb-2">
                                 <h5 class="mb-3"><i class="demo-psi-coin text-reset text-opacity-75 fs-2 me-2"></i> Earning</h5>
                                 <ul class="list-group list-group-borderless">
                                    <li class="list-group-item p-0 text-reset d-flex justify-content-between align-items-start">
                                       <div class="me-auto">Today</div>
                                       <span class="fw-bold">$764</span>
                                    </li>
                                    <li class="list-group-item p-0 text-reset d-flex justify-content-between align-items-start">
                                       <div class="me-auto">Last 7 Day</div>
                                       <span class="fw-bold">$1,332</span>
                                    </li>
                                 </ul>
                              </div>

                              <!-- Line Chart -->
                              <div class="py-0" style="height: 70px; margin: 0 -5px -5px;">
                                 <canvas id="_dm-earningChart"></canvas>
                              </div>
                              <!-- END : Line Chart -->

                           </div>
                           <!-- END : Tile - Earnings -->


                        </div>
                     </div>
                     <div class="row">
                        <div class="col-sm-6">


                           <!-- Tile - Sales -->
                           <div class="card bg-purple text-white overflow-hidden mb-3">
                              <div class="p-3 pb-2">
                                 <h5 class="mb-3"><i class="demo-psi-basket-coins text-reset text-opacity-75 fs-2 me-2"></i> Sales</h5>
                                 <ul class="list-group list-group-borderless">
                                    <li class="list-group-item p-0 text-reset d-flex justify-content-between align-items-start">
                                       <div class="me-auto">Today</div>
                                       <span class="fw-bold">$764</span>
                                    </li>
                                    <li class="list-group-item p-0 text-reset d-flex justify-content-between align-items-start">
                                       <div class="me-auto">Last 7 Day</div>
                                       <span class="fw-bold">$1,332</span>
                                    </li>
                                 </ul>
                              </div>

                              <!-- Bar Chart -->
                              <div class="py-0" style="height: 70px">
                                 <canvas id="_dm-salesChart"></canvas>
                              </div>
                              <!-- END : Bar Chart -->

                           </div>
                           <!-- END : Tile - Sales -->


                        </div>
                        <div class="col-sm-6">

                           <!-- Tile - Task Progress -->
                           <div class="card bg-warning text-white overflow-hidden mb-3">
                              <div class="p-3 pb-2">
                                 <h5 class="mb-3"><i class="demo-psi-basket-coins text-reset text-opacity-75 fs-2 me-2"></i> Progress</h5>
                                 <ul class="list-group list-group-borderless">
                                    <li class="list-group-item p-0 text-reset d-flex justify-content-between align-items-start">
                                       <div class="me-auto">Completed</div>
                                       <span class="fw-bold">34</span>
                                    </li>
                                    <li class="list-group-item p-0 text-reset d-flex justify-content-between align-items-start">
                                       <div class="me-auto">Total</div>
                                       <span class="fw-bold">79</span>
                                    </li>
                                 </ul>
                              </div>

                              <!-- Horizontal Bar Chart -->
                              <div class="py-0 pb-2" style="height: 70px">
                                 <canvas id="_dm-taskChart"></canvas>
                              </div>
                              <!-- END : Horizontal Bar Chart -->

                           </div>
                           <!-- END : Tile - Task Progress -->

                        </div>
                     </div>


                     <!-- Simple state widget -->
                     <div class="card">
                        <div class="card-body text-center">
                           <div class="d-flex align-items-center">
                              <div class="flex-shrink-0 p-3">
                                 <div class="h3 display-3">95</div>
                                 <span class="h6">New Friends</span>
                              </div>
                              <div class="flex-grow-1 text-center ms-3">
                                 <p class="text-body-secondary">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
                                 <button class="btn btn-sm btn-danger">View Details</button>

                                 <!-- Social media statistics -->
                                 <div class="mt-4 pt-3 d-flex justify-content-around border-top">
                                    <div class="text-center">
                                       <h4 class="mb-1">1,345</h4>
                                       <small class="text-body-secondary">Following</small>
                                    </div>
                                    <div class="text-center">
                                       <h4 class="mb-1">23k</h4>
                                       <small class="text-body-secondary">Followers</small>
                                    </div>
                                    <div class="text-center">
                                       <h4 class="mb-1">278</h4>
                                       <small class="text-body-secondary">Posts</small>
                                    </div>
                                 </div>
                                 <!-- END : Social media statistics -->
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- END : Simple state widget -->


                  </div>
               </div>

            </div>
         </div>


         <div class="bg-body-secondary bg-opacity-50 my-3 pt-3">
            <div class="content__boxed">
               <div class="content__wrap">

                  <div class="row gx-5 gy-5 gy-md-0">
                     <div class="col-md-4">


                        <!-- TODO List -->
                        <h4 class="mb-3">To-do list</h4>
                        <ul class="list-group list-group-borderless">
                           <li class="list-group-item px-0">
                              <div class="form-check ">
                                 <input id="_dm-todoList1" class="form-check-input" type="checkbox" checked>
                                 <label for="_dm-todoList1" class="form-check-label text-decoration-line-through">
                                    Find an idea <span class="badge bg-danger text-decoration-line-through">Important</span>
                                 </label>
                              </div>
                           </li>
                           <li class="list-group-item px-0">
                              <div class="form-check">
                                 <input id="_dm-todoList2" class="form-check-input" type="checkbox">
                                 <label for="_dm-todoList2" class="form-check-label">
                                    Do some work
                                 </label>
                              </div>
                           </li>
                           <li class="list-group-item px-0">
                              <div class="form-check">
                                 <input id="_dm-todoList3" class="form-check-input" type="checkbox">
                                 <label for="_dm-todoList3" class="form-check-label">
                                    Read the book
                                 </label>
                              </div>
                           </li>
                           <li class="list-group-item px-0">
                              <div class="form-check">
                                 <input id="_dm-todoList4" class="form-check-input" type="checkbox">
                                 <label for="_dm-todoList4" class="form-check-label">
                                    Upgrade server <span class="badge bg-warning">Warning</span>
                                 </label>
                              </div>
                           </li>
                           <li class="list-group-item px-0">
                              <div class="form-check">
                                 <input id="_dm-todoList5" class="form-check-input" type="checkbox">
                                 <label for="_dm-todoList5" class="form-check-label">
                                    Redesign my logo <span class="badge bg-info">2 Mins</span>
                                 </label>
                              </div>
                           </li>
                        </ul>

                        <div class="input-group mt-3">
                           <input type="text" class="form-control form-control-sm" placeholder="Add new list" aria-label="Add new list" aria-describedby="button-addon">
                           <button id="button-addon" class="btn btn-sm btn-secondary hstack gap-2" type="button">
                              <i class="demo-psi-add text-dark text-opacity-40 fs-4"></i>
                              <span class="vr"></span>
                              Add New
                           </button>
                        </div>
                        <!-- END : TODO List -->


                     </div>
                     <div class="col-md-4">


                        <!-- Service options -->
                        <h4 class="mb-3">Services</h4>
                        <div class="list-group list-group-borderless">
                           <div class="list-group-item px-0 mb-2">
                              <div class="d-flex justify-content-between">
                                 <label class="form-check-label h5 mb-0" for="_dm-dbPersonalStatus">Show my personal status</label>
                                 <div class="form-check form-switch">
                                    <input id="_dm-dbPersonalStatus" class="form-check-input" type="checkbox" checked>
                                 </div>
                              </div>
                              <span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</span>
                           </div>

                           <div class="list-group-item px-0 mb-2">
                              <div class="d-flex justify-content-between">
                                 <label class="form-check-label h5 mb-0" for="_dm-dbOfflineContact">Show offline contact</label>
                                 <div class="form-check form-switch">
                                    <input id="_dm-dbOfflineContact" class="form-check-input" type="checkbox">
                                 </div>
                              </div>
                              <span>Aenean commodo ligula eget dolor. Aenean massa.</span>
                           </div>

                           <div class="list-group-item px-0 mb-2">
                              <div class="d-flex justify-content-between">
                                 <label class="form-check-label h5 mb-0" for="_dm-dbMuteNotifications">Mute notifications</label>
                                 <div class="form-check form-switch">
                                    <input id="_dm-dbMuteNotifications" class="form-check-input" type="checkbox">
                                 </div>
                              </div>
                              <span>Aenean commodo ligula eget dolor. Aenean massa.</span>
                           </div>

                           <div class="list-group-item px-0 mb-2">
                              <div class="d-flex justify-content-between">
                                 <label class="form-check-label h5 mb-0" for="_dm-dbInvisibleMode">Invisible Mode</label>
                                 <div class="form-check form-switch">
                                    <input id="_dm-dbInvisibleMode" class="form-check-input" type="checkbox" checked>
                                 </div>
                              </div>
                              <span>Nascetur ridiculus mus.</span>
                           </div>
                        </div>
                        <!-- END : Service options -->


                     </div>
                     <div class="col-md-4">

                        <!-- User quote  -->
                        <div class="d-flex align-items-center position-relative hv-grow-parent hv-outline-parent">
                           <div class="flex-shrink-0">
                              <img class="hv-gc hv-oc img-lg rounded-circle" src="./assets/img/profile-photos/8.png" alt="Profile Picture" loading="lazy">
                           </div>
                           <div class="flex-grow-1 ms-3">
                              <a href="#" class="d-block stretched-link h5 link-offset-2-hover text-decoration-none link-underline-hover mb-0">Kathryn Obrien</a>
                              Project manager
                           </div>
                        </div>

                        <figure class="d-flex flex-column align-items-center justify-content-center my-4">
                           <blockquote class="blockquote mb-0">
                              <p class="quote">Lorem ipsum dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy nibh euismod tincidunt</p>
                           </blockquote>
                        </figure>

                        <div class="border-top pt-3">
                           <a href="#" class="btn btn-icon btn-link text-indigo" aria-label="Facebook button">
                              <i class="demo-psi-facebook fs-4"></i>
                           </a>
                           <a href="#" class="btn btn-icon btn-link text-info" aria-label="Twitter button">
                              <i class="demo-psi-twitter fs-4"></i>
                           </a>
                           <a href="#" class="btn btn-icon btn-link text-red" aria-label="Google plus button">
                              <i class="demo-psi-google-plus fs-4"></i>
                           </a>
                           <a href="#" class="btn btn-icon btn-link text-orange" aria-label="Instagram button">
                              <i class="demo-psi-instagram fs-4"></i>
                           </a>
                        </div>
                        <!-- END : User quote  -->


                     </div>
                  </div>


               </div>
            </div>
         </div>


         <div class="content__boxed">
            <div class="content__wrap">


               <!-- Table with toolbar -->
               <div class="card">
                  <div class="card-header">
                     <h5 class="card-title mb-3">Order Status</h5>
                     <div class="row">

                        <!-- Left toolbar -->
                        <div class="col-md-6 d-flex gap-1 align-items-center mb-3">
                           <button class="btn btn-primary hstack gap-2">
                              <i class="demo-psi-add fs-5"></i>
                              <span class="vr"></span>
                              Add New
                           </button>
                           <button class="btn btn-icon btn-outline-light" aria-label="Print table">
                              <i class="demo-pli-printer fs-5"></i>
                           </button>
                           <div class="btn-group">
                              <button class="btn btn-icon btn-outline-light" aria-label="Information"><i class="demo-pli-exclamation fs-5"></i></button>
                              <button class="btn btn-icon btn-outline-light" aria-label="Remove"><i class="demo-pli-recycling fs-5"></i></button>
                           </div>
                        </div>
                        <!-- END : Left toolbar -->

                        <!-- Right Toolbar -->
                        <div class="col-md-6 d-flex gap-1 align-items-center justify-content-md-end mb-3">
                           <div class="form-group">
                              <input type="text" placeholder="Search..." class="form-control" autocomplete="off">
                           </div>
                           <div class="btn-group">
                              <button class="btn btn-icon btn-outline-light" aria-label="Download"><i class="demo-pli-download-from-cloud fs-5"></i></button>
                              <div class="btn-group dropdown">
                                 <button class="btn btn-icons btn-outline-light dropdown-toggle hstack gap-2" data-bs-toggle="dropdown" aria-expanded="false">
                                    Options
                                    <span class="vr"></span>
                                    <span class="visually-hidden">Toggle Dropdown</span>
                                 </button>
                                 <ul class="dropdown-menu dropdown-menu-end">
                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                    <li>
                                       <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">Separated link</a></li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <!-- END : Right Toolbar -->

                     </div>
                  </div>

                  <div class="card-body">
                     <div class="table-responsive">
                        <table class="table table-striped">
                           <thead>
                              <tr>
                                 <th>Invoice</th>
                                 <th>User</th>
                                 <th>Order date</th>
                                 <th>Amount</th>
                                 <th class="text-center">Status</th>
                                 <th class="text-center">Tracking Number</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td><a href="#" class="btn-link"> Order #53431</a></td>
                                 <td>Steve N. Horton</td>
                                 <td><span class="text-body"><i class="demo-pli-clock"></i> May 22, 2024</span></td>
                                 <td>$45.00</td>
                                 <td class="text-center fs-5">
                                    <div class="d-block badge bg-success">Paid</div>
                                 </td>
                                 <td class="text-center">-</td>
                              </tr>
                              <tr>
                                 <td><a href="#" class="btn-link"> Order #53432</a></td>
                                 <td>Charles S Boyle</td>
                                 <td><span class="text-body"><i class="demo-pli-clock"></i> May 24, 2024</span></td>
                                 <td>$245.30</td>
                                 <td class="text-center fs-5">
                                    <div class="d-block badge bg-info">Shipped</div>
                                 </td>
                                 <td class="text-center">CGX0089734531</td>
                              </tr>
                              <tr>
                                 <td><a href="#" class="btn-link"> Order #53433</a></td>
                                 <td>Lucy Doe</td>
                                 <td><span class="text-body"><i class="demo-pli-clock"></i> May 24, 2024</span></td>
                                 <td>$38.00</td>
                                 <td class="text-center fs-5">
                                    <div class="d-block badge bg-info">Shipped</div>
                                 </td>
                                 <td class="text-center">CGX0089934571</td>
                              </tr>
                              <tr>
                                 <td><a href="#" class="btn-link"> Order #53434</a></td>
                                 <td>Teresa L. Doe</td>
                                 <td><span class="text-body"><i class="demo-pli-clock"></i> May 15, 2024</span></td>
                                 <td>$77.99</td>
                                 <td class="text-center fs-5">
                                    <div class="d-block badge bg-info">Shipped</div>
                                 </td>
                                 <td class="text-center">CGX0089734574</td>
                              </tr>
                              <tr>
                                 <td><a href="#" class="btn-link"> Order #53435</a></td>
                                 <td>Teresa L. Doe</td>
                                 <td><span class="text-body"><i class="demo-pli-clock"></i> May 12, 2024</span></td>
                                 <td>$18.00</td>
                                 <td class="text-center fs-5">
                                    <div class="d-block badge bg-success">Paid</div>
                                 </td>
                                 <td class="text-center">-</td>
                              </tr>
                              <tr>
                                 <td><a href="#" class="btn-link">Order #53437</a></td>
                                 <td>Charles S Boyle</td>
                                 <td><span class="text-body"><i class="demo-pli-clock"></i> May 17, 2024</span></td>
                                 <td>$658.00</td>
                                 <td class="text-center fs-5">
                                    <div class="d-block badge bg-danger">Refunded</div>
                                 </td>
                                 <td class="text-center">-</td>
                              </tr>
                              <tr>
                                 <td><a href="#" class="btn-link">Order #536584</a></td>
                                 <td>Scott S. Calabrese</td>
                                 <td><span class="text-body"><i class="demo-pli-clock"></i> May 19, 2024</span></td>
                                 <td>$45.58</td>
                                 <td class="text-center fs-5">
                                    <div class="d-block badge bg-warning">Unpaid</div>
                                 </td>
                                 <td class="text-center">-</td>
                              </tr>
                           </tbody>
                        </table>
                     </div>

                     <nav class="text-align-center mt-5" aria-label="Table navigation">
                        <ul class="pagination justify-content-center">
                           <li class="page-item disabled">
                              <a class="page-link" href="#">Previous</a>
                           </li>
                           <li class="page-item active" aria-current="page">
                              <span class="page-link">1</span>
                           </li>
                           <li class="page-item"><a class="page-link" href="#">2</a></li>
                           <li class="page-item"><a class="page-link" href="#">3</a></li>
                           <li class="page-item disabled"><a class="page-link" href="#">...</a></li>
                           <li class="page-item"><a class="page-link" href="#">5</a></li>
                           <li class="page-item">
                              <a class="page-link" href="#">Next</a>
                           </li>
                        </ul>
                     </nav>
                  </div>
               </div>
               <!-- END : Table with toolbar -->


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
   <script src="./assets/pages/dashboard-1.js"></script>


</body>

</html>