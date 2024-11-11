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
    public partial class PostEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Create_Categories();
        }

        public void Create_Categories()
        {
            var request = new Requests();
            var categories = request.getCategories();

            foreach(string category in categories) {
                TableRow row = new TableRow();
                row.Attributes.Add("class", "form-check mb-3");

                TableCell cell = new TableCell();

                CheckBox cb = new CheckBox();
                cb.Attributes.Add("class", "form-check-input");
                cb.ID = category;
                cb.Text = category;
                cell.Controls.Add(cb);

                row.Cells.Add(cell);

                categoryTable.Rows.Add(row);
            }
        }
        protected void Add_Category(object sender, EventArgs e)
        {
            var request = new Requests();
            request.addCategory(this.categoryInput.Value);

            TableRow row = new TableRow();
            row.Attributes.Add("class", "form-check mb-3");

            TableCell cell = new TableCell();
            
            CheckBox cb = new CheckBox();
            cb.Attributes.Add("class", "form-check-input");
            cb.ID = this.categoryInput.Value;
            cb.Text = this.categoryInput.Value;
            cell.Controls.Add(cb);

            row.Cells.Add(cell);

            categoryTable.Rows.Add(row);
        }
        protected void Remove_Category(object sender, EventArgs e) 
        {
            var request = new Requests();
            request.removeCategory(this.categoryInput.Value);

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
            var categories = String.Join(",", categoryList);

            return categories;
        }
        public void Save_Edit(object sender, EventArgs e)
        {
            string title = this.contentTitle.Value;
            string editorContent = this.editor.InnerHtml;
            string categories = getCategories();



            var request = new Requests();
            request.addContent(title, editorContent, categories);
        }
    }
}