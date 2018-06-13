using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default2 : System.Web.UI.Page
{
    static string get = ConfigurationManager.AppSettings["connectvc"];
    SqlConnection con = new SqlConnection(get);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        string get = "select * from Educator where eid='" + Session["user"] + "'";
        SqlCommand cmd = new SqlCommand(get, con);
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            Image1.ImageUrl = dr["imagepath"].ToString();
        }

        con.Close();


        con.Open();

        string sel = "select count(classid) from e_class where eid='" + Session["user"] + "'";
        SqlCommand cm = new SqlCommand(sel, con);

        string count = cm.ExecuteScalar().ToString();
        Label1.Text = count;

        string cout = "select count(gid) from groupdata where creator='" + Session["user"] + "'";
        SqlCommand cmdd = new SqlCommand(cout, con);
        string s = cmdd.ExecuteScalar().ToString();

      
        Label2.Text = s;

        String material = "select count(id) from material_share where uid='" + Session["user"] + "'";
        SqlCommand mat = new SqlCommand(material,con);
        string m = mat.ExecuteScalar().ToString();
        Label3.Text = m;


        String video = "select count(id) from video where uid='" + Session["user"] + "'";
        SqlCommand v = new SqlCommand(video,con);
        string videos = v.ExecuteScalar().ToString();
        Label4.Text = videos;
        con.Close();

       
    }
}