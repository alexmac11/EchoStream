using System;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using es.data;
using Ganss.Xss;

namespace es.admin
{
    public class CategoryItem
    {
        public string CategoryName { get; set; }
        public bool IsChecked { get; set; }
    }

    public partial class PostEdit : Page
    {
        private readonly DatabaseService db = new DatabaseService();
        private readonly HtmlSanitizer sanitizer = new HtmlSanitizer();
        private int ContentID
        {
            get { return ViewState["ContentID"] != null ? (int)ViewState["ContentID"] : 0; }
            set { ViewState["ContentID"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (int.TryParse(Request.QueryString["contentID"], out int contentID))
                {
                    if (contentID != 0)
                    {
                        ViewState["ContentID"] = contentID;
                    }
                }

                LoadCategories();
                LoadPost();
            }
        }


        private void LoadPost()
        {
            var post = db.Content.GetById(ContentID);

            if (post != null)
            {
                contentTitle.Value = Server.HtmlEncode(post.Title);
                editorContentHidden.Value = sanitizer.Sanitize(post.ContentBody);
                clientCheck.Checked = post.isClientVisible;
                prospectCheck.Checked = post.isProspectVisible;
            }
            else
            {
                // Default quill editor content
                editorContentHidden.Value = @"
                    <h1>These sweet mornings of spring</h1>
                    <p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked.</p>
                    <br>
                    <p><strong><em>""What's happened to me?""</em></strong> he thought. It wasn't a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. <a href=""#"" class=""btn-link"">A collection of textile samples</a> lay spread out on the table.</p>
                    <br>
                    <p>Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! ""Now fax quiz Jack!"" my brave ghost pled. Five quacking zephyrs jolt my wax bed. Flummoxed by job, kvetching W. zaps Iraq. Cozy sphinx waves quart jug of bad milk. A very bad quack might jinx zippy fowls. Few quips galvanized the mock jury box. <span style=""background-color: rgb(0, 71, 178); color: rgb(255, 255, 255);"">Quick brown dogs jump over the lazy fox.</span></p>
                    <br>
                    <br>
                    <p><span class=""ql-size-large"" style=""color: rgb(107, 36, 178);"">Brick quiz</span> whangs jumpy veldt fox. Bright vixens jump; dozy fowl quack. Quick wafting zephyrs vex bold Jim. Quick zephyrs blow, vexing daft Jim.</p>
                ";
            }
        }

        private void LoadCategories()
        {
            var categories = db.Category.GetAll().ToList();

            // Initialize the category list with unchecked state
            var categoryList = categories.Select(c => new CategoryItem
            {
                CategoryName = Server.HtmlEncode(c.CategoryName),
                IsChecked = false
            }).ToList();

            if (ContentID != 0)
            {
                // Fetch selected categories for the existing post
                var selectedCategories = db.Content.GetById(ContentID)
                                          .Tags
                                          .Split(',')
                                          .Select(t => t.Trim())
                                          .ToList();

                // Update the IsChecked flag for matching categories
                foreach (var category in categoryList)
                {
                    if (selectedCategories.Contains(category.CategoryName, StringComparer.OrdinalIgnoreCase))
                    {
                        category.IsChecked = true;
                    }
                }
            }


            CategoryRepeater.DataSource = categoryList;
            CategoryRepeater.DataBind();
        }


        protected void AddCategory_Click(object sender, EventArgs e)
        {
            string categoryName = categoryInput.Value.Trim();
            if (!string.IsNullOrEmpty(categoryName))
            {
                db.Category.Insert(new Category { CategoryName = categoryName });
                db.Save();

                LoadCategories();
            }
        }

        protected void CategoryRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                string categoryName = e.CommandArgument.ToString().Trim();
                db.Category.RemoveCategoryByName(categoryName);
                db.Save();

                LoadCategories();
            }
        }


        public string GetSelectedCategories()
        {
            return string.Join(", ",
                CategoryRepeater.Items.Cast<RepeaterItem>()
                    .Where(item => ((CheckBox)item.FindControl("CategoryCheckBox")).Checked)
                    .Select(item => ((Label)item.FindControl("CategoryLabel")).Text));
        }

        protected void SaveEdit_Click(object sender, EventArgs e)
        {
            string title = contentTitle.Value.Trim();
            string editorContent = sanitizer.Sanitize(editorContentHidden.Value);
            string categories = GetSelectedCategories();
            bool isClientVisible = clientCheck.Checked;
            bool isProspectVisible = prospectCheck.Checked;

            byte[] fileData = null;
            string fileName = null;
            string contentType = null;

            // Check if a new file was uploaded
            bool isNewFileUploaded = Session["UploadedFileData"] != null;

            if (isNewFileUploaded)
            {
                fileData = (byte[])Session["UploadedFileData"];
                fileName = (string)Session["UploadedFileName"];
            }

            if (ContentID == 0)
            {
                // Save New Post
                db.Content.Insert(new data.Content
                {
                    Title = title,
                    ContentBody = editorContent,
                    ContentType = contentType,
                    Tags = categories,
                    PublishedDate = DateTime.Now,
                    IsActive = true,
                    isClientVisible = isClientVisible,
                    isProspectVisible = isProspectVisible,
                    FileName = fileName,
                    FileData = fileData
                });
            }
            else
            {
                // Update Existing Post
                var post = db.Content.GetById(ContentID);

                if (post != null)
                {
                    post.Title = title;
                    post.ContentBody = editorContent;
                    post.Tags = categories;
                    post.isClientVisible = isClientVisible;
                    post.isProspectVisible = isProspectVisible;

                    // Only update file details if a new file is uploaded
                    if (isNewFileUploaded)
                    {
                        post.FileName = fileName;
                        post.FileData = fileData;
                    }

                    db.Content.Update(post);
                }
            }

            db.Save();

            // Clear session after saving
            Session["UploadedFileData"] = null;
            Session["UploadedFileName"] = null;
        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    // Read the file data
                    byte[] fileData;
                    using (BinaryReader reader = new BinaryReader(FileUploadControl.PostedFile.InputStream))
                    {
                        fileData = reader.ReadBytes(FileUploadControl.PostedFile.ContentLength);
                    }

                    // Store file in Session for retrieval in SaveEdit_Click
                    Session["UploadedFileData"] = fileData;
                    Session["UploadedFileName"] = FileUploadControl.FileName;
                    

                    lblMessage.Text = "File uploaded successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Please try again later.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    System.Diagnostics.Debug.WriteLine("File Upload Error: " + ex.ToString());
                }
            }
            else
            {
                lblMessage.Text = "Please select a file to upload.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

    }

}
