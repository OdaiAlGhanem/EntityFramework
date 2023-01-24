using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Testselect
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        odaiEntities db = new odaiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack)
            {
                var id = Request.QueryString[ "id"];
                int id1 = Convert.ToInt32(id);
                var record = db.Customers.FirstOrDefault(s => s.CustomerId == id1);
                TextBox1.Text = record.CustomerName;
                TextBox2.Text = Convert.ToString( record.Age);
                TextBox3.Text = record.Email;
                TextBox4.Text = Convert.ToString(record.Phone);
                Image1.ImageUrl = record.Photo;
                var x = from s in db.Cities select s;
                DropDownList1.DataSource = x.ToList();
                DropDownList1.DataTextField = "City1";
                DropDownList1.DataValueField = "CityId";
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            var id = Request.QueryString["id"];
            int id1 = Convert.ToInt32(id);
            var record = db.Customers.FirstOrDefault(s => s.CustomerId == id1);
            record.CustomerName = TextBox1.Text;
            record.Email = TextBox3.Text;
            record.Phone = Convert.ToInt32(TextBox4.Text);
            record.Age = Convert.ToInt32(TextBox2.Text);
            record.CityId = Convert.ToInt32(DropDownList1.SelectedValue);
            if(FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(System.IO.Path.Combine(Server.MapPath("Images"), FileUpload1.FileName));
                record.Photo = "Images/" + FileUpload1.FileName;

            }
            db.SaveChanges();
            Response.Redirect("Admin.aspx");
        }
    }
}