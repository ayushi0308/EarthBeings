using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EarthBeings
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnmsg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-HBKVPPNN\\SQLEXPRESS ; Initial Catalog=EarthbeingsDB ; Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "insert into Contact (Fullname,Email,PhoneNumber,Country,City,Message) values (@Fullname,@Email,@PhoneNumber,@Country,@City,@Message)";
            cmd.Parameters.AddWithValue("Fullname", txtname.Text);
            cmd.Parameters.AddWithValue("Email", txtemail.Text);
            cmd.Parameters.AddWithValue("PhoneNumber", txtph.Text);
            cmd.Parameters.AddWithValue("Country", txtcountry.Text);
            cmd.Parameters.AddWithValue("City", txtcity.Text);
            cmd.Parameters.AddWithValue("Message", txtmsg.Text);

            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            con.Dispose();
            Response.Redirect("Feedback.aspx");
        }
    }
}