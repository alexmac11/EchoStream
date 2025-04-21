<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="es.admin._Default" %>

<%@ Register Src="UserControls/MainNav.ascx" TagPrefix="usercontrols" TagName="MainNav" %>
<%@ Register Src="UserControls/MainHeader.ascx" TagPrefix="usercontrols" TagName="MainHeader" %>
<%@ Register Src="UserControls/Footer.ascx" TagPrefix="usercontrols" TagName="Footer" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent"></asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <!-- PAGE CONTAINER -->
    <div id="root" class="root mn--max tm--expanded-hd">

        <!-- CONTENT -->
        <section id="content" class="content">

            <!-- Page header -->
            <div class="content__header content__boxed overlapping">
                <div class="content__wrap">
                    <h1 class="page-title mb-2">Dashboard</h1>
                </div>
            </div>

            <div class="content__boxed">
                <div class="content__wrap">
                    <!-- SUMMARY CARDS -->
                    <div class="row mb-4">
                        <div class="col-sm-4">
                            <div class="card text-center">
                                <div class="card-body">
                                    <h5>Total Users</h5>
                                    <div class="display-6" runat="server" id="litTotalUsers">0</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card text-center">
                                <div class="card-body">
                                    <h5>Total Posts</h5>
                                    <div class="display-6" runat="server" id="litTotalPosts">0</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card text-center">
                                <div class="card-body">
                                    <h5>Total Videos</h5>
                                    <div class="display-6" runat="server" id="litTotalVideos">0</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- ROW 1: Logins + Registrations -->
                    <div class="row">
                        <div class="col-lg-6 mb-3">
                            <div class="card h-100">
                                <div class="card-header">Logins (Last Year)</div>
                                <div class="card-body">
                                    <canvas id="loginChart"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 mb-3">
                            <div class="card h-100">
                                <div class="card-header">Registrations (Last Year)</div>
                                <div class="card-body">
                                    <canvas id="registrationChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- ROW 2: Watch Time + Pie -->
                    <div class="row">
                        <div class="col-lg-6 mb-3">
                            <div class="card h-100">
                                <div class="card-header">Watch Time (Last Year)</div>
                                <div class="card-body">
                                    <canvas id="videoWatchChart"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 mb-3">
                            <div class="card h-100">
                                <div class="card-header">Videos Watched by Category</div>
                                <div class="card-body">
                                    <canvas id="videoCategoryPieChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Chart.js (load once) -->
                    <script src="/assets/vendors/chart.js/chart.umd.min.js"></script>

                    <!-- initCharts now takes four arrays: login, registration, watch, pie -->
                    <script type="text/javascript">
                        function initCharts(loginData, regData, watchData, pieData) {
                            // 1) Logins line chart
                            new Chart(document.getElementById('loginChart'), {
                                type: 'line',
                                data: {
                                    labels: loginData.map(x => x.Date),
                                    datasets: [{
                                        label: 'User Logins',
                                        data: loginData.map(x => x.Count),
                                        fill: false
                                    }]
                                },
                                options: { responsive: true }
                            });

                            // 2) Registrations line chart
                            new Chart(document.getElementById('registrationChart'), {
                                type: 'line',
                                data: {
                                    labels: regData.map(x => x.Date),
                                    datasets: [{
                                        label: 'New Registrations',
                                        data: regData.map(x => x.Count),
                                        fill: false
                                    }]
                                },
                                options: { responsive: true }
                            });

                            // 3) Watch Time filled line chart
                            new Chart(document.getElementById('videoWatchChart'), {
                                type: 'line',
                                data: {
                                    labels: watchData.map(x => x.Date),
                                    datasets: [{
                                        label: 'Seconds Watched',
                                        data: watchData.map(x => x.Watched),
                                        fill: true
                                    }]
                                },
                                options: { responsive: true }
                            });

                            // 4) Pie chart for tags
                            new Chart(document.getElementById('videoCategoryPieChart'), {
                                type: 'pie',
                                data: {
                                    labels: pieData.map(x => x.CategoryName),
                                    datasets: [{
                                        data: pieData.map(x => x.Count)
                                        // omit backgroundColor to get auto‑assigned colors
                                    }]
                                },
                                options: { responsive: true }
                            });
                        }
                    </script>
                </div>
            </div>

            <!-- FOOTER -->
            <usercontrols:Footer runat="server" />

        </section>

        <!-- HEADER & NAV -->
        <usercontrols:MainHeader runat="server" />
        <usercontrols:MainNav runat="server" />

    </div>
    <!-- END PAGE CONTAINER -->

</asp:Content>
