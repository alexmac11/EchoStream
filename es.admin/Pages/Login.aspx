<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="es.admin.Login" %>


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
                        <div class="card-body p-4">

                            <div class="text-center">
                                <h1 class="h3">Account Login</h1>
                                <br />
                            </div>


                            <div class="mb-3">
                                <input type="text" class="form-control" placeholder="Username" autofocus>
                            </div>

                            <div class="mb-3">
                                <input type="password" class="form-control" placeholder="Password">
                            </div>

                            <div class="form-check">
                                <input id="_dm-loginCheck" class="form-check-input" type="checkbox">
                                <label for="_dm-loginCheck" class="form-check-label">
                                    Remember me
                                </label>
                            </div>

                            <div class="d-grid mt-5">
                                <button class="btn btn-primary btn-lg" type="submit">Sign In</button>
                            </div>

                            <div class="d-flex justify-content-between gap-md-5 mt-4">
                                <a href="ForgotPassword.aspx" class="btn-link text-decoration-none">Forgot password ?</a>
                                <a href="Register.aspx" class="btn-link text-decoration-none">Create a new account</a>
                            </div>

                            <div class="d-flex align-items-center justify-content-between border-top pt-3 mt-3">
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
