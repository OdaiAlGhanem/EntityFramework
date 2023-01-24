using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testselect
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        odaiEntities db = new odaiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            

            var q = (from pd in db.Cities
                     join od in db.Customers on pd.CityId equals od.CityId
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

            GridView1.DataSource = q;
            GridView1.DataBind();

            GridView1.DataSource = q;
            GridView1.DataBind();
            var count = (from pd in db.Customers select pd).Count();
            Label7.Text = count.ToString();

            var ct = db.Customers.ToList();
            var av = ct.Average(c => c.Age);
            Label8.Text = av.ToString();

            var ma = ct.Max(c => c.Age);
            Label9.Text = ma.ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != "")
            {
                GridView1.Visible = false;

                var txt = TextBox2.Text;
                var txtid = Convert.ToInt32(txt);

                var search = (from pd in db.Cities
                              join od in db.Customers on pd.CityId equals od.CityId
                              where od.CustomerId.Equals(txtid)
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
                GridView2.DataSource = search;
                GridView2.DataBind();
            }
            else
            {
                return;

            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;

            var txt = TextBox3.Text;

            var search = (from pd in db.Cities
                          join od in db.Customers on pd.CityId equals od.CityId
                          where od.CustomerName.Contains(txt)
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
            GridView2.DataSource = search;
            GridView2.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateCustomer.aspx");
        }

       
    }
}



   