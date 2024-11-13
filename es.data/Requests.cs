using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;

namespace es.data
{
    public class Requests
    {
        //todo change Audience to isClientVisible and isProspectVisible
        public void addContent(string title, string contentBody, string tags, bool isClientVisible, bool isProspectVisible)
        {
            var context = new DataEntities();

            var row = new Content() { Title = title, Description = null, ContentBody = contentBody, ContentType = null, CategoryID = null, Tags = tags, Audience = null, PublishedDate = DateTime.Now, IsActive = true };
            context.Contents.Add(row);

            context.SaveChanges();
        }
        public void removeContent(int contentID)
        {
            var context = new DataEntities();

            var row = context.Contents.Find(contentID);
            context.Contents.Remove(row);

            context.SaveChanges();
        }
        public List<Content> getNContent(int N)
        {
            var context = new DataEntities();

            var row = context.Contents.Take(N).ToList();

            return row;
        }


        public void addCategory(string categoryName)
        {
            var context = new DataEntities();

            var row = new Category() {CategoryName = categoryName};
            context.Categories.Add(row);

            context.SaveChanges();
        }
        public void removeCategory(string categoryName)
        {
            var context = new DataEntities();

            var row = context.Categories.FirstOrDefault(CategoryName => CategoryName.CategoryName == categoryName);
            context.Categories.Remove(row);

            context.SaveChanges();
        }
        public List<string> getCategories()
        {
            var context = new DataEntities();

            List<string> categoryList = new List<string>();
            foreach (var category in context.Categories)
            {
                categoryList.Add(category.CategoryName);
            }

            return categoryList;
        }
    }
}
