<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostVideo.aspx.cs" Inherits="es.admin.PostVideo" %>


<%@ Register Src="~/UserControls/MainNav.ascx" TagPrefix="usercontrols" TagName="MainNav" %>
<%@ Register Src="~/UserControls/MainHeader.ascx" TagPrefix="usercontrols" TagName="MainHeader" %>
<%@ Register Src="~/UserControls/Footer.ascx" TagPrefix="usercontrols" TagName="Footer" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


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
                        <input class="searchbox__input form-control form-control-lg" type="search" placeholder="Search videos" aria-label="Search">
                        <div class="searchbox__btn-group">
                            <button class="searchbox__btn btn btn-icon bg-transparent shadow-none border-0 btn-sm" type="submit">
                                <i class="demo-pli-magnifi-glass"></i>
                            </button>
                        </div>
                    </div>
                    <!-- END : Search form -->
                </div>
            </div>


            <div class="content__boxed">
                <div class="content__wrap">
                    <div class="row mt-3">
                        <asp:Panel runat="server" ID="videoTable" CssClass="row mt-3">
                        </asp:Panel>
                    </div>
                </div>
            </div>


            <!-- FOOTER -->
            <usercontrols:Footer runat="server" />


        </section>


        <!-- HEADER -->
        <usercontrols:MainHeader runat="server" />

        <!-- MAIN NAVIGATION -->
        <usercontrols:MainNav runat="server" />

    </div>
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <!-- END - PAGE CONTAINER -->


</asp:Content>
