using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registerPage : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            com = new SqlCommand("select * from state", con);
            SqlDataAdapter data = new SqlDataAdapter();
            data.SelectCommand = com;
            DataSet ds = new DataSet();
            data.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataBind();
            con.Close();
            DropDownList2.Enabled = false;

        }
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

        if (Page.IsValid)
        {
            con.Open();
            if (TextBox6.Text == "")
            {
                if (RadioButtonList1.SelectedIndex == 0)
                    com = new SqlCommand("insert into signup values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox1.Text.ToUpper() + "','" + TextBox2.Text.ToUpper() + "','" + DropDownList1.SelectedItem.ToString().ToUpper() + "','" + DropDownList2.SelectedItem.ToString().ToUpper() + "','" + "MALE" + "'," + "null" + ")", con);
                else
                    com = new SqlCommand("insert into signup values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox1.Text.ToUpper() + "','" + TextBox2.Text.ToUpper() + "','" + DropDownList1.SelectedItem.ToString().ToUpper() + "','" + DropDownList2.SelectedItem.ToString().ToUpper() + "','" + "FEMALE" + "'," + "null" + ")", con);
            }
            else
            {
                if (RadioButtonList1.SelectedIndex == 0)
                    com = new SqlCommand("insert into signup values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox1.Text.ToUpper() + "','" + TextBox2.Text.ToUpper() + "','" + DropDownList1.SelectedItem.ToString().ToUpper() + "','" + DropDownList2.SelectedItem.ToString().ToUpper() + "','" + "MALE" + "','" + Convert.ToDouble(TextBox6.Text) + "')", con);
                else
                    com = new SqlCommand("insert into signup values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox1.Text.ToUpper() + "','" + TextBox2.Text.ToUpper() + "','" + DropDownList1.SelectedItem.ToString().ToUpper() + "','" + DropDownList2.SelectedItem.ToString().ToUpper() + "','" + "FEMALE" + "','" + Convert.ToDouble(TextBox6.Text) + "')", con);
            }

            com.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Registration successful....Login to continue');</script>");
            signUpFromFlush();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        signUpFromFlush();



    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex != 0)
        {
            DropDownList2.Enabled = true;
            con.Open();
            com = new SqlCommand("select * from city where stateid=" + DropDownList1.SelectedValue, con);
            SqlDataAdapter data = new SqlDataAdapter();
            data.SelectCommand = com;
            DataSet ds = new DataSet();
            data.Fill(ds);
            DropDownList2.DataSource = ds;
            DropDownList2.DataBind();
            con.Close();
        }
        else
        {
            con.Open();
            com = new SqlCommand("select * from city where stateid=" + DropDownList1.SelectedValue, con);
            SqlDataAdapter data = new SqlDataAdapter();
            data.SelectCommand = com;
            DataSet ds = new DataSet();
            data.Fill(ds);
            DropDownList2.DataSource = ds;
            DropDownList2.DataBind();
            con.Close();
            DropDownList2.Enabled = false;
        }
    }
    void signUpFromFlush()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        RadioButtonList1.SelectedIndex = -1;
        DropDownList1.SelectedIndex = -1;
        DropDownList2.SelectedIndex = -1;
        DropDownList2.Enabled = false;
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        con.Open();
        com = new SqlCommand("select username from signup where username='" + args.Value + "'", con);
        SqlDataReader rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            args.IsValid = false;

        }
        else
        {
            args.IsValid = true;
        }
        rdr.Close();
        con.Close();
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {

        int i = 0;
        bool exceptionFlag = false;
        try
        {
            Convert.ToDouble(args.Value);
        }
        catch
        {
            args.IsValid = false;
            exceptionFlag = true;

        }
        if (exceptionFlag == false)
        {
            long n = Convert.ToInt64(args.Value);
            while (n > 0)
            {
                n = n / 10;
                i++;
            }
            if (i == 10)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
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