using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    //const string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Study\RTU\Projects\Resume Builder Update\resumeBuilderData.mdf;Integrated Security=True;Connect Timeout=30";
    //const string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
    //SqlConnection con = new SqlConnection(connectionString);
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
                Label1.Text = "Welcome, " + rdr[0].ToString().ToUpper();
            }
            MultiView1.ActiveViewIndex = 1;
            con.Close();
        }
        else
        {

            MultiView1.ActiveViewIndex = 0;

        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
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
    protected void signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/registerPage.aspx");
    }
    protected void login_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/loginPage.aspx");
    }

}