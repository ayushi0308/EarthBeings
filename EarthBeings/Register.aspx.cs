using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EarthBeings
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-HBKVPPNN\\SQLEXPRESS ; Initial Catalog=EarthbeingsDB ; Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "insert into Register (Name,Email,Number,Location,Date) values (@Name,@Email,@Number,@Location,@Date)";
            cmd.Parameters.AddWithValue("Name", namereg.Text);
            cmd.Parameters.AddWithValue("Email", emailreg.Text);
            cmd.Parameters.AddWithValue("Number", phreg.Text);
            cmd.Parameters.AddWithValue("Location", locreg.SelectedValue);
            cmd.Parameters.AddWithValue("Date", datereg.Text);

            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            con.Dispose();
            Response.Redirect("registersuccess.aspx");
        }
    }
}