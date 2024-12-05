<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="es.admin.Settings" %>


<%@ Register Src="UserControls/MainNav.ascx" TagPrefix="usercontrols" TagName="MainNav" %>
<%@ Register Src="UserControls/MainHeader.ascx" TagPrefix="usercontrols" TagName="MainHeader" %>
<%@ Register Src="UserControls/Footer.ascx" TagPrefix="usercontrols" TagName="Footer" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <!-- PAGE CONTAINER -->
    <div id="root" class="root mn--max tm--expanded-hd">

        <!-- CONTENTS -->
        <section id="content" class="content">
            <div class="content__header content__boxed overlapping">
                <div class="content__wrap">
                    <div class="col-md-6 mb-3 mx-auto">
                        <div class="card h-100">
                            <div class="card-body">
                                <asp:UpdatePanel ID="SettingsPanel" runat="server">
                                    <ContentTemplate>

                                        <!-- First Name -->
                                        <div class="mb-3">
                                            <asp:Label ID="lblFirstName" runat="server" CssClass="form-label" Text="First Name"></asp:Label>
                                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                        <!-- Last Name -->
                                        <div class="mb-3">
                                            <asp:Label ID="lblLastName" runat="server" CssClass="form-label" Text="Last Name"></asp:Label>
                                            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                        <!-- Company Name -->
                                        <div class="mb-3">
                                            <asp:Label ID="lblCompanyName" runat="server" CssClass="form-label" Text="Company Name"></asp:Label>
                                            <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                        <!-- Website -->
                                        <div class="mb-3">
                                            <asp:Label ID="lblWebsite" runat="server" CssClass="form-label" Text="Website"></asp:Label>
                                            <asp:TextBox ID="txtWebsite" runat="server" CssClass="form-control" TextMode="Url"></asp:TextBox>
                                        </div>

                                        <!-- Email -->
                                        <div class="mb-3">
                                            <asp:Label ID="lblEmail" runat="server" CssClass="form-label" Text="Email"></asp:Label>
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                        </div>

                                        <!-- Phone -->
                                        <div class="mb-3">
                                            <asp:Label ID="lblPhone" runat="server" CssClass="form-label" Text="Phone"></asp:Label>
                                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                                        </div>

                                        <!-- Address -->
                                        <div class="mb-3">
                                            <asp:Label ID="lblAddress" runat="server" CssClass="form-label" Text="Address"></asp:Label>
                                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                        <!-- Username -->
                                        <div class="mb-3">
                                            <asp:Label ID="lblUsername" runat="server" CssClass="form-label" Text="Username"></asp:Label>
                                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                        <!-- Update Button -->
                                        <div class="mb-3">
                                            <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" Text="Update" OnClick="btnUpdate_Click" />
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <usercontrols:Footer runat="server" />
        </section>

        <!-- HEADER -->
        <usercontrols:MainHeader runat="server" />

        <!-- MAIN NAVIGATION -->
        <usercontrols:MainNav runat="server" />

    </div>

</asp:Content>
