using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class addmember : System.Web.UI.Page
{

    static string get = ConfigurationManager.AppSettings["connectvc"];
    SqlConnection con = new SqlConnection(get);
    protected void Page_Load(object sender, EventArgs e)
    {

      
        if(!IsPostBack)
        {
            gett();

        }


    }

    public void gett()
    {
        con.Close();
        con.Open();

        string gg = "SELECT Student.rid, Invitation_data.sid, Student.fname, Student.lname, Student.Collage, Student.emailid, Student.imagepath, Student.contactno, Student.city FROM Invitation_data INNER JOIN Student ON Invitation_data.sid = Student.rid  WHERE Invitation_data.eid = '" + Session["user"] + "' AND Invitation_data.status='accepted' AND Invitation_data.sid NOT IN(select sid from groupformed where gid='" + Request.QueryString["id"] + "')  ";

        SqlCommand cmd = new SqlCommand(gg, con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();

        da.Fill(dt);

        GridView3.DataSource = dt;

        GridView3.DataBind();
        GridView3.HeaderRow.Cells[8].Visible = false;


        GridView3.HeaderRow.Cells[2].Visible = false;


        GridView3.HeaderRow.Cells[4].Text = "First Name";
        GridView3.HeaderRow.Cells[5].Text = "Last Name";
        GridView3.HeaderRow.Cells[7].Text = "Email Id";


        GridView3.HeaderRow.Cells[3].Visible = false;
        //GridView3.HeaderRow.Cells[1].Visible = false;

        foreach(GridViewRow r in GridView3.Rows)
        {
          r.Cells[8].Visible = false;
          r.Cells[2].Visible = false;
          r.Cells[3].Visible = false;

     
        }


        con.Close();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

       foreach(GridViewRow r in GridView3.Rows)
       {

           CheckBox c = (CheckBox)r.FindControl("CheckBox2");
           Label l = (Label)r.FindControl("Label3");

          if(c.Checked)
          {

              string create = "insert into groupformed values('" + Request.QueryString["id"] + "','"+l.Text+"' ,'n')";
              SqlCommand cmd = new SqlCommand(create, con);
              int a = cmd.ExecuteNonQuery();
              if (a > 0)
             {
                  //Label3.Visible = true;
                 //Label3.Text = "Group Created Successfully";
               //  r.Visible = false;
                 gett();
                 GridView2.DataBind();
                 GridView3.DataBind();
             }


          }
            


       }


       con.Close();



        //string sta="pending";
        //string create = "insert into groupdata values('" +Request.QueryString["id"] + "','"+Request.QueryString["stu"]+"','" + Session["user"] + "','"+sta+"')";
        //SqlCommand cmd = new SqlCommand(create, con);
        //int a = cmd.ExecuteNonQuery();
        //if (a > 0)
        //{
        //    //Label3.Visible = true;
        //    //Label3.Text = "Group Created Successfully";
        //}
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}