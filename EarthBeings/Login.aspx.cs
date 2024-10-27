using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace EarthBeings
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnlog_Click1(object sender, EventArgs e)
        {
            string Conn=("Data Source=LAPTOP-HBKVPPNN\\SQLEXPRESS ; Initial Catalog=EarthbeingsDB ; Integrated Security=True");
            
                if (txtUname.Text == "" && txtpd.Text == "")
                {
                    lbl1.Text = "Please Enter Username and Password ";
            }
                else
                {
                    SqlConnection con = new SqlConnection(Conn);
                    SqlCommand cmd = new SqlCommand(" select * from Signup where emailadd=@Username and password=@UserPass", con);
                    cmd.Parameters.AddWithValue("@Username", txtUname.Text);
                    cmd.Parameters.AddWithValue("@UserPass", txtpd.Text);

                    con.Open();
                    SqlDataAdapter adpt = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adpt.Fill(ds);
                    con.Close();
                    int count = ds.Tables[0].Rows.Count;
                    if (count == 1)
                    {

                        Session["Username"] = txtUname.Text;
                        Response.Redirect("index.aspx");
                    }
                    else
                    {
                        lbl1.Text = "Invalid Login!! Please try again";

                    }
                             
                }
            
        }
    }
}