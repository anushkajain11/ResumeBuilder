using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homeLoggedIn : System.Web.UI.Page
{
    enum SearchType
    {
        byname,
        byusername,
        bylocation,
        byskill
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
    SqlCommand com;
    string username;
    string searchType;
    string sOut;
    static string tOut;
    DateTime date;
    static string template="";



    //template1
    //<div id="Panel18"
    //<span id="Label14">

    //template2
    //<div id="Panel19"
    //<span id="Label15">

    //template3
    //<div id="Panel20"
    //<span id="Label186"
    protected override void Render(HtmlTextWriter writer)
    {

        StringBuilder sbOut = new StringBuilder();
        StringWriter swOut = new StringWriter(sbOut);
        HtmlTextWriter htwOut = new HtmlTextWriter(swOut);
        base.Render(htwOut);
        sOut = sbOut.ToString();

        // Send sOut as an Email
        try
        {
            if(template.Equals("template1"))
            {
                tOut=sOut.Substring(sOut.IndexOf("<div id=\"Panel18\""),sOut.IndexOf("<span id=\"Label14\">")-sOut.IndexOf("<div id=\"Panel18\""));
            }
            else if(template.Equals("template2"))
            {
                tOut = sOut.Substring(sOut.IndexOf("<div id=\"Panel19\""), sOut.IndexOf("<span id=\"Label15\">") - sOut.IndexOf("<div id=\"Panel19\""));
            }
            else if (template.Equals("template3"))
            {
                tOut = sOut.Substring(sOut.IndexOf("<div id=\"Panel20\""), sOut.IndexOf("<span id=\"Label186\">") - sOut.IndexOf("<div id=\"Panel20\""));
            }
            else
            {
 
            }
           // tOut = sOut.Substring(sOut.IndexOf("<table"), sOut.IndexOf("</table>") - sOut.IndexOf("<table"));
        }
        catch
        {

        }
        finally
        {
            writer.Write(sOut);
        }


    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["user"] = "abhinavjain";
        username = "abhinavjain";

        if (!Session["user"].ToString().Equals(""))
        {
            con.Open();
            com = new SqlCommand("select fname from signup where username='" + Session["user"].ToString() + "'", con);
            SqlDataReader rdr = com.ExecuteReader();
            if (rdr.Read())
            {
                Label1.Text = "Welcome, " + rdr[0].ToString().ToUpper();
            }
            MultiView10.ActiveViewIndex = 1;
            con.Close();
        }
        else
        {

            MultiView10.ActiveViewIndex = 0;

        }

        
        if (!IsPostBack)
        {
            MultiView3.ActiveViewIndex = 3;
            MultiView2.ActiveViewIndex = 3;
        }
        GridView1.Visible = false;
        //username = Request.QueryString["u"].ToString();

        if (username == "admin")
        {
            MultiView1.ActiveViewIndex = 1;
        }
        else
        {
            MultiView1.ActiveViewIndex = 0;
            con.Open();
            SqlCommand com1 = new SqlCommand("select * from vacancy", con);
            SqlDataAdapter adap1 = new SqlDataAdapter(com1);
            DataSet ds1 = new DataSet();
            adap1.Fill(ds1);
            DataList1.DataSource = ds1.Tables[0].DefaultView;
            DataList1.DataBind();
            if (DataList1.Items.Count == 0)
            {
                //Response.Write("<script>alert('Nothing found in electronics for that...Sorry')</script>");
            }
            con.Close();


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

    private void resumeFormFlush()
    {
        TextBox1.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox2.Text = "";
        TextBox6.Text = "";
        TextBox10.Text = "";
        TextBox23.Text = "";
        TextBox24.Text = "";
        TextBox25.Text = "";
        TextBox26.Text = "";
        TextBox27.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox22.Text = "";
    }

    void bindDataTemplate1()
    {
        int secondaryYear = 0, seniorYear = 0, graduationYear = 0, pgYear = 0;
        string secondaryBoard = "", seniorBoard = "", graduationBoard = "", pgBoard = "";
        double secondaryMarks = 0, seniorMarks = 0, graduationMarks = 0, pgMarks = 0;
        string address = "", dob = "", about = "", hobby1 = "", hobby2 = "", hobby3 = "";
        string objective = "", ec1 = "", ec2 = "", ec3 = "";
        string fname = "", lname = "", email = "", state = "", city = "", mobno = "", sex = "";
        string from1 = "", to1 = "", jobtitle1 = "", description1 = "", organisation1 = "", from2 = "", to2 = "", jobtitle2 = "", description2 = "", organisation2 = "";
        con.Open();
        com = new SqlCommand("select * from ACADEMICS where username='" + Session["user"] + "'", con);
        SqlDataReader rdr = com.ExecuteReader();
        if (rdr == null)
        {
            MultiView3.ActiveViewIndex = 0;
            Response.Write("<script>alert('No Resume saved, Please make a resume first');</script>");
            return;
        }
        if (rdr.Read())
        {
            secondaryYear = Convert.ToInt32(rdr[1]);
            secondaryBoard = rdr[2].ToString().ToUpper();
            secondaryMarks = Convert.ToDouble(rdr[3]);

            seniorYear = Convert.ToInt32(rdr[4]);
            seniorBoard = rdr[5].ToString().ToUpper();
            seniorMarks = Convert.ToDouble(rdr[6]);


            if (!rdr[7].Equals(DBNull.Value))
            {
                graduationYear = Convert.ToInt32(rdr[7]);
                graduationBoard = rdr[8].ToString().ToUpper();
                graduationMarks = Convert.ToDouble(rdr[9]);

                if (!rdr[10].Equals(DBNull.Value))
                {
                    pgYear = Convert.ToInt32(rdr[10]);
                    pgBoard = rdr[11].ToString();
                    pgMarks = Convert.ToDouble(rdr[12]);
                }
            }

        }
        rdr.Close();

        com = new SqlCommand("select * from personalDetails where username='" + Session["user"] + "'", con);
        rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            address = rdr[1].ToString().ToUpper();
            if (!rdr[2].Equals(DBNull.Value))
                dob = rdr[2].ToString();
            about = rdr[3].ToString();
            if (!rdr[4].Equals(DBNull.Value))
                hobby1 = rdr[4].ToString();
            if (!rdr[5].Equals(DBNull.Value))
                hobby2 = rdr[5].ToString();
            if (!rdr[6].Equals(DBNull.Value))
                hobby3 = rdr[6].ToString();
        }

        rdr.Close();

        com = new SqlCommand("select * from resumeDetails where username='" + Session["user"] + "'", con);
        rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            objective = rdr[1].ToString().ToUpper();
            if (!rdr[2].Equals(DBNull.Value))
                ec1 = rdr[2].ToString().ToUpper();
            if (!rdr[3].Equals(DBNull.Value))
                ec2 = rdr[3].ToString().ToUpper();
            if (!rdr[4].Equals(DBNull.Value))
                ec3 = rdr[4].ToString().ToUpper();
        }
        rdr.Close();

        com = new SqlCommand("select* from signup where username='" + Session["user"] + "'", con);
        rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            fname = rdr[3].ToString();
            lname = rdr[4].ToString();
            email = rdr[2].ToString();
            state = rdr[5].ToString();
            city = rdr[6].ToString();
            mobno = rdr[8].ToString();
            sex = rdr[7].ToString();
        }
        rdr.Close();

        com = new SqlCommand("select * from experience where username='" + Session["user"] + "'", con);
        rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            if (!rdr[1].Equals(DBNull.Value))
            {
                from1 = rdr[1].ToString().Substring(0, 9);
                if (!rdr[2].Equals(DBNull.Value))
                {
                    to1 = rdr[2].ToString().Substring(0, 10);
                }
                else
                {
                    to1 = "present";
                }
                if (!rdr[3].Equals(DBNull.Value))
                    jobtitle1 = rdr[3].ToString();
                if (!rdr[4].Equals(DBNull.Value))
                    organisation1 = rdr[4].ToString();
                if (!rdr[5].Equals(DBNull.Value))
                    description1 = rdr[5].ToString();
            }


            if (!rdr[6].Equals(DBNull.Value))
            {
                from2 = rdr[6].ToString().Substring(0, 10);
                if (!rdr[7].Equals(DBNull.Value))
                {
                    to2 = rdr[7].ToString().Substring(0, 10);
                }
                else
                {
                    to2 = "present";

                }
                if (!rdr[8].Equals(DBNull.Value))
                    jobtitle2 = rdr[8].ToString();
                if (!rdr[9].Equals(DBNull.Value))
                    organisation2 = rdr[9].ToString();
                if (!rdr[10].Equals(DBNull.Value))
                    description2 = rdr[10].ToString();
            }

        }
        rdr.Close();
        con.Close();

        for (int i = BulletedList3.Items.Count; i < BulletedList3.Items.Capacity;i++ )
            BulletedList3.Items.Add(new ListItem());

        for (int i = BulletedList2.Items.Count; i < BulletedList2.Items.Capacity; i++)
            BulletedList2.Items.Add(new ListItem());

        for (int i = BulletedList1.Items.Count; i < BulletedList1.Items.Capacity; i++)
            BulletedList1.Items.Add(new ListItem());

        Label93.Text = fname.ToUpper() + " " + lname.ToUpper();
        Label95.Text = address.ToUpper();
        Label97.Text = "+91-" + mobno;
        Label130.Text = email;
        Label100.Text = objective.ToUpper();

        if (from1 != "" && from2 != "")
        {
            Label107.Text = jobtitle1.ToUpper() + ", " + organisation1.ToUpper();
            Label108.Text = from1 + " to " + to1;
            Label109.Text = description1.ToUpper();

            Label110.Text = jobtitle2.ToUpper() + ", " + organisation2.ToUpper();
            Label111.Text = from2 + " to " + to2; ;
            Label112.Text = description2.ToUpper();
        }
        else
        {
            Label107.Text = jobtitle1.ToUpper() + ", " + organisation1.ToUpper();
            Label108.Text = from1 + " to " + to1;
            Label109.Text = description1.ToUpper();

            Label110.Visible = false;
            Label111.Visible = false;
            Label112.Visible = false;
        }



        if (pgYear != 0)
        {
            if (pgYear > DateTime.Now.Year)
            {
                BulletedList1.Items[0].Text = " Currently Pursuing my Post Graduation from " + pgBoard.ToUpper() + " in " + pgYear.ToString() + " with an aggregate of " + pgMarks.ToString() + "%.";
                // Label114.Text = " Currently Pursuing my Post Graduation from " + pgBoard.ToUpper() + " in " + pgYear.ToString() + " with an aggregate of " + pgMarks.ToString() + "%.";
            }
            else
            {
                BulletedList1.Items[0].Text = "Completed my Post Graduation from " + pgBoard.ToUpper() + " in " + pgYear.ToString() + " with " + pgMarks.ToString() + "%.";
                // Label114.Text = "Completed my Post Graduation from " + pgBoard.ToUpper() + " in " + pgYear.ToString() + " with " + pgMarks.ToString() + "%.";
            }
            BulletedList1.Items[1].Text = "Done my Graduation from " + graduationBoard.ToUpper() + " in " + graduationYear.ToString() + " with " + graduationMarks.ToString() + "%.";
            BulletedList1.Items[2].Text = "Done my Senior Education from " + seniorBoard.ToUpper() + " in " + seniorYear.ToString() + " with " + seniorMarks.ToString() + "%.";
            BulletedList1.Items[3].Text = "Done my Secondary Education from " + secondaryBoard.ToUpper() + " in " + secondaryYear.ToString() + " with " + secondaryMarks.ToString() + "%.";
            //Label115.Text = "Done my Graduation from " + graduationBoard.ToUpper() + " in " + graduationYear.ToString() + " with " + graduationMarks.ToString() + "%.";
            //Label116.Text = "Done my Senior Education from " + seniorBoard.ToUpper() + " in " + seniorYear.ToString() + " with " + seniorMarks.ToString() + "%.";
            //Label117.Text = "Done my Secondary Education from " + secondaryBoard.ToUpper() + " in " + secondaryYear.ToString() + " with " + secondaryMarks.ToString() + "%.";
        }
        else
        {
            //if(BulletedList3.Items.Count+1==BulletedList3.Items.Capacity)
            BulletedList1.Items.RemoveAt(3);
            //Label117.Visible = false;
            if (graduationYear != 0)
            {
                if (graduationYear > DateTime.Now.Year)
                {
                    BulletedList1.Items[0].Text = "Currently pursuing my Graduation from " + graduationBoard.ToUpper() + " in " + graduationYear.ToString() + " with " + graduationMarks.ToString() + "%.";
                    //Label114.Text = "Currently pursuing my Graduation from " + graduationBoard.ToUpper() + " in " + graduationYear.ToString() + " with " + graduationMarks.ToString() + "%.";
                }
                else
                {
                    BulletedList1.Items[0].Text = "Done my Graduation from " + graduationBoard.ToUpper() + " in " + graduationYear.ToString() + " with " + graduationMarks.ToString() + "%.";
                    // Label114.Text = "Done my Graduation from " + graduationBoard.ToUpper() + " in " + graduationYear.ToString() + " with " + graduationMarks.ToString() + "%.";
                }

                BulletedList1.Items[1].Text = "Completed my Senior Education from " + seniorBoard.ToUpper() + " in " + seniorYear.ToString() + " with " + seniorMarks.ToString() + "%.";
                BulletedList1.Items[2].Text = "Done my Secondary Education from " + secondaryBoard.ToUpper() + " in " + secondaryYear.ToString() + " with " + secondaryMarks.ToString() + "%.";
                // Label115.Text = "Completed my Senior Education from " + seniorBoard.ToUpper() + " in " + seniorYear.ToString() + " with " + seniorMarks.ToString() + "%.";
                //Label116.Text = "Done my Secondary Education from " + secondaryBoard.ToUpper() + " in " + secondaryYear.ToString() + " with " + secondaryMarks.ToString() + "%.";
            }
            else
            {
                //if(BulletedList3.Items.Count+1==BulletedList3.Items.Capacity-1)
                BulletedList1.Items.RemoveAt(2);
                //Label116.Visible = false;

                BulletedList1.Items[0].Text = "Completed my Senior Education from " + seniorBoard.ToUpper() + " in " + seniorYear.ToString() + " with " + seniorMarks.ToString() + "%.";
                BulletedList1.Items[1].Text = "Done my Secondary from " + secondaryBoard.ToUpper() + " in " + secondaryYear.ToString() + " with " + secondaryMarks.ToString() + "%.";
                //Label114.Text = "Completed my Senior Education from " + seniorBoard.ToUpper() + " in " + seniorYear.ToString() + " with " + seniorMarks.ToString() + "%.";
                //Label115.Text = "Done my Secondary from " + secondaryBoard.ToUpper() + " in " + secondaryYear.ToString() + " with " + secondaryMarks.ToString() + "%.";
            }
        }


        BulletedList2.Items[0].Text = ec1.ToUpper();
        if (ec2 == "")
        {
            //if (BulletedList2.Items.Count+1 == BulletedList2.Items.Capacity)
            BulletedList2.Items.RemoveAt(2);
            //if (BulletedList2.Items.Count+1 == BulletedList2.Items.Capacity-1)
            BulletedList2.Items.RemoveAt(1);
        }
        else
        {
            BulletedList2.Items[1].Text = ec2.ToUpper();
            if (ec3 == "")
            {
                //if(BulletedList2.Items.Count+1==BulletedList2.Items.Capacity)
                BulletedList2.Items.RemoveAt(2);
            }
            else
            {
                BulletedList2.Items[2].Text = ec3.ToUpper();
            }
        }


    }

    void bindDataTemplate2()
    {
        int secondaryYear = 0, seniorYear = 0, graduationYear = 0, pgYear = 0;
        string secondaryBoard = "", seniorBoard = "", graduationBoard = "", pgBoard = "";
        double secondaryMarks = 0, seniorMarks = 0, graduationMarks = 0, pgMarks = 0;
        string address = "", dob = "", about = "", hobby1 = "", hobby2 = "", hobby3 = "";
        string objective = "", ec1 = "", ec2 = "", ec3 = "";
        string fname = "", lname = "", email = "", state = "", city = "", mobno = "", sex = "";
        string from1 = "", to1 = "", jobtitle1 = "", description1 = "", organisation1 = "", from2 = "", to2 = "", jobtitle2 = "", description2 = "", organisation2 = "";
        con.Open();
        com = new SqlCommand("select * from ACADEMICS where username='" + Session["user"] + "'", con);
        SqlDataReader rdr = com.ExecuteReader();
        if (rdr == null)
        {
            MultiView3.ActiveViewIndex = 0;
            Response.Write("<script>alert('No Resume saved, Please make a resume first');</script>");
            return;
        }
        if (rdr.Read())
        {
            secondaryYear = Convert.ToInt32(rdr[1]);
            secondaryBoard = rdr[2].ToString().ToUpper();
            secondaryMarks = Convert.ToDouble(rdr[3]);

            seniorYear = Convert.ToInt32(rdr[4]);
            seniorBoard = rdr[5].ToString().ToUpper();
            seniorMarks = Convert.ToDouble(rdr[6]);


            if (!rdr[7].Equals(DBNull.Value))
            {
                graduationYear = Convert.ToInt32(rdr[7]);
                graduationBoard = rdr[8].ToString().ToUpper();
                graduationMarks = Convert.ToDouble(rdr[9]);

                if (!rdr[10].Equals(DBNull.Value))
                {
                    pgYear = Convert.ToInt32(rdr[10]);
                    pgBoard = rdr[11].ToString();
                    pgMarks = Convert.ToDouble(rdr[12]);
                }
            }

        }
        rdr.Close();

        com = new SqlCommand("select * from personalDetails where username='" + Session["user"] + "'", con);
        rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            address = rdr[1].ToString().ToUpper();
            if (!rdr[2].Equals(DBNull.Value))
                dob = rdr[2].ToString();
            about = rdr[3].ToString();
            if (!rdr[4].Equals(DBNull.Value))
                hobby1 = rdr[4].ToString();
            if (!rdr[5].Equals(DBNull.Value))
                hobby2 = rdr[5].ToString();
            if (!rdr[6].Equals(DBNull.Value))
                hobby3 = rdr[6].ToString();
        }

        rdr.Close();

        com = new SqlCommand("select * from resumeDetails where username='" + Session["user"] + "'", con);
        rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            objective = rdr[1].ToString().ToUpper();
            if (!rdr[2].Equals(DBNull.Value))
                ec1 = rdr[2].ToString().ToUpper();
            if (!rdr[3].Equals(DBNull.Value))
                ec2 = rdr[3].ToString().ToUpper();
            if (!rdr[4].Equals(DBNull.Value))
                ec3 = rdr[4].ToString().ToUpper();
        }
        rdr.Close();

        com = new SqlCommand("select* from signup where username='" + Session["user"] + "'", con);
        rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            fname = rdr[3].ToString();
            lname = rdr[4].ToString();
            email = rdr[2].ToString();
            state = rdr[5].ToString();
            city = rdr[6].ToString();
            mobno = rdr[8].ToString();
            sex = rdr[7].ToString();
        }
        rdr.Close();

        com = new SqlCommand("select * from experience where username='" + Session["user"] + "'", con);
        rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            if (!rdr[1].Equals(DBNull.Value))
            {
                from1 = rdr[1].ToString().Substring(0, 9);
                if (!rdr[2].Equals(DBNull.Value))
                {
                    to1 = rdr[2].ToString().Substring(0, 10);
                }
                else
                {
                    to1 = "present";
                }
                if (!rdr[3].Equals(DBNull.Value))
                    jobtitle1 = rdr[3].ToString();
                if (!rdr[4].Equals(DBNull.Value))
                    organisation1 = rdr[4].ToString();
                if (!rdr[5].Equals(DBNull.Value))
                    description1 = rdr[5].ToString();
            }


            if (!rdr[6].Equals(DBNull.Value))
            {
                from2 = rdr[6].ToString().Substring(0, 10);
                if (!rdr[7].Equals(DBNull.Value))
                {
                    to2 = rdr[7].ToString().Substring(0, 10);
                }
                else
                {
                    to2 = "present";

                }
                if (!rdr[8].Equals(DBNull.Value))
                    jobtitle2 = rdr[8].ToString();
                if (!rdr[9].Equals(DBNull.Value))
                    organisation2 = rdr[9].ToString();
                if (!rdr[10].Equals(DBNull.Value))
                    description2 = rdr[10].ToString();
            }

        }
        rdr.Close();
        con.Close();


        Label13.Text = fname.ToUpper() + " " + lname.ToUpper();
        Label114.Text = address.ToUpper();
        Label116.Text = "+91-" + mobno;
        Label117.Text = email;
        Label120.Text = objective.ToUpper();



        if (from1 != "" && from2 != "")
        {
            Label144.Text = jobtitle1.ToUpper() + ", " + organisation1.ToUpper();
            Label143.Text = from1 + " to " + to1;
            Label145.Text = description1.ToUpper();

            Label147.Text = jobtitle2.ToUpper() + ", " + organisation2.ToUpper();
            Label146.Text = from2 + " to " + to2; ;
            Label148.Text = description2.ToUpper();
        }
        else
        {
            Label144.Text = jobtitle1.ToUpper() + ", " + organisation1.ToUpper();
            Label143.Text = from1 + " to " + to1;
            Label145.Text = description1.ToUpper();

            Table11.Rows.RemoveAt(1);
        }



        if (pgYear != 0)
        {
            Label132.Text = pgYear.ToString();
            Label133.Text="Post Graduation";
            Label134.Text=pgBoard.ToString();
            Label135.Text=pgMarks.ToString();
            Label136.Text="";


            Label137.Text = graduationYear.ToString() ;
            Label138.Text="Graduation";
            Label139.Text = graduationBoard.ToString();
            Label140.Text = graduationMarks.ToString();
            Label141.Text="";


            Label99.Text = seniorYear.ToString();
            Label115.Text = "Senior";
            Label187.Text = seniorBoard.ToString();
            Label188.Text = seniorMarks.ToString();
            Label189.Text = "";


            Label190.Text = secondaryYear.ToString();
            Label191.Text = "Secondary";
            Label192.Text = secondaryBoard.ToString();
            Label193.Text = secondaryMarks.ToString();
            Label194.Text = "";


            //BulletedList1.Items[1].Text = "Done my Graduation from " + graduationBoard.ToUpper() + " in " + graduationYear.ToString() + " with " + graduationMarks.ToString() + "%.";
            //BulletedList1.Items[2].Text = "Done my Senior Education from " + seniorBoard.ToUpper() + " in " + seniorYear.ToString() + " with " + seniorMarks.ToString() + "%.";
            //BulletedList1.Items[3].Text = "Done my Secondary Education from " + secondaryBoard.ToUpper() + " in " + secondaryYear.ToString() + " with " + secondaryMarks.ToString() + "%.";
            //Label115.Text = "Done my Graduation from " + graduationBoard.ToUpper() + " in " + graduationYear.ToString() + " with " + graduationMarks.ToString() + "%.";
            //Label116.Text = "Done my Senior Education from " + seniorBoard.ToUpper() + " in " + seniorYear.ToString() + " with " + seniorMarks.ToString() + "%.";
            //Label117.Text = "Done my Secondary Education from " + secondaryBoard.ToUpper() + " in " + secondaryYear.ToString() + " with " + secondaryMarks.ToString() + "%.";
        }
        else
        {
            Table10.Rows.RemoveAt(3);

            if (graduationYear != 0)
            {
                Label132.Text = graduationYear.ToString();
                Label133.Text = "Graduation";
                Label134.Text = graduationBoard.ToString();
                Label135.Text = graduationMarks.ToString();
                Label136.Text = "";

                Label137.Text = seniorYear.ToString();
                Label138.Text = "Senior";
                Label139.Text = seniorBoard.ToString();
                Label140.Text = seniorMarks.ToString();
                Label141.Text = "";


                Label99.Text = secondaryYear.ToString();
                Label115.Text = "Secondary";
                Label187.Text = secondaryBoard.ToString();
                Label188.Text = secondaryMarks.ToString();
                Label189.Text = "";
            }
            else
            {
                Table10.Rows.RemoveAt(2);

                Label132.Text = seniorYear.ToString();
                Label133.Text = "Senior";
                Label134.Text = seniorBoard.ToString();
                Label135.Text = seniorMarks.ToString();
                Label136.Text = "";

                Label137.Text = secondaryYear.ToString();
                Label138.Text = "Secondary";
                Label139.Text = secondaryBoard.ToString();
                Label140.Text = secondaryMarks.ToString();
                Label141.Text = "";
            }
        }




       // BulletedList2.Items[0].Text = ec1.ToUpper();
        if (ec2 == "")
        {
           // BulletedList2.Items.RemoveAt(2);
           // BulletedList2.Items.RemoveAt(1);
        }
        else
        {
            //BulletedList2.Items[1].Text = ec2.ToUpper();
            if (ec3 == "")
            {
               // BulletedList2.Items.RemoveAt(2);
            }
            else
            {
               // BulletedList2.Items[2].Text = ec3.ToUpper();
            }
        }



    }

    void bindDataTemplate3()
    {
        int secondaryYear = 0, seniorYear = 0, graduationYear = 0, pgYear = 0;
        string secondaryBoard = "", seniorBoard = "", graduationBoard = "", pgBoard = "";
        double secondaryMarks = 0, seniorMarks = 0, graduationMarks = 0, pgMarks = 0;
        string address = "", dob = "", about = "", hobby1 = "", hobby2 = "", hobby3 = "";
        string objective = "", ec1 = "", ec2 = "", ec3 = "";
        string fname = "", lname = "", email = "", state = "", city = "", mobno = "", sex = "";
        string from1 = "", to1 = "", jobtitle1 = "", description1 = "", organisation1 = "", from2 = "", to2 = "", jobtitle2 = "", description2 = "", organisation2 = "";
        con.Open();
        com = new SqlCommand("select * from ACADEMICS where username='" + Session["user"] + "'", con);
        SqlDataReader rdr = com.ExecuteReader();
        if (rdr == null)
        {
            MultiView3.ActiveViewIndex = 0;
            Response.Write("<script>alert('No Resume saved, Please make a resume first');</script>");
            return;
        }
        if (rdr.Read())
        {
            secondaryYear = Convert.ToInt32(rdr[1]);
            secondaryBoard = rdr[2].ToString().ToUpper();
            secondaryMarks = Convert.ToDouble(rdr[3]);

            seniorYear = Convert.ToInt32(rdr[4]);
            seniorBoard = rdr[5].ToString().ToUpper();
            seniorMarks = Convert.ToDouble(rdr[6]);


            if (!rdr[7].Equals(DBNull.Value))
            {
                graduationYear = Convert.ToInt32(rdr[7]);
                graduationBoard = rdr[8].ToString().ToUpper();
                graduationMarks = Convert.ToDouble(rdr[9]);

                if (!rdr[10].Equals(DBNull.Value))
                {
                    pgYear = Convert.ToInt32(rdr[10]);
                    pgBoard = rdr[11].ToString();
                    pgMarks = Convert.ToDouble(rdr[12]);
                }
            }

        }
        rdr.Close();

        com = new SqlCommand("select * from personalDetails where username='" + Session["user"] + "'", con);
        rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            address = rdr[1].ToString().ToUpper();
            if (!rdr[2].Equals(DBNull.Value))
                dob = rdr[2].ToString();
            about = rdr[3].ToString();
            if (!rdr[4].Equals(DBNull.Value))
                hobby1 = rdr[4].ToString();
            if (!rdr[5].Equals(DBNull.Value))
                hobby2 = rdr[5].ToString();
            if (!rdr[6].Equals(DBNull.Value))
                hobby3 = rdr[6].ToString();
        }

        rdr.Close();

        com = new SqlCommand("select * from resumeDetails where username='" + Session["user"] + "'", con);
        rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            objective = rdr[1].ToString().ToUpper();
            if (!rdr[2].Equals(DBNull.Value))
                ec1 = rdr[2].ToString().ToUpper();
            if (!rdr[3].Equals(DBNull.Value))
                ec2 = rdr[3].ToString().ToUpper();
            if (!rdr[4].Equals(DBNull.Value))
                ec3 = rdr[4].ToString().ToUpper();
        }
        rdr.Close();

        com = new SqlCommand("select* from signup where username='" + Session["user"] + "'", con);
        rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            fname = rdr[3].ToString();
            lname = rdr[4].ToString();
            email = rdr[2].ToString();
            state = rdr[5].ToString();
            city = rdr[6].ToString();
            mobno = rdr[8].ToString();
            sex = rdr[7].ToString();
        }
        rdr.Close();

        com = new SqlCommand("select * from experience where username='" + Session["user"] + "'", con);
        rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            if (!rdr[1].Equals(DBNull.Value))
            {
                from1 = rdr[1].ToString().Substring(0, 9);
                if (!rdr[2].Equals(DBNull.Value))
                {
                    to1 = rdr[2].ToString().Substring(0, 10);
                }
                else
                {
                    to1 = "present";
                }
                if (!rdr[3].Equals(DBNull.Value))
                    jobtitle1 = rdr[3].ToString();
                if (!rdr[4].Equals(DBNull.Value))
                    organisation1 = rdr[4].ToString();
                if (!rdr[5].Equals(DBNull.Value))
                    description1 = rdr[5].ToString();
            }


            if (!rdr[6].Equals(DBNull.Value))
            {
                from2 = rdr[6].ToString().Substring(0, 10);
                if (!rdr[7].Equals(DBNull.Value))
                {
                    to2 = rdr[7].ToString().Substring(0, 10);
                }
                else
                {
                    to2 = "present";

                }
                if (!rdr[8].Equals(DBNull.Value))
                    jobtitle2 = rdr[8].ToString();
                if (!rdr[9].Equals(DBNull.Value))
                    organisation2 = rdr[9].ToString();
                if (!rdr[10].Equals(DBNull.Value))
                    description2 = rdr[10].ToString();
            }

        }
        rdr.Close();
        con.Close();

        Label38.Text = fname.ToUpper() + " " + lname.ToUpper();
        Label61.Visible = false;

        Label41.Text = fname.ToUpper() + " " + lname.ToUpper();
        Label44.Text = address.ToUpper();
        Label51.Text = dob.ToString();
        Label54.Text = "+91-" + mobno;
        Label57.Text = email;

        Table15.Rows.RemoveAt(5);

        Label47.Text = objective.ToUpper();

        if (from1 != "" && from2 != "")
        {
            Label65.Text = organisation1.ToUpper();
            Label69.Text = jobtitle1.ToUpper();
            Label158.Text = from1 + " to " + to1;
            Label67.Text = description1.ToUpper();

            Label161.Text = organisation2.ToUpper();
            Label165.Text = jobtitle2.ToUpper();
            Label167.Text = from2 + " to " + to2; ;
            Label163.Text = description2.ToUpper();
        }
        else
        {
            Label65.Text = organisation1.ToUpper();
            Label69.Text = jobtitle1.ToUpper();
            Label158.Text = from1 + " to " + to1;
            Label67.Text = description1.ToUpper();

            Table17.Rows.RemoveAt(1);
        }



        if (pgYear != 0)
        {
            Label171.Text = pgBoard.ToString();
            Label172.Text = pgMarks.ToString();
            Label173.Text = pgYear.ToString();

            Label175.Text = graduationBoard.ToString();
            Label176.Text = graduationMarks.ToString();
            Label177.Text = graduationYear.ToString();

            Label196.Text = seniorBoard.ToString();
            Label197.Text = seniorMarks.ToString();
            Label198.Text = seniorYear.ToString();

            Label200.Text = secondaryBoard.ToString();
            Label201.Text = secondaryMarks.ToString();
            Label202.Text = secondaryYear.ToString();

        }
        else
        {
            Table16.Rows.RemoveAt(3);
            
            if (graduationYear != 0)
            {
                Label171.Text = graduationBoard.ToString();
                Label172.Text = graduationMarks.ToString();
                Label173.Text = graduationYear.ToString();

                Label175.Text = seniorBoard.ToString();
                Label176.Text = seniorMarks.ToString();
                Label177.Text = seniorYear.ToString();

                Label196.Text = secondaryBoard.ToString();
                Label197.Text = secondaryMarks.ToString();
                Label198.Text = secondaryYear.ToString();
            }
            else
            {
                Table16.Rows.RemoveAt(2);

                Label171.Text = seniorBoard.ToString();
                Label172.Text = seniorMarks.ToString();
                Label173.Text = seniorYear.ToString();

                Label175.Text = secondaryBoard.ToString();
                Label176.Text = secondaryMarks.ToString();
                Label177.Text = secondaryYear.ToString();
            }
        }


        Label180.Text = about.ToUpper();


        if (hobby3 == "")
        {
            BulletedList3.Items.RemoveAt(2);

            BulletedList3.Items[0].Text = hobby1.ToUpper();
            BulletedList3.Items[1].Text = hobby2.ToUpper();
        }
        else 
        {
            BulletedList3.Items[0].Text = hobby1.ToUpper();
            BulletedList3.Items[1].Text = hobby2.ToUpper();
            BulletedList3.Items[2].Text = hobby3.ToUpper();
        }


        //BulletedList2.Items[0].Text = ec1.ToUpper();
        //if (ec2 == "")
        //{
        //    BulletedList2.Items.RemoveAt(2);
        //    BulletedList2.Items.RemoveAt(1);
        //}
        //else
        //{
        //    BulletedList2.Items[1].Text = ec2.ToUpper();
        //    if (ec3 == "")
        //    {
        //        BulletedList2.Items.RemoveAt(2);
        //    }
        //    else
        //    {
        //        BulletedList2.Items[2].Text = ec3.ToUpper();
        //    }
        //}
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["user"] = "";
        Response.Redirect("~/home.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView3.ActiveViewIndex = 0;

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            con.Open();

            //remove all the values from all the tables for the username
            com = new SqlCommand("delete from ACADEMICS where username='" + username + "'", con);
            com.ExecuteNonQuery();
            com = new SqlCommand("delete from personalDetails where username='" + username + "'", con);
            com.ExecuteNonQuery();
            com = new SqlCommand("delete from resumeDetails where username='" + username + "'", con);
            com.ExecuteNonQuery();
            com = new SqlCommand("delete from experience where username='" + username + "'", con);
            com.ExecuteNonQuery();

            //enter details in the academics table
            if (TextBox11.Text == "")
            {
                com = new SqlCommand("insert into ACADEMICS values('" + username + "','" + Convert.ToInt32(TextBox3.Text) + "','" + TextBox4.Text.ToUpper() + "','" + Convert.ToDouble(TextBox5.Text) + "','" + Convert.ToInt32(TextBox7.Text) + "','" + TextBox8.Text.ToUpper() + "','" + Convert.ToDouble(TextBox9.Text) + "'," + "null" + "," + "null" + "," + "null" + "," + "null" + "," + "null" + "," + "null" + ")", con);
            }
            else
            {
                if (TextBox2.Text != "")
                {
                    com = new SqlCommand("insert into ACADEMICS values('" + username + "','" + Convert.ToInt32(TextBox3.Text) + "','" + TextBox4.Text.ToUpper() + "','" + Convert.ToDouble(TextBox5.Text) + "','" + Convert.ToInt32(TextBox7.Text) + "','" + TextBox8.Text.ToUpper() + "','" + Convert.ToDouble(TextBox9.Text) + "','" + Convert.ToInt32(TextBox11.Text) + "','" + TextBox12.Text.ToUpper() + "','" + Convert.ToDouble(TextBox13.Text) + "','" + Convert.ToInt32(TextBox2.Text) + "','" + TextBox6.Text.ToUpper() + "','" + Convert.ToDouble(TextBox10.Text) + "')", con);
                }
                else
                {
                    com = new SqlCommand("insert into ACADEMICS values('" + username + "','" + Convert.ToInt32(TextBox3.Text) + "','" + TextBox4.Text.ToUpper() + "','" + Convert.ToDouble(TextBox5.Text) + "','" + Convert.ToInt32(TextBox7.Text) + "','" + TextBox8.Text.ToUpper() + "','" + Convert.ToDouble(TextBox9.Text) + "','" + Convert.ToInt32(TextBox11.Text) + "','" + TextBox12.Text.ToUpper() + "','" + Convert.ToDouble(TextBox13.Text) + "'," + "null" + "," + "null" + "," + "null" + ")", con);
                }
            }
            com.ExecuteNonQuery();

            //enter details into resumeDetails table
            if (TextBox24.Text == "")
            {
                if (TextBox26.Text == "")
                {
                    com = new SqlCommand("insert into resumeDetails values('" + username + "','" + TextBox1.Text.ToUpper() + "','" + TextBox25.Text.ToUpper() + "'," + "null" + "," + "null" + ",'" + DateTime.Now.Date + "')", con);
                }
                else
                {
                    if (TextBox27.Text == "")
                    {
                        com = new SqlCommand("insert into resumeDetails values('" + username + "','" + TextBox1.Text.ToUpper() + "','" + TextBox25.Text.ToUpper() + "','" + TextBox26.Text.ToUpper() + "'," + "null" + ",'" + DateTime.Now.Date + "')", con);
                    }
                    else
                    {
                        com = new SqlCommand("insert into resumeDetails values('" + username + "','" + TextBox1.Text.ToUpper() + "','" + TextBox25.Text.ToUpper() + "','" + TextBox26.Text.ToUpper() + "','" + TextBox27.Text.ToUpper() + "','" + DateTime.Now.Date + "')", con);
                    }
                }
            }
            else
            {
                if (TextBox26.Text == "")
                {
                    com = new SqlCommand("insert into resumeDetails values('" + username + "','" + TextBox1.Text.ToUpper() + "','" + TextBox25.Text.ToUpper() + "'," + "null" + "," + "null" + ",'" + DateTime.Now.Date + "')", con);
                }
                else
                {
                    if (TextBox27.Text == "")
                    {
                        com = new SqlCommand("insert into resumeDetails values('" + username + "','" + TextBox1.Text.ToUpper() + "','" + TextBox25.Text.ToUpper() + "','" + TextBox26.Text.ToUpper() + "'," + "null" + ",'" + DateTime.Now.Date + "')", con);
                    }
                    else
                    {
                        com = new SqlCommand("insert into resumeDetails values('" + username + "','" + TextBox1.Text.ToUpper() + "','" + TextBox25.Text.ToUpper() + "','" + TextBox26.Text.ToUpper() + "','" + TextBox27.Text.ToUpper() + "','" + DateTime.Now.Date + "')", con);
                    }
                }
            }
            com.ExecuteNonQuery();

            //enter deatails into personalDetails table
            if (TextBox15.Text == "")
            {
                if (TextBox48.Text != "")
                {
                    com = new SqlCommand("insert into personalDetails values('" + username + "','" + TextBox14.Text.ToUpper() + "'," + "null" + ",'" + TextBox22.Text.ToUpper() + "','" + TextBox46.Text.ToUpper() + "','" + TextBox47.Text.ToUpper() + "','" + TextBox48.Text.ToUpper() + "')", con);

                }
                else
                {
                    com = new SqlCommand("insert into personalDetails values('" + username + "','" + TextBox14.Text.ToUpper() + "'," + "null" + ",'" + TextBox22.Text.ToUpper() + "','" + TextBox46.Text.ToUpper() + "','" + TextBox47.Text.ToUpper() + "'," + "null" + ")", con);
                }
            }
            else
            {
                if (TextBox48.Text != "")
                {
                    com = new SqlCommand("insert into personalDetails values('" + username + "','" + TextBox14.Text.ToUpper() + "','" + TextBox15.Text + "','" + TextBox22.Text.ToUpper() + "','" + TextBox46.Text.ToUpper() + "','" + TextBox47.Text.ToUpper() + "','" + TextBox48.Text.ToUpper() + "')", con);

                }
                else
                {
                    com = new SqlCommand("insert into personalDetails values('" + username + "','" + TextBox14.Text.ToUpper() + "','" + TextBox15.Text + "','" + TextBox22.Text.ToUpper() + "','" + TextBox46.Text.ToUpper() + "','" + TextBox47.Text.ToUpper() + "'," + "null" + ")", con);
                }
            }
            com.ExecuteNonQuery();


            //in the table username,from1,to1,jobtitle1,organisation1,description1,from2,to2,jobtitle2,organisation2,description2
            //insert values into experience
            if (TextBox23.Text != "" && TextBox41.Text != "")
            {
                if (TextBox38.Text == "")
                {
                    com = new SqlCommand("insert into experience values('" + username + "','" + TextBox23.Text + "'," + "null" + ",'" + TextBox39.Text.ToUpper() + "','" + TextBox40.Text.ToUpper() + "','" + TextBox21.Text.ToUpper() + "','" + TextBox41.Text + "','" + TextBox42.Text + "','" + TextBox43.Text.ToUpper() + "','" + TextBox44.Text.ToUpper() + "','" + TextBox45.Text.ToUpper() + "')", con);
                }
                else
                {
                    com = new SqlCommand("insert into experience values('" + username + "','" + TextBox23.Text + "','" + TextBox38.Text + "','" + TextBox39.Text.ToUpper() + "','" + TextBox40.Text.ToUpper() + "','" + TextBox21.Text.ToUpper() + "','" + TextBox41.Text + "','" + TextBox42.Text + "','" + TextBox43.Text.ToUpper() + "','" + TextBox44.Text.ToUpper() + "','" + TextBox45.Text.ToUpper() + "')", con);
                }
            }
            else
            {
                if (TextBox23.Text == "" && TextBox41.Text != "")
                {
                    if (TextBox42.Text == "")
                        com = new SqlCommand("insert into experience values('" + username + "','" + TextBox41.Text + "'," + "null" + ",'" + TextBox43.Text.ToUpper().ToUpper() + "','" + TextBox44.Text.ToUpper() + "','" + TextBox45.Text.ToUpper() + "'," + "null" + "," + "null" + "," + "null" + "," + "null" + "," + "null" + ")", con);
                    else
                        com = new SqlCommand("insert into experience values('" + username + "','" + TextBox41.Text + "','" + TextBox42.Text + "','" + TextBox43.Text.ToUpper() + "','" + TextBox44.Text.ToUpper() + "','" + TextBox45.Text.ToUpper() + "'," + "null" + "," + "null" + "," + "null" + "," + "null" + "," + "null" + ")", con);
                }
                else if (TextBox23.Text != "" && TextBox41.Text == "")
                {
                    if (TextBox38.Text == "")
                    {
                        com = new SqlCommand("insert into experience values('" + username + "','" + TextBox23.Text + "'," + "null" + ",'" + TextBox39.Text.ToUpper() + "','" + TextBox40.Text.ToUpper() + "','" + TextBox41.Text + "'," + "null" + "," + "null" + "," + "null" + "," + "null" + "," + "null" + ")", con);
                    }
                    else
                    {
                        com = new SqlCommand("insert into experience values('" + username + "','" + TextBox23.Text + "','" + TextBox38.Text + "','" + TextBox39.Text.ToUpper() + "','" + TextBox40.Text.ToUpper() + "','" + TextBox21.Text.ToUpper() + "'," + "null" + "," + "null" + "," + "null" + "," + "null" + "," + "null" + ")", con);
                    }
                }
            }
            if (TextBox23.Text == "" && TextBox41.Text == "")
            {
                com = new SqlCommand("insert into experience values('" + username + "'," + "null" + "," + "null" + "," + "null" + "," + "null" + "," + "null" + "," + "null" + "," + "null" + "," + "null" + "," + "null" + "," + "null" + ")", con);
            }
            com.ExecuteNonQuery();

            //from1 = TextBox23;
            //to1 = TextBox38;
            //jobtitle1 = TextBox39;
            //description1 = TextBox21;
            //organisation1 = TextBox40;


            //from2 = TextBox41;
            //to2 = TextBox42;
            //jobtitle2 = TextBox43;
            //description2 = TextBox45;
            //organisation2 = TextBox44;



            con.Close();

            Response.Write("<script>alert('New Resume Created...click on view resume to see')</script>");
            resumeFormFlush();
        }
    }
    protected void clear_Click(object sender, EventArgs e)
    {
        resumeFormFlush();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView3.ActiveViewIndex = 1;

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 1;
    }

    protected void save_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new SqlCommand("update signup set fname='" + TextBox16.Text.ToUpper() + "' where username='" + username + "'", con);
        com.ExecuteNonQuery();
        com = new SqlCommand("update signup set lname='" + TextBox17.Text.ToUpper() + "' where username='" + username + "'", con);
        com.ExecuteNonQuery();
        com = new SqlCommand("update signup set mobno=" + Convert.ToDouble(TextBox18.Text) + " where username='" + username + "'", con);
        com.ExecuteNonQuery();
        com = new SqlCommand("update signup set email='" + TextBox19.Text.ToLower() + "' where username='" + username + "'", con);
        com.ExecuteNonQuery();
        com = new SqlCommand("update personalDetails set address='" + TextBox20.Text.ToString() + "' where username='" + username + "'", con);
        com.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Data Updation Successful');</script>");
        MultiView3.ActiveViewIndex = 3;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 0;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView3.ActiveViewIndex = 2;

    }
    protected void search_Click(object sender, EventArgs e)
    {
        SqlDataAdapter adap;
        DataSet ds = null;
        con.Open();
        if (searchType != "")
        {
            switch (searchType)
            {
                case "bylocation":
                    {
                        com = new SqlCommand("select username,fname,lname,mobno from signup where state like '%" + TextBox21.Text.ToLower() + "%' or city like '%" + TextBox21.Text.ToLower() + "%'", con);
                        adap = new SqlDataAdapter();
                        ds = new DataSet();
                        adap.SelectCommand = com;
                        adap.Fill(ds);

                    }
                    break;
                case "byname":
                    {
                        com = new SqlCommand("select username,fname,lname,mobno from signup where fname like '%" + TextBox21.Text.ToLower() + "%' or lname like '%" + TextBox21.Text.ToLower() + "%'", con);
                        adap = new SqlDataAdapter();
                        ds = new DataSet();
                        adap.SelectCommand = com;
                        adap.Fill(ds);

                    }
                    break;
                case "byusername":
                    {
                        com = new SqlCommand("select signup.username,signup.fname,signup.lname,signup.mobno from signup full outer join personalDetails on signup.username=personalDetails.username where signup.username like '%" + TextBox21.Text.ToLower() + "%'", con);
                        adap = new SqlDataAdapter();
                        ds = new DataSet();
                        adap.SelectCommand = com;
                        adap.Fill(ds);
                    }
                    break;
                case "byskill":
                    {
                        com = new SqlCommand("select signup.username,signup.fname,signup.lname,signup.mobno from signup full outer join personalDetails on signup.username=personalDetails.username where personalDetails.about like '%" + TextBox21.Text.ToUpper() + "%'", con);
                        adap = new SqlDataAdapter();
                        ds = new DataSet();
                        adap.SelectCommand = com;
                        adap.Fill(ds);
                    }
                    break;
            }
            if (ds.CreateDataReader().HasRows)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                GridView1.Visible = true;
            }
            else
            {
                Response.Write("<script>alert('No one is available with that skillset. Search another skill');</script>");
                TextBox21.Text = "";
            }
        }
        else
        {
            Response.Write("<script>alert('Please select search criteria');</script>");
        }


        con.Close();
    }

    protected void MultiView3_ActiveViewChanged(object sender, EventArgs e)
    {
        switch (MultiView3.ActiveViewIndex)
        {
            case 0:
                {

                }
                break;
            case 1:
                {
                    con.Open();
                    com = new SqlCommand("select * from signup where username='" + username + "'", con);
                    SqlDataReader rdr = com.ExecuteReader();
                    if (rdr.Read())
                    {
                        TextBox16.Text = rdr[3].ToString().ToUpper();
                        TextBox17.Text = rdr[4].ToString().ToUpper();
                        TextBox18.Text = rdr[8].ToString();
                        TextBox19.Text = rdr[2].ToString();
                    }
                    rdr.Close();
                    com = new SqlCommand("select address from personalDetails where username='" + username + "'", con);
                    rdr = com.ExecuteReader();
                    if (rdr.Read())
                    {
                        TextBox20.Text = rdr[0].ToString();
                    }
                    rdr.Close();
                    con.Close();
                }
                break;
            case 2:
                {
                    //int secondaryYear = 0, seniorYear = 0, graduationYear = 0, pgYear = 0;
                    //string secondaryBoard = "", seniorBoard = "", graduationBoard = "", pgBoard = "";
                    //double secondaryMarks = 0, seniorMarks = 0, graduationMarks = 0, pgMarks = 0;
                    //string address = "", dob = "", about = "";
                    //string objective = "", achievement1 = "", achievement2 = "", achievement3 = "";
                    //string fname = "", lname = "", email = "", state = "", city = "", mobno = "", sex = "";
                    //con.Open();
                    //com = new SqlCommand("select * from ACADEMICS where username='" + Session["user"] + "'", con);
                    //SqlDataReader rdr = com.ExecuteReader();
                    //if (rdr == null)
                    //{
                    //    MultiView3.ActiveViewIndex = 0;
                    //    Response.Write("<script>alert('No Resume saved, Please make a resume first');</script>");
                    //    return;
                    //}
                    //if (rdr.Read())
                    //{
                    //    secondaryYear = Convert.ToInt32(rdr[1]);
                    //    secondaryBoard = rdr[2].ToString().ToUpper();
                    //    secondaryMarks = Convert.ToDouble(rdr[3]);

                    //    seniorYear = Convert.ToInt32(rdr[4]);
                    //    seniorBoard = rdr[5].ToString().ToUpper();
                    //    seniorMarks = Convert.ToDouble(rdr[6]);


                    //    if (!rdr[7].Equals(DBNull.Value))
                    //    {
                    //        graduationYear = Convert.ToInt32(rdr[7]);
                    //        graduationBoard = rdr[8].ToString().ToUpper();
                    //        graduationMarks = Convert.ToDouble(rdr[9]);

                    //        if (!rdr[10].Equals(DBNull.Value))
                    //        {
                    //            pgYear = Convert.ToInt32(rdr[10]);
                    //            pgBoard = rdr[11].ToString();
                    //            pgMarks = Convert.ToDouble(rdr[12]);
                    //        }
                    //    }

                    //}
                    //rdr.Close();

                    //com = new SqlCommand("select * from personalDetails where username='" + Session["user"] + "'", con);
                    //rdr = com.ExecuteReader();
                    //if (rdr.Read())
                    //{
                    //    address = rdr[1].ToString().ToUpper();
                    //    if (!rdr[2].Equals(DBNull.Value))
                    //        dob = rdr[2].ToString();
                    //    about = rdr[3].ToString();
                    //}

                    //rdr.Close();

                    //com = new SqlCommand("select * from resumeDetails where username='" + Session["user"] + "'", con);
                    //rdr = com.ExecuteReader();
                    //if (rdr.Read())
                    //{
                    //    objective = rdr[1].ToString().ToUpper();

                    //    if (!rdr[2].Equals(DBNull.Value))
                    //        achievement1 = rdr[2].ToString().ToUpper();
                    //    if (!rdr[3].Equals(DBNull.Value))
                    //        achievement2 = rdr[3].ToString().ToUpper();
                    //    if (!rdr[4].Equals(DBNull.Value))
                    //        achievement3 = rdr[4].ToString().ToUpper();
                    //}
                    //rdr.Close();

                    //com = new SqlCommand("select* from signup where username='" + Session["user"] + "'", con);
                    //rdr = com.ExecuteReader();
                    //if (rdr.Read())
                    //{
                    //    fname = rdr[3].ToString();
                    //    lname = rdr[4].ToString();
                    //    email = rdr[2].ToString();
                    //    state = rdr[5].ToString();
                    //    city = rdr[6].ToString();
                    //    mobno = rdr[8].ToString();
                    //    sex = rdr[7].ToString();
                    //}
                    //rdr.Close();
                    //con.Close();
                    ////Intro Box
                    //Label38.Text = fname.ToUpper() + " " + lname.ToUpper();
                    //Label39.Text = "+91 - " + mobno;
                    //Label40.Text = address.ToUpper() + "," + city.ToUpper() + ", " + state.ToUpper();
                    //Label41.Text = email;

                    ////Academic Qualifications
                    //if (pgYear != 0)
                    //{
                    //    if (pgYear > DateTime.Now.Year)
                    //    {
                    //        Label47.Text = " Currently Pursuing my Post Graduation from " + pgBoard.ToUpper() + " in " + pgYear.ToString() + " with an aggregate of " + pgMarks.ToString() + "%.";
                    //    }
                    //    else
                    //    {
                    //        Label47.Text = "Completed my Post Graduation from " + pgBoard.ToUpper() + " in " + pgYear.ToString() + " with " + pgMarks.ToString() + "%.";
                    //    }

                    //    Label48.Text = "Done my Graduation from " + graduationBoard.ToUpper() + " in " + graduationYear.ToString() + " with " + graduationMarks.ToString() + "%.";
                    //    Label49.Text = "Done my Senior Education from " + seniorBoard.ToUpper() + " in " + seniorYear.ToString() + " with " + seniorMarks.ToString() + "%.";
                    //    Label50.Text = "Done my Secondary Education from " + secondaryBoard.ToUpper() + " in " + secondaryYear.ToString() + " with " + secondaryMarks.ToString() + "%.";
                    //}
                    //else
                    //{
                    //    Label46.Visible = false;
                    //    Label50.Visible = false;
                    //    if (graduationYear != 0)
                    //    {
                    //        if (graduationYear > DateTime.Now.Year)
                    //        {
                    //            Label47.Text = "Currently pursuing my Graduation from " + graduationBoard.ToUpper() + " in " + graduationYear.ToString() + " with " + graduationMarks.ToString() + "%.";
                    //        }
                    //        else
                    //        {
                    //            Label47.Text = "Done my Graduation from " + graduationBoard.ToUpper() + " in " + graduationYear.ToString() + " with " + graduationMarks.ToString() + "%.";
                    //        }

                    //        Label48.Text = "Completed my Senior Education from " + seniorBoard.ToUpper() + " in " + seniorYear.ToString() + " with " + seniorMarks.ToString() + "%.";
                    //        Label49.Text = "Done my Secondary Education from " + secondaryBoard.ToUpper() + " in " + secondaryYear.ToString() + " with " + secondaryMarks.ToString() + "%.";
                    //    }
                    //    else
                    //    {
                    //        Label45.Visible = false;
                    //        Label49.Visible = false;
                    //        Label47.Text = "Completed my Senior Education from " + seniorBoard.ToUpper() + " in " + seniorYear.ToString() + " with " + seniorMarks.ToString() + "%.";
                    //        Label48.Text = "Done my Secondary from " + secondaryBoard.ToUpper() + " in " + secondaryYear.ToString() + " with " + secondaryMarks.ToString() + "%.";
                    //    }
                    //}
                    //Summer Training
                    //Label54.Text = summerTraining1.ToUpper();
                    //if (summerTraining2 == "")
                    //{
                    //    Label55.Visible = false;
                    //    Label53.Visible = false;
                    //}
                    //else
                    //{
                    //    Label55.Text = summerTraining2.ToUpper();
                    //}

                    //Achievements
                    //Label60.Text = achievement1.ToUpper();
                    //if (achievement2 == "")
                    //{
                    //    Label58.Visible = false;
                    //    Label59.Visible = false;
                    //    Label61.Visible = false;
                    //    Label62.Visible = false;
                    //}
                    //else
                    //{
                    //    if (achievement3 == "")
                    //    {
                    //        Label59.Visible = false;
                    //        Label62.Visible = false;
                    //        Label61.Text = achievement2.ToUpper();
                    //    }
                    //    else
                    //    {
                    //        Label61.Text = achievement2.ToUpper();
                    //        Label62.Text = achievement2.ToUpper();
                    //    }
                    //}

                    ////Personal Details
                    //Label66.Text = sex.ToUpper();
                    //Label67.Text = about.ToUpper();
                    //Label70.Text = dob.ToString().Substring(0, 10);

                }
                break;
            case 3:
                {

                }
                break;
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int i = 0;
        bool exceptionFlag = false;
        try
        {
            Convert.ToInt32(args.Value);
        }
        catch
        {
            args.IsValid = false;
            exceptionFlag = true;

        }
        if (exceptionFlag == false)
        {
            int n = Convert.ToInt32(args.Value);
            while (n > 0)
            {
                n = n / 10;
                i++;
            }
            if (i == 4)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView2.ActiveViewIndex = 2;

        con.Open();
        com = new SqlCommand("select * from vacancy", con);
        SqlDataAdapter adap = new SqlDataAdapter();
        DataSet ds = new DataSet();
        adap.SelectCommand = com;
        adap.Fill(ds);
        con.Close();
        GridView2.DataSource = ds;
        GridView2.DataBind();

    }
    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/contactUs.aspx");
    //}
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        searchType = RadioButtonList1.SelectedValue;
    }


    protected void Button10_Click(object sender, EventArgs e)
    {
        //if (!File.Exists(Server.MapPath("\\Resumes\\") + username + "_" + "resume" + ".html"))
        //{
        using (FileStream fs = new FileStream(Server.MapPath("\\Resumes\\") + username + "_resume_" + template +".html", FileMode.Create))
        {
            using (StreamWriter w = new StreamWriter(fs, Encoding.UTF8))
            {
                w.Write(tOut);
            }
        }
        Response.Write("<script>alert('Resume Saved');</script>");
        //}

    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Panel17.Visible = true;


        // Pass the credentials if the server requires the client to authenticate before it will send e-mail on the client's behalf.


    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[index];

        string username = row.Cells[0].Text.ToString();
        //Page.ClientScript.RegisterStartupScript(this.GetType(), "dsadas", "window.open('" + ResolveUrl("\\Resumes\\")+username + "_resume.html');", true);

        //Response.Write(String.Format("<script>window.open('{0}','_blank')</script>", ResolveUrl("~\\Resumes\\")+username+"_resume.html"));
        if (File.Exists(Server.MapPath("\\Resumes\\") + username + "_resume_"+template+".html"))
        {
            Response.Redirect("~\\Resumes\\" + username + "_resume_" + template + ".html", false);
        }
        else
        {
            Response.Write("<script>alert('No Resume uploaded');</script>");
        }

    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        con.Open();
        if (TextBox32.Text == "")
        {
            com = new SqlCommand("insert into vacancy values('" + TextBox28.Text.ToUpper() + "','" + TextBox30.Text + "','" + TextBox29.Text.ToUpper() + "'," + Convert.ToInt32(TextBox31.Text) + "," + "null" + ")", con);
        }
        else
        {
            com = new SqlCommand("insert into vacancy values('" + TextBox28.Text.ToUpper() + "','" + TextBox30.Text + "','" + TextBox29.Text.ToUpper() + "'," + Convert.ToInt32(TextBox31.Text) + "," + Convert.ToInt32(TextBox32.Text) + ")", con);
        }

        com.ExecuteNonQuery();
        Response.Write("<script>alert('Vacancy Posted');</script>");

        con.Close();
        TextBox28.Text = "";
        TextBox29.Text = "";
        TextBox30.Text = "";
        TextBox31.Text = "";
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        TextBox28.Text = "";
        TextBox29.Text = "";
        TextBox30.Text = "";
        TextBox31.Text = "";
    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void sendButton_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage message = new MailMessage(TextBox33.Text, TextBox35.Text, TextBox36.Text, TextBox37.Text);
            string fileAttach = Server.MapPath("\\Resumes\\") + username + "_resume_"+template+".html";
            Attachment attach = new Attachment(fileAttach);
            message.Attachments.Add(attach);


            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.Port = 587;
            client.UseDefaultCredentials = false;
            NetworkCredential cred = new NetworkCredential(TextBox33.Text, TextBox34.Text);
            client.Credentials = cred;

            client.Send(message);
            Response.Write("<script>alert('Email sent successully.');</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Something is not right');</script>");
        }
        finally
        {
            Panel17.Visible = false;
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (Convert.ToInt32(DropDownList2.SelectedValue))
        {
            case 0:
                {
                    Image1.Visible = false;
                    Button14.Visible = false;
                    MultiView5.Visible = false;
                }
                break;
            case 1:
                {
                    Image1.Visible = true;
                    Image1.ImageUrl = "~\\sourceImages\\template1.jpg";
                    Button14.Visible = true;

                }
                break;
            case 2:
                {
                    Image1.Visible = true;
                    Image1.ImageUrl = "~\\sourceImages\\template2.jpg";
                    Button14.Visible = true;
                }
                break;
            case 3:
                {
                    Image1.Visible = true;
                    Image1.ImageUrl = "~\\sourceImages\\template3.jpg";
                    Button14.Visible = true;
                }
                break;
        }
    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        switch (Convert.ToInt32(DropDownList2.SelectedValue))
        {
            case 1:
                {
                    template = "template1";
                    bindDataTemplate1();
                    MultiView5.ActiveViewIndex = 0;
                    MultiView5.Visible = true;
                    Button10.Visible = true;
                    Button11.Visible = true;
                }

                break;
            case 2:
                {
                    template = "template2";
                    bindDataTemplate2();
                    MultiView5.ActiveViewIndex = 1;
                    MultiView5.Visible = true;
                    Button10.Visible = true;
                    Button11.Visible = true;
                }

                break;
            case 3:
                {
                    template = "template3";
                    bindDataTemplate3();
                    MultiView5.ActiveViewIndex = 2;
                    MultiView5.Visible = true;
                    Button10.Visible = true;
                    Button11.Visible = true;
                }

                break;

        }
    }

}