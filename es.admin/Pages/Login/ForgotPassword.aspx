<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="es.admin.ForgotPassword" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


    <!-- PAGE CONTAINER -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <div id="root" class="root front-container">

        <!-- CONTENTS -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <section id="content" class="content">
            <div class="content__boxed w-100 min-vh-100 d-flex flex-column align-items-center justify-content-center">
                <div class="content__wrap">

                    <!-- Login card -->
                    <div class="card shadow-lg">
                        <div class="card-body">

                            <div class="text-center">
                                <h1 class="h3">Forgot password</h1>
                                <p>Enter your email address to recover your password.</p>
                            </div>

                            <form class="mt-4" action="index.html">

                                <div class="mb-3">
                                    <input type="email" class="form-control" placeholder="Email" autofocus>
                                </div>

                                <div class="d-grid mt-5">
                                    <button class="btn btn-warning btn-lg" type="submit">Reset Password</button>
                                </div>
                            </form>


                            <div class="text-center mt-3">
                                <a href="Login.aspx" class="btn-link text-decoration-none">Back to login</a>
                            </div>


                        </div>
                    </div>

                    <!-- END : Login card -->




                </div>
            </div>


        </section>

        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <!-- END - CONTENTS -->
    </div>
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <!-- END - PAGE CONTAINER -->


</asp:Content>
