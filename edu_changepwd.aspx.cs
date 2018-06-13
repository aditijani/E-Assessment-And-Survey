using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class changepwd : System.Web.UI.Page
{
    //DataClassesDataContext dt = new DataClassesDataContext();

    static string get = ConfigurationManager.AppSettings["connectvc"];
    SqlConnection con = new SqlConnection(get);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int type = 0;
        con.Open();
        string sel = "select password from user_login where uid='" + Session["user"] + "' and type='"+type+"'";
        SqlCommand cmd = new SqlCommand(sel, con);
        string p = cmd.ExecuteScalar().ToString();
        if (p.Equals(txtoldpwd.Text))
        {
            string update = "update user_login set password='" + txtnpwd.Text + "' where uid= '" + Session["user"] + "'  and type='" + type + "'";
            SqlCommand cmd1 = new SqlCommand(update, con);
            int a = cmd1.ExecuteNonQuery();
            if (a == 1)
            {
                Label5.Text = "password changed";

            }
        }
        else
        {
            Label5.Text = "Your old password is not correct";
        }

        con.Close();
    }
        //var c = dt.user_logins.Where(p=>p.password==txtoldpwd.Text && p.uid==Convert.ToInt32(Session["user"])).Single();
        //if (c.emailid!=null)
        //{
        //    c.password = txtnpwd.Text;
        //    dt.SubmitChanges();


        //}
        //else
        //{
        //    Label4.Visible = true;

        //}
    
}