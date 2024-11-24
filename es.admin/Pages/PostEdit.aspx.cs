using Microsoft.Ajax.Utilities;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using es.data;
//using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;

namespace es.admin
{
    public partial class PostEdit : Page
    {
        private readonly DatabaseService db = new DatabaseService();

        protected void Page_Load(object sender, EventArgs e)
        {
            Create_Categories();
        }

        public void Create_Categories()
        {
            var categories = db.Category.GetAll().ToList();

            foreach(var category in categories) {
                TableRow row = new TableRow();
                row.Attributes.Add("class", "form-check mb-3");

                TableCell cell = new TableCell();

                CheckBox cb = new CheckBox();
                cb.Attributes.Add("class", "inline");
                cb.ID = category.CategoryName;
                cb.Text = category.CategoryName;
                cell.Controls.Add(cb);

                row.Cells.Add(cell);

                categoryTable.Rows.Add(row);
            }
        }
        protected void Add_Category(object sender, EventArgs e)
        {
            db.Category.Insert(new Category{CategoryName = this.categoryInput.Value});
            db.Save();

            TableRow row = new TableRow();
            row.Attributes.Add("class", "form-check mb-3");

            TableCell cell = new TableCell();
            
            CheckBox cb = new CheckBox();
            cb.Attributes.Add("class", "inline");
            cb.ID = this.categoryInput.Value;
            cb.Text = this.categoryInput.Value;
            cell.Controls.Add(cb);

            row.Cells.Add(cell);

            categoryTable.Rows.Add(row);
        }
        protected void Remove_Category(object sender, EventArgs e) 
        {
            db.Category.RemoveCategoryByName(this.categoryInput.Value);
            db.Save();


            var cat = this.categoryTable.FindControl(this.categoryInput.Value);
            cat.Visible = false;
        }


        public string getCategories()
        {
            List<string> categoryList = new List<string>();
            foreach (TableRow row in categoryTable.Rows)
            {
                foreach (TableCell cell in row.Cells)
                {
                    foreach (Control ctrl in cell.Controls)
                    {
                        if (ctrl is CheckBox)
                        {
                            CheckBox txt = (CheckBox)ctrl;
                            if (txt.Checked)
                            {
                                categoryList.Add(txt.Text);
                            }
                        }
                    }
                }
            }
            var categories = String.Join(", ", categoryList);

            return categories;
        }
        public void Save_Edit(object sender, EventArgs e)
        {
            string title = this.contentTitle.Value;
            string editorContent = this.editor.InnerHtml;
            string categories = getCategories();
            bool isClientVisible = this.clientCheck.Checked;
            bool isProspectVisible = this.prospectCheck.Checked;


            db.Content.Insert(new data.Content
            {
                Title = title,
                ContentBody = editorContent,
                ContentType = null,
                CategoryID = null,
                Tags = categories,
                PublishedDate = DateTime.Now,
                IsActive = true,
                isClientVisible = isClientVisible,
                isProspectVisible = isProspectVisible
            });
            db.Save();
        }
    }
}