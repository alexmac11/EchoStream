<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MainNav.ascx.cs" Inherits="es.admin.UserControls.MainNav" %>


<nav id="mainnav-container" class="mainnav">
    <div class="mainnav__inner">

        <!-- Navigation menu -->
        <div class="mainnav__top-content scrollable-content pb-5">


            <!-- Profile Widget -->
            <div id="_dm-mainnavProfile" class="mainnav__widget my-3 hv-outline-parent">


                <!-- User name and position -->
                <div class="text-center">
                    <h5 runat="server" id="fullname" class="mb-0">Em</h5>
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
            <!-- Accounts -->
            <div class="mainnav__categoriy py-3">
                <ul class="mainnav__menu nav flex-column">
                    <li class="nav-item">
                        <a href="./Accounts.aspx" class="nav-link mininav-toggle"><i class="demo-pli-speech-bubble-5 fs-5 me-2"></i>
                            <span class="nav-label mininav-content ms-1">
                                <span data-popper-arrow class="arrow"></span>
                                Accounts
                            </span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- End Accounts -->


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
                    <asp:LinkButton runat="server" ID="logoutBtn" CssClass="nav-link" OnClick="On_Logout">
                        <i class="demo-pli-unlock fs-5 me-2"></i>
                        <span class="nav-label ms-1">Logout</span>
                    </asp:LinkButton>
                </li>

            </ul>
        </div>
        <!-- End - Bottom navigation menu -->


    </div>
</nav>