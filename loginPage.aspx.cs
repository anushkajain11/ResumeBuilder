using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loginPage : System.Web.UI.Page
{
    //const string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\abhI\Documents\Visual Studio 2013\WebSites\Resume Builder Update\resumeBuilderData.mdf;Integrated Security=True;Connect Timeout=30";
    //SqlConnection con = new SqlConnection(connectionString);
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
        //System.Web.UI.HtmlControls.HtmlGenericControl topDivision = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Master.FindControl("topNavBar");
        //topDivision.Attributes.CssStyle.Add(HtmlTextWriterStyle.BackgroundColor, "blue");
        //System.Web.UI.HtmlControls.HtmlGenericControl bottomDivision = (System.Web.UI.HtmlControls.HtmlGenericControl)this.Master.FindControl("bottomNavBar");
        //bottomDivision.Attributes.CssStyle.Add(HtmlTextWriterStyle.BackgroundColor, "blue");
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        com = new SqlCommand("select * from signup where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
        SqlDataReader rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            if (TextBox1.Text == "admin")
            {
                Session["user"] = "admin";
                rdr.Close();
                con.Close();
                Response.Redirect("~/homeLoggedIn.aspx" + "?u=" + Session["user"].ToString());

            }
            //if employee is logged in
            else
            {
                Session["user"] = rdr[0].ToString();
                rdr.Close();
                con.Close();
                Response.Redirect("~/homeLoggedIn.aspx" + "?u=" + Session["user"].ToString());

            }

        }
        else
        {
            rdr.Close();
            con.Close();
            Response.Write("<script>alert('Invalid Username or Password Combination');</script>");
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
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