using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class answers : System.Web.UI.Page
{
    static string str1 = ConfigurationManager.AppSettings["connectvc"];
    string pass, username;
    SqlConnection con = new SqlConnection(str1);


    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["id"] != null)
        {
            con.Open();

            string que = "select * from forumq where fid='" + Convert.ToInt32(Request.QueryString["id"]) + "'";

            SqlCommand cmd = new SqlCommand(que, con);

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {

                Literal1.Text = dr["question"].ToString();
                Label6.Text = dr["username"].ToString();
                Label25.Text = dr["date"].ToString();
            }
            //string check = "select answer from foruma where qid='"+Request.QueryString["id"]+"'";
            //SqlCommand cm = new SqlCommand(check,con);
            //string a = cm.ExecuteScalar().ToString();
            //if (a.Count()==0)
            //{
            //    Label24.Visible = true;
            //    Label24.Text = "No Comments Yet";
            //}
            con.Close();
        }

        //con.Open();

        //
        //SqlCommand cmd = new SqlCommand(check,con);
        //int a = cmd.ExecuteNonQuery();
        //if (a == 0)
        //{
        //    Label24.Visible = true;
        //    Label24.Text = "No Comments Yet";
        //}
        //con.Close();


    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        string ins = "insert into foruma values('" + Convert.ToInt32(Request.QueryString["id"]) + "','" + Session["username"].ToString() + "','" + DateTime.Now.Date.ToShortDateString() + "','" + TextBox1.Text + "')";

        SqlCommand cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        GridView2.DataBind();
        TextBox1.Text = "";
        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forum.aspx");
    }
}