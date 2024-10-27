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
    public class Class1
    {
        public void Func()
        {
            /* query example */
            var context = new DataEntities();

            /* query add to table */
            // Reminder - DBEntityValidationException, during debugger under watch 
            //var std = new Users() { FirstName="joe", LastName="smith", Email="@example.com", IsClient=true, DeviceID="cook" };
            //context.Users.Add(std);
            //context.SaveChanges();

            /* query read from table */
            var data = context.Users;
            foreach (var user in data) {
                Debug.WriteLine(user.FirstName);
            }
            /**/
        }
    }
}
