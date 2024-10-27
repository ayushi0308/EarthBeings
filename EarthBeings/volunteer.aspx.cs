using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EarthBeings
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rdbtn_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-HBKVPPNN\\SQLEXPRESS ; Initial Catalog=EarthbeingsDB ; Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "insert into Signup (fullname,emailadd,password) values (@fullname,@emailadd,@password)";
            cmd.Parameters.AddWithValue("fullname", txtFullName.Text);
            cmd.Parameters.AddWithValue("emailadd", txtEmail.Text);
            cmd.Parameters.AddWithValue("password", txtPwd.Text);
            
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
            con.Dispose();
            Response.Redirect("Login.aspx");
        }
    }
}