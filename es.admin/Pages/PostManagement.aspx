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


                    <!-- Title -->
                    <h1 class="page-title d-flex flex-wrap just justify-content-center mb-2 mt-4">Manage posts</h1>


                    <!-- Search form -->
                    <div class="col-md-8 offset-md-2 mb-3">
                        <asp:Panel runat="server" DefaultButton="searchBtn">
                            <asp:TextBox runat="server" ID="search" CssClass="searchbox__input form-control form-control-lg" placeholder="Search by title"></asp:TextBox>
                            <asp:Button runat="server" ID="searchBtn" class="btn" OnClick="Search_Data" Text="Search"></asp:Button>
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
                                <asp:UpdatePanel ID="UpdatePanel" runat="server">
                                    <ContentTemplate>
                                        <asp:GridView ID="PostGridView" runat="server"
                                            AllowPaging="true"
                                            PageSize="10"
                                            AutoGenerateColumns="false"
                                            DataKeyNames="ContentID"
                                            CssClass="table table-striped align-middle"
                                            OnPageIndexChanging="PostGridView_PageIndexChanging"
                                            OnRowCommand="PostGridView_RowCommand"
                                            OnDataBound="PostGridView_DataBound">

                                            <PagerTemplate>
                                                <div class="text-center">
                                                    <asp:LinkButton runat="server" CommandName="Page" CommandArgument="First" Text="First" CssClass="btn btn-sm btn-light mx-1" />
                                                    <asp:LinkButton runat="server" ID="btnPrev" CommandName="Page" CommandArgument="Prev" Text="Previous" CssClass="btn btn-sm btn-light mx-1" />
                                                    <asp:Label ID="lblPageInfo" runat="server" CssClass="mx-2"></asp:Label>
                                                    <asp:LinkButton runat="server" ID="btnNext" CommandName="Page" CommandArgument="Next" Text="Next" CssClass="btn btn-sm btn-light mx-1" />
                                                    <asp:LinkButton runat="server" CommandName="Page" CommandArgument="Last" Text="Last" CssClass="btn btn-sm btn-light mx-1" />
                                                </div>
                                            </PagerTemplate>
                                            <Columns>
                                                <asp:TemplateField HeaderText="Title">
                                                    <ItemTemplate>
                                                        <span class="text-nowrap text-body-secondary"><%# Eval("Title") %></span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Tags">
                                                    <ItemTemplate>
                                                        <span class="text-nowrap text-body-secondary"><%# Eval("Tags") %></span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Published Date">
                                                    <ItemTemplate>
                                                        <span class="text-nowrap text-body-secondary"><%# Eval("PublishedDate") %></span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Actions" HeaderStyle-CssClass="text-end" HeaderStyle-Width="20px" ItemStyle-Width="20px">
                                                    <ItemTemplate>
                                                        <div class="d-flex justify-content-end">
                                                            <asp:Button ID="btnEdit" runat="server" CommandName="Edit_Click"
                                                                CommandArgument='<%# Eval("ContentID") %>'
                                                                Text="Edit" CssClass="btn btn-warning btn-sm mx-1" />
                                                            <asp:Button ID="btnDelete" runat="server" CommandName="Delete_Click"
                                                                CommandArgument='<%# Eval("ContentID") %>'
                                                                Text="Delete" CssClass="btn btn-danger btn-sm mx-1" />
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
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
