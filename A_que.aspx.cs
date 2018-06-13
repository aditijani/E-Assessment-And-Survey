using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

public partial class aque : System.Web.UI.Page
{
    static string get = ConfigurationManager.AppSettings["connectvc"];
    SqlConnection con = new SqlConnection(get);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();



        string forum = "insert into forumq values('" + Session["username"] + "','" + DateTime.Now.Date + "','" + TextBox1.Text + "','" + Session["user"] + "')";

        SqlCommand cmd = new SqlCommand(forum, con);
        int a = cmd.ExecuteNonQuery();
        if (a == 1)
        {
            Label2.Visible = true;
            TextBox1.Text = "";

        }

        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forum.aspx");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

}