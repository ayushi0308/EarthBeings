using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EarthBeings.admin
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("adminlogin.aspx");
            }

        }

        protected void btnevent_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-HBKVPPNN\\SQLEXPRESS ; Initial Catalog=EarthbeingsDB ; Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "insert into Events (Location,Date,Time) values (@Location,@Date,@Time)";
            cmd.Parameters.AddWithValue("Location", txtlocation.Text);
            cmd.Parameters.AddWithValue("Date", txtdate.Text);
            cmd.Parameters.AddWithValue("Time", txttime.Text);

            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            con.Dispose();
            Label1.Text = "Event Added Successfully!";
        }
    }
}