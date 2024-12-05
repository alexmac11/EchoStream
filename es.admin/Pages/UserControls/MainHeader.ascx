<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MainHeader.ascx.cs" Inherits="es.admin.UserControls.MainHeader" %>


<header class="header">
    <div class="header__inner">

        <!-- Brand -->
        <div class="header__brand">
            <div class="brand-wrap">

                <!-- Brand logo -->
                <a href="Default.aspx" class="brand-img stretched-link">
                    <!-- <img src="./assets/img/logo.svg" alt="Nifty Logo" class="Nifty logo" width="16" height="16"> -->
                </a>


                <!-- Brand title -->
                <div class="brand-title">EchoStream</div>


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