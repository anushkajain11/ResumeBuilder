using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactUs : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Session["user"].ToString().Equals(""))
        {
            con.Open();
            com = new SqlCommand("select fname from signup where username='" + Session["user"].ToString() + "'", con);
            SqlDataReader rdr = com.ExecuteReader();
            if (rdr.Read())
            {
                Label4.Text = "Welcome, " + rdr[0].ToString().ToUpper();
            }
            MultiView1.ActiveViewIndex = 1;
            con.Close();
        }
        else
        {

            MultiView1.ActiveViewIndex = 0;

        }
    }
    protected void signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/registerPage.aspx");
    }
    protected void login_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/loginPage.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (Session["user"] == "")
        {
            Response.Redirect("~/home.aspx");
        }
        else
        {
            Response.Redirect("~/homeLoggedIn.aspx" + "?u=" + Session["user"]);
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/contactUs.aspx");
    }
}