<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostEdit.aspx.cs" Inherits="es.admin.PostEdit" ValidateRequest="false" %>


<%@ Register Src="UserControls/MainNav.ascx" TagPrefix="usercontrols" TagName="MainNav" %>
<%@ Register Src="UserControls/MainHeader.ascx" TagPrefix="usercontrols" TagName="MainHeader" %>
<%@ Register Src="UserControls/Footer.ascx" TagPrefix="usercontrols" TagName="Footer" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


    <!-- PAGE CONTAINER -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <asp:Panel ID="ContentPanel" runat="server" DefaultButton="PublishButton">
        <div id="root" class="root mn--max tm--expanded-hd">

            <!-- CONTENTS -->
            <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
            <section id="content" class="content">
                <div class="content__header content__boxed overlapping">
                    <div class="content__wrap">





                        <h1 class="page-title mb-0 mt-2">Add & Edit Posts</h1>

                        <p class="lead">
                            Write a new article or edit an article to improve it.
                        </p>
                        <input runat="server" id="contentTitle" class="form-control form-control-lg mb-4 rounded" type="text" placeholder="Enter title here" aria-label="Post title" value="These sweet mornings of spring">
                    </div>

                </div>


                <div class="content__boxed">
                    <div class="content__wrap">
                        <div class="card">
                            <div class="d-md-flex gap-4">
                                <div class="flex-fill">


                                    <!-- Quill TextEditor -->
                                    <div class="ql-mh  h-100 d-flex flex-column">

                                        <!-- Toolbar -->
                                        <div id="_dm-quillAdvancedToolbar" class="mt-2 p-2">
                                            <div class="d-sm-flex flex-wrap">
                                                <div class="d-flex flex-column mb-3">
                                                    <div class="d-flex flex-column mb-2">
                                                       

                                                        <!-- Fonts selector -->
                                                        <div class="d-flex">
                                                            <span class="ql-formats">
                                                                <select class="ql-font">
                                                                    <option selected=""></option>
                                                                    <option value="serif"></option>
                                                                    <option value="monospace"></option>
                                                                </select>
                                                            </span>

                                                            <span class="ql-formats m-0">
                                                                <select class="ql-size">
                                                                    <option value="small"></option>
                                                                    <option selected=""></option>
                                                                    <option value="large"></option>
                                                                    <option value="huge"></option>
                                                                </select>
                                                            </span>
                                                        </div>
                                                        <!-- END : Fonts selector -->

                                                    </div>
                                                    <div class="d-flex justify-content-between">

                                                        <!-- Font decoration -->
                                                        <span class="ql-formats d-flex">
                                                            <button class="ql-bold"></button>
                                                            <button class="ql-italic"></button>
                                                            <button class="ql-underline"></button>
                                                            <button class="ql-strike"></button>
                                                        </span>


                                                        <!-- Vertical alignment -->
                                                        <span class="ql-formats d-flex">
                                                            <button class="ql-script" value="super"></button>
                                                            <button class="ql-script" value="sub"></button>
                                                            <button class="ql-direction" value="rtl"></button>
                                                        </span>

                                                    </div>
                                                </div>
                                                <div class="d-none d-sm-block opacity-10 vr mx-2 mb-3"></div>
                                                <div class="d-sm-flex flex-column justify-content-between mb-3">


                                                    <!-- List and indentation -->
                                                    <span class="ql-formats d-sm-flex m-0 me-md-3">
                                                        <button class="ql-list" value="ordered"></button>
                                                        <button class="ql-list" value="bullet"></button>
                                                        <button class="ql-indent" value="+1"></button>
                                                        <button class="ql-indent" value="-1"></button>
                                                    </span>

                                                    <!-- Text alignment -->
                                                    <span class="ql-formats d-sm-flex m-0 me-md-3">
                                                        <button class="ql-align" value=""></button>
                                                        <button class="ql-align" value="center"></button>
                                                        <button class="ql-align" value="right"></button>
                                                        <button class="ql-align" value="justify"></button>
                                                    </span>


                                                </div>
                                                <div class="d-none d-sm-block opacity-10 vr mx-2 mb-3"></div>
                                                <div class="d-flex justify-content-between mt-3 mt-sm-0 pb-3">
                                                    <div class="d-flex">

                                                        <!-- Blockquote and code -->
                                                        <span class="ql-formats m-0 d-flex">
                                                            <button class="ql-blockquote"></button>
                                                            <button class="ql-code-block"></button>
                                                        </span>

                                                        <div class="vr opacity-10 mx-2"></div>
                                                
                                                        <!-- Attachment -->
                                                        <span class="ql-formats d-flex">
                                                            <button class="ql-link"></button>
                                                            <button class="ql-image"></button>
                                                            <button class="ql-video"></button>
    
                                                           <asp:UpdatePanel ID="UpdatePanelFileUpload" runat="server">
                                                                <ContentTemplate>
                                                                    <!-- Custom File Upload Button -->
                                                                    <button type="button" id="custom-file-upload" class="ql-attach">
                                                                        📎 <!-- You can replace this with an icon -->
                                                                    </button>

                                                                    <!-- Hidden File Upload Control -->
                                                                    <asp:FileUpload ID="FileUploadControl" runat="server" CssClass="d-none" />
                                                                    <asp:Button ID="btnUpload" runat="server" CssClass="d-none" OnClick="BtnUpload_Click" />
                                                                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="d-none" />

                                                                </ContentTemplate>

                                                                <Triggers>
                                                                    <asp:PostBackTrigger ControlID="btnUpload" />
                                                                    <asp:PostBackTrigger ControlID="PublishButton" />
                                                                </Triggers>
                                                            </asp:UpdatePanel>
     
                                                        </span>
                                                           
                                                    </div>
                                                   <div>

                                                        <!-- Background and text colors -->
                                                        <span class="ql-formats m-0">
                                                            <select class="ql-color"></select>
                                                            <select class="ql-background"></select>
                                                        </span>


                                                        <!-- Headers -->
                                                        <span class="ql-formats me-1">
                                                            <button class="ql-header" value="1"></button>
                                                            <button class="ql-header" value="2"></button>
                                                        </span>

                                                        <!-- Clean -->
                                                        <span class="ql-formats">
                                                            <button class="ql-clean"></button>
                                                        </span>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <!-- END : Toolbar -->

                                        <!-- Editor -->
                                        <div id="_dm-quillAdvancedEditor" class="pb-5" contenteditable="true">
                                        </div>
                                        <asp:HiddenField ID="editorContentHidden" runat="server" />

                                        <script>
                                            // Sync Quill content to hidden field before form submission
                                            function syncQuillContent() {
                                                var editorContent = document.getElementById('_dm-quillAdvancedEditor').innerHTML;
                                                document.getElementById('<%= editorContentHidden.ClientID %>').value = editorContent;
                                            }

                                            // Load initial content into Quill editor
                                            document.addEventListener("DOMContentLoaded", function () {
                                                var initialContent = document.getElementById('<%= editorContentHidden.ClientID %>').value;
                                                document.getElementById('_dm-quillAdvancedEditor').innerHTML = initialContent;
                                            });
                                        </script>

                                        <!-- END : Editor -->
                                        <!-- File upload Button -->
                                       <script>
                                           document.addEventListener("DOMContentLoaded", function () {
                                               // Ensure Quill toolbar is fully loaded
                                               setTimeout(function () {
                                                   var uploadButton = document.getElementById("custom-file-upload");
                                                   var fileInput = document.getElementById('<%= FileUploadControl.ClientID %>');
                                                    var uploadTriggerButton = document.getElementById('<%= btnUpload.ClientID %>');  // Button to trigger server-side file upload

                                                        if (!uploadButton || !fileInput || !uploadTriggerButton) {
                                                            console.error("Upload button or file input not found!");
                                                            return;
                                                        }

                                                        // When button is clicked, open file picker
                                                        uploadButton.addEventListener("click", function () {
                                                            console.log("Upload button clicked, opening file picker...");
                                                            fileInput.click();
                                                        });

                                                        // Handle file selection
                                                   fileInput.addEventListener("change", function () {
                                                       console.log("file picked");
                                                            if (fileInput.files.length > 0) {
                                                                var fileName = fileInput.files[0].name;
                                                                console.log("File selected: " + fileName);  // Log selected file name

                                                                // Trigger the upload button click
                                                                console.log("Triggering the upload button click...");
                                                                uploadTriggerButton.click();
                                                            } else {
                                                                console.log("No file selected.");
                                                            }
                                                        });
                                                    }, 500); // Delay to ensure Quill initializes first
                                                });
                                       </script>


                                      <!--   End File Upload button -->
                                        
                                    <!-- END : Quill TextEditor -->

                                  </div>

                                </div>
                                <!-- Sidebar -->
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                 <div class="w-md-250px d-flex flex-column flex-grow-0 flex-shrink-0 card-body ps-md-0">
                                            <!-- Publish option -->
                                            <div class="mb-3">
                                                <div class="d-flex align-items-center justify-content-between mb-3">
                                                    <h5 class="m-0">Publish</h5>
                                                    <div class="dropdown">
                                                        <button class="btn btn-icon btn-sm btn-hover btn-light" data-bs-toggle="dropdown" aria-expanded="false">
                                                            <i class="demo-pli-dot-horizontal fs-4"></i>
                                                            <span class="visually-hidden">Toggle Dropdown</span>
                                                        </button>
                                                        <ul class="dropdown-menu dropdown-menu-end">
                                                            <li>
                                                                <a href="#" class="dropdown-item">
                                                                    <i class="demo-pli-pen-5 fs-5 me-2"></i>Edit
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#" class="dropdown-item text-danger">
                                                                    <i class="demo-pli-recycling fs-5 me-2"></i>Remove
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <hr class="dropdown-divider">
                                                            </li>
                                                            <li>
                                                                <a href="#" class="dropdown-item">
                                                                    <i class="demo-pli-magnifi-glass fs-5 me-2"></i>Preview
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#" class="dropdown-item">
                                                                    <i class="demo-pli-upload-to-cloud fs-5 me-2"></i>Publish
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#" class="dropdown-item">
                                                                    <i class="demo-pli-lock-user fs-5 me-2"></i>Lock
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <ul class="list-group list-group-borderless mb-3">
                                                    <li class="list-group-item d-flex justify-content-between align-items-start px-0">
                                                        <div class="me-auto">
                                                            <i class="demo-pli-information fs-5 me-2"></i>Status
                                                        </div>
                                                        <a href="#" class="h6 btn-link text-decoration-underline">Draft</a>
                                                    </li>
                                                    <li class="list-group-item d-flex justify-content-between align-items-start px-0">
                                                        <div class="me-auto">
                                                            <i class="demo-pli-male fs-5 me-2"></i>Visibility
                                                        </div>
                                                        <asp:CheckBox runat="server" ID="clientCheck" CssClass="inline" Text="Client" Checked="true" />
                                                    </li>
                                                    <li class="list-group-item d-flex justify-content-between align-items-start px-0">
                                                        <div class="me-auto">
                                                        </div>
                                                        <asp:CheckBox runat="server" ID="prospectCheck" CssClass="inline" Text="Prospect" Checked="true" />
                                                    </li>
                                                    <li class="list-group-item d-flex justify-content-between align-items-start px-0">
                                                        <div class="me-auto">
                                                            <i class="demo-pli-calendar-4 fs-5 me-2"></i>Publish
                                                        </div>
                                                        <a href="#" class="h6 btn-link text-decoration-underline">Immediately</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- END : Publish option -->
                                            <hr class="mb-4">

                                            <div class="mb-3">
                                                <h5 class="m-0">Categories</h5>

                                                <!-- Repeater for Categories -->
                                                <asp:Repeater ID="CategoryRepeater" runat="server" OnItemCommand="CategoryRepeater_ItemCommand">
                                                    <ItemTemplate>
                                                        <div class="d-flex align-items-center justify-content-between mb-3">
                                                            <div>
                                                                <!-- Checkbox for selecting categories -->
                                                                <asp:CheckBox
                                                                    ID="CategoryCheckBox"
                                                                    runat="server"
                                                                    CssClass="form-check-input me-2"
                                                                    Checked='<%# Eval("IsChecked") %>' />
                                                                <!-- Label for category name -->
                                                                <asp:Label
                                                                    ID="CategoryLabel"
                                                                    runat="server"
                                                                    CssClass="form-check-label"
                                                                    Text='<%# Eval("CategoryName") %>'></asp:Label>
                                                            </div>
                                                            <!-- Button for removing categories -->
                                                            <asp:Button
                                                                ID="RemoveButton"
                                                                runat="server"
                                                                CssClass="btn btn-sm btn-danger"
                                                                Text="Remove"
                                                                CommandName="Remove"
                                                                CommandArgument='<%# Eval("CategoryName") %>' />
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>

                                                <!-- Add Category Input -->
                                                <div class="input-group mb-2">
                                                    <input runat="server" id="categoryInput" class="form-control" type="text" placeholder="Add Category" />
                                                    <asp:Button ID="AddCategoryButton" runat="server" CssClass="btn btn-primary" OnClick="AddCategory_Click" Text="Add" />
                                                </div>
                                            </div>


                                            <!-- Sidebar Footer -->
                                            <hr class="mb-4">

                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <div class="d-grid">
                                                        <asp:Button
                                                            runat="server"
                                                            ID="PublishButton"
                                                            class="btn btn-primary btn-lg text-nowrap"
                                                            OnClientClick="syncQuillContent()"
                                                            OnClick="SaveEdit_Click"
                                                            Text="Save & Publish" />
                                                    </div>
                                                    <asp:Label ID="SaveStatusLabel" runat="server" CssClass="text-success" />
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <!-- END : Sidebar Footer -->


                                        </div>
                                </ContentTemplate>
                                </asp:UpdatePanel>
                                <!-- END : Sidebar -->
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
    </asp:Panel>
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <!-- END - PAGE CONTAINER -->

    <!-- Quill            [ OPTIONAL ] -->
    <script src="../assets/vendors/quill/quill.min.js"></script>
    <!-- Initialize       [ SAMPLE ]   -->
    <script src="../assets/pages/blog-add-edit-post.js"></script>

</asp:Content>
