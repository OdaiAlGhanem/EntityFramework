using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testselect
{
    public partial class CustomerDelete : System.Web.UI.Page
    {
        odaiEntities db = new odaiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            int id1 = Convert.ToInt32(id);
            //var record = db.Customers.FirstOrDefault(s => s.CustomerId == id1);
            
            var q = (from pd in db.Cities
                     join od in db.Customers on pd.CityId equals od.CityId where od.CustomerId == id1
                     select new
                     {
                         od.CustomerId,
                         od.CustomerName,
                         od.Age,
                         pd.City1,
                         od.Phone,
                         od.Email,
                         od.Photo,

                     }).ToList();
            //Label7.Text = record.CustomerName;
            //Label8.Text = Convert.ToString(record.Age);
            //Label11.Text = Convert.ToString(record.Phone);
            //Label10.Text = Convert.ToString(record.Email);
            //Image1.ImageUrl = record.Photo;
            //var x = from s in db.Cities select s;
            DetailsView1.DataSource = q;
            DetailsView1.DataBind();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            int id1 = Convert.ToInt32(id);
            var record = db.Customers.FirstOrDefault(s => s.CustomerId == id1); 
            db.Customers.Remove(record);    
            db.SaveChanges();
            Response.Redirect("Admin.aspx");
        }
      
    }
}