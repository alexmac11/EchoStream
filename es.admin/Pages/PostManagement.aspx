<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostManagement.aspx.cs" Inherits="es.admin.PostManagement" %>

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


                    <!-- Title and information -->
                    <h1 class="page-title d-flex flex-wrap just justify-content-center mb-2 mt-4">Manage posts</h1>
                    <p class="text-center lead mb-5">
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Optio,
                        <br>
                        esse corporis ipsam fuga ratione cum quisquam voluptas dolores ullam eius.
                    </p>
                    <!-- END : Title and information -->


                    <!-- Search form -->
                    <div class="col-md-8 offset-md-2 mb-3">
                        <asp:Panel runat="server" DefaultButton="searchBtn">
                            <asp:TextBox runat="server" ID="search" CssClass="searchbox__input form-control form-control-lg" placeholder="Search by title"></asp:TextBox>
                            <asp:Button runat="server" ID="searchBtn" class="btn" OnClick="Search_Posts" Text="Search"></asp:Button>
                        </asp:Panel>
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
                                <asp:Table ID="postTable" runat="server" class="table table-striped align-middle">
                                    <asp:TableHeaderRow TableSection="TableHeader">
                                        <asp:TableCell>Post Title</asp:TableCell>
                                        <asp:TableCell>Creation Date</asp:TableCell>
                                        <asp:TableCell>Categories</asp:TableCell>
                                        <asp:TableCell>Actions</asp:TableCell>
                                    </asp:TableHeaderRow>
                                </asp:Table>
                            </div>
                            <!-- END : Blog post lists -->


                            <div class="mt-4 d-flex justify-content-center">

                                <!-- Pagination - Disabled and active states -->
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                        </li>
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item" aria-current="page"><a class="page-link" href="#">2</a></li>
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
