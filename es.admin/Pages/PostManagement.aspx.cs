using es.data;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.Script.Serialization;
using System.Diagnostics;
using System.Drawing;

namespace es.admin
{
    public partial class PostManagement : Page
    {
        private readonly DatabaseService db = new DatabaseService();
        private int pageSize = 10;
        private int CurrentPage
        {
            get
            {
                if (ViewState["CurrentPage"] == null) { ViewState["CurrentPage"] = 0; }
                return (int)ViewState["CurrentPage"];
            }
            set { ViewState["CurrentPage"] = value; }
        }
        private string Search
        {
            get
            {
                if (ViewState["Search"] == null) { ViewState["Search"] = ""; }
                return (string)ViewState["Search"];
            }
            set { ViewState["Search"] = value; }

        }
        private int PageCount
        {
            get
            {
                if (ViewState["PageCount"] == null) { ViewState["PageCount"] = 1; }
                return (int)ViewState["PageCount"];
            }
            set { ViewState["PageCount"] = value; }
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            previousBTN.Enabled = CurrentPage > 0;

            nextBTN.Enabled = (CurrentPage + 1) * pageSize < PageCount;
        }



        protected void BindData()
        {
            var posts = db.Content.GetAll().Where(c => c.Title.Contains(Search)).ToList();

            if (true) //todo sort by drop down list
            {
                posts = posts.OrderByDescending(c => c.PublishedDate).ToList();
            }

            PageCount = posts.Count();
            posts = posts.Skip(CurrentPage * pageSize).Take(pageSize).ToList();

            Debug.WriteLine("currentPage " + CurrentPage);

            postTable.Rows.Clear();

            foreach (var post in posts)
            {
                TableRow row = new TableRow();
                row.ID = post.ContentID.ToString();

                row.Cells.Add(new TableCell
                {
                    Text = post.Title,
                    CssClass = "text-nowrap text-body-secondary"
                });

                row.Cells.Add(new TableCell
                {
                    Text = post.PublishedDate.ToString(),
                    CssClass = "text-nowrap text-body-secondary"
                });

                row.Cells.Add(new TableCell
                {
                    Text = post.Tags,
                    CssClass = "text-nowrap text-body-secondary"
                });



                TableCell buttonCell = new TableCell
                {
                    CssClass = "text-nowrap text-body-secondary"
                };

                Button btn1 = new Button {
                    Text = "Delete",
                    CssClass = "btn btn-icon btn-sm btn-hover btn-danger"
                };
                btn1.Click += new EventHandler((s, evnt) => this.Delete_Post(post.ContentID, row));
                buttonCell.Controls.Add(btn1);

                Button btn2 = new Button { 
                    Text = "Edit",
                    CssClass = "btn btn-icon btn-sm btn-hover btn-danger"
                };
                btn2.Click += new EventHandler((s, evnt) => this.Redirect(post.ContentID));
                buttonCell.Controls.Add(btn2);

                row.Cells.Add(buttonCell);


                this.postTable.Rows.Add(row);
            }
        }

        protected void Search_Posts(object sender, EventArgs e)
        {
            CurrentPage = 0;
            Search = this.search.Text;

            BindData();
        }

        protected void Delete_Post(int contentID, TableRow row)
        {
            Debug.WriteLine("Delete");
            db.Content.DeleteById(contentID);
            db.Save();

            row.Visible = false;

            BindData();
        }

        protected void Redirect(int contentID)
        {
            Response.Redirect("~/Pages/PostEdit.aspx?contentID=" + contentID);
        }

        protected void Previous(object sender, EventArgs e)
        {
            CurrentPage--;
            BindData();
        }

        protected void Next(object sender, EventArgs e)
        {
            CurrentPage++;
            BindData();
        }
    }
}