<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostVideo.aspx.cs" Inherits="es.admin.PostVideo" Async="true" %>


<%@ Register Src="UserControls/MainNav.ascx" TagPrefix="usercontrols" TagName="MainNav" %>
<%@ Register Src="UserControls/MainHeader.ascx" TagPrefix="usercontrols" TagName="MainHeader" %>
<%@ Register Src="UserControls/Footer.ascx" TagPrefix="usercontrols" TagName="Footer" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


    <!-- PAGE CONTAINER -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <div id="root" class="root mn--max tm--expanded-hd">

        <!-- CONTENTS -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <section id="content" class="content">

            <div class="content__header content__boxed">
                <div class="content__wrap">

                    <asp:Button ID="LoginToVimeo" runat="server" CssClass="btn btn-secondary" Text="Login to Vimeo" OnClick="AuthorizeVimeo_Click" />
                    <asp:Button ID="LoginToYouTube" runat="server" CssClass="btn btn-secondary" Text="Login to YouTube" OnClick="AuthorizeYT_Click" />

                    <!-- Title and information -->
                    <h1 class="page-title d-flex flex-wrap just justify-content-center mb-2 mt-4">Videos</h1>
                    <!-- END : Title and information -->


                    <!-- Search form -->
                    <div class="col-md-8 offset-md-2 mb-3">
                        <asp:Panel runat="server" DefaultButton="searchBtn">
                            <asp:TextBox runat="server" ID="videosearch" CssClass="searchbox__input form-control form-control-lg" placeholder="Search by Title or YouTube Description" autofocus></asp:TextBox>
                            <asp:Button runat="server" ID="searchBtn" class="btn" OnClick="Search_Data" Text="Search"></asp:Button>
                        </asp:Panel>
                    </div>
                    <!-- END : Search form -->
                </div>

                <!-- Pop-up Modal -->
                <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="videoModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <asp:Button runat="server" CssClass="btn btn-primary me-4" data-bs-dismiss="modal" aria-label="Post" OnClick="VideoPost_Click" Text="Post"></asp:Button>

                                <div class="">
                                    <div class="form-check mb-2">
                                        <asp:CheckBox ID="chkClientVisible" runat="server" CssClass="form-check-input" Checked="true" />
                                        <label class="form-check-label text-dark" for="chkClientVisible">Client Visible</label>
                                    </div>
                                    <div class="form-check">
                                        <asp:CheckBox ID="chkProspectVisible" runat="server" CssClass="form-check-input" Checked="true"/>
                                        <label class="form-check-label text-dark" for="chkProspectVisible">Prospect Visible</label>
                                    </div>
                                </div>

                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body text-center">
                                <p id="videoModalLabel" class="modal-title text-dark fs-5"></p>
                                <p id="videoDescription" class="text-dark fs-5"></p>
                                <div class="ratio ratio-16x9">
                                    <iframe id="videoIframe" src="" class="rounded" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                </div>

                                <asp:HiddenField ID="hfVideoTitle" runat="server" />
                                <asp:HiddenField ID="hfVideoDescription" runat="server" />
                                <asp:HiddenField ID="hfVideoUrl" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>

                <!-- JavaScript below the modal -->
                <script>
                    document.addEventListener("DOMContentLoaded", function () {
                        const videoModal = document.getElementById("videoModal");

                        // Triggered when the modal is shown
                        videoModal.addEventListener("show.bs.modal", function (event) {
                            const card = event.relatedTarget; // The clicked card

                            // Extract data attributes from the card
                            const title = card.getAttribute("data-title");
                            const description = card.getAttribute("data-description");
                            const url = card.getAttribute("data-url");

                            // Populate modal fields
                            const modalTitle = videoModal.querySelector(".modal-title");
                            const modalDescription = videoModal.querySelector("#videoDescription");
                            const modalIframe = videoModal.querySelector("#videoIframe");

                            modalTitle.textContent = title;
                            modalDescription.textContent = description;
                            modalIframe.src = url;

                            // Update hidden fields
                            document.getElementById("<%= hfVideoTitle.ClientID %>").value = title;
                                document.getElementById("<%= hfVideoDescription.ClientID %>").value = description;
                                document.getElementById("<%= hfVideoUrl.ClientID %>").value = url;
                            });

                        // Clear the iframe source when the modal is hidden
                        videoModal.addEventListener("hidden.bs.modal", function () {
                            const modalIframe = videoModal.querySelector("#videoIframe");
                            modalIframe.src = "";
                        });
                    });
                </script>
                <!-- End: Pop-up Modal -->

                <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="container mt-5">
                            <div class="row">
                                <asp:Repeater ID="RepeaterVideos" runat="server">
                                    <ItemTemplate>
                                        <div class="col-sm-6 col-md-4 col-xl-3 mb-3">
                                            <a href="#" class="card card-body pt-2 text-center text-truncate" 
                                                style="cursor: pointer; text-decoration: none; color: inherit; transition: 0.2s ease-in-out;"
                                                onmouseover="this.style.transform='scale(1.02)'; this.style.boxShadow='0 4px 8px rgba(0,0,0,0.2)';"
                                                onmouseout="this.style.transform='scale(1)'; this.style.boxShadow='none';"
                                                data-bs-toggle="modal" data-bs-target="#videoModal"
                                                data-title='<%# Eval("Title") %>'
                                                data-description='<%# Eval("Description") %>'
                                                data-url='<%# Eval("VideoUrl") %>'>

                                                <div class="text-container">
                                                    <p class="text-dark fs-5"><%# Eval("Title") %></p>
                                                    <p class="text-dark fs-6"><%# Eval("Description") %></p>
                                                </div>
                                                <iframe class="card-img-top rounded" width="355" height="200" src='<%# Eval("VideoUrl") %>' frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                            </a>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>

                            <!-- Paging Controls -->
                            <div class="d-flex justify-content-center mt-3">
                                <asp:Button ID="prevBtn" runat="server" Text="Previous" CssClass="btn btn-primary me-2" OnClick="btnPrev_Click" />
                                <asp:Label ID="lblPageInfo" runat="server" CssClass="me-2"></asp:Label>
                                <asp:Button ID="nextBtn" runat="server" Text="Next" CssClass="btn btn-primary" OnClick="btnNext_Click" />
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
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
