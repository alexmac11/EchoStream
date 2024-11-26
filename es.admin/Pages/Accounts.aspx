<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accounts.aspx.cs" Inherits="es.admin.Accounts" %>

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
                    <h1 class="page-title d-flex flex-wrap just justify-content-center mb-2 mt-4">Accounts</h1>
                    <p class="text-center lead mb-5">Registered Accounts</p>
                    <!-- END : Title and information -->


                    <!-- Search form -->
                    <div class="col-md-8 offset-md-2 mb-3">
                        <asp:TextBox runat="server" ID="search" CssClass="searchbox__input form-control form-control-lg" placeholder="Search by First or Last Name" autofocus></asp:TextBox>
                        <asp:Button runat="server" ID="searchBtn" class="btn" OnClick="Search_Data" Text="Search"></asp:Button>
                    </div>
                    <!-- END : Search form -->

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
                                        <asp:GridView ID="AccountsGridView" runat="server"
                                            AllowPaging="true"
                                            PageSize="10"
                                            AutoGenerateColumns="false"
                                            DataKeyNames="UserID"
                                            CssClass="table table-striped align-middle"
                                            OnPageIndexChanging="AccountsGridView_PageIndexChanging"
                                            OnRowCommand="AccountsGridView_RowCommand"
                                            OnDataBound="AccountsGridView_DataBound">

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
                                                <asp:TemplateField HeaderText="First Name">
                                                    <ItemTemplate>
                                                        <span class="text-nowrap text-body-secondary"><%# Eval("FirstName") %></span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Last Name">
                                                    <ItemTemplate>
                                                        <span class="text-nowrap text-body-secondary"><%# Eval("LastName") %></span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Email">
                                                    <ItemTemplate>
                                                        <span class="text-nowrap text-body-secondary"><%# Eval("Email") %></span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Website">
                                                    <ItemTemplate>
                                                        <span class="text-nowrap text-body-secondary"><%# Eval("Website") %></span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Phone">
                                                    <ItemTemplate>
                                                        <span class="text-nowrap text-body-secondary"><%# Eval("Phone") %></span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Address">
                                                    <ItemTemplate>
                                                        <span class="text-nowrap text-body-secondary"><%# Eval("Address") %></span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Actions" HeaderStyle-CssClass="text-end" HeaderStyle-Width="20px" ItemStyle-Width="20px">
                                                    <ItemTemplate>
                                                        <div class="d-flex justify-content-end">
                                                            <asp:Button ID="btnDelete" runat="server" CommandName="Delete_Click"
                                                                CommandArgument='<%# Eval("UserID") %>'
                                                                Text="Delete" CssClass="btn btn-danger btn-sm mx-1" />
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            <!-- END : Blog post lists -->
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
