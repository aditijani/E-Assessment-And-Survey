using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class edu_class : System.Web.UI.Page
{


   
    DataClassesDataContext dt = new DataClassesDataContext();
    e_class ec = new e_class();
    //schedule sc = new schedule();
    //Invitation_data ind = new Invitation_data();
    //student_class stc = new student_class();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ec.eid = Convert.ToInt32(Session["user"]);
        ec.course = TextBox1.Text;
        ec.member = 0;
        ec.description = TextBox3.Text;
        ec.Location = TextBox2.Text;
      
        dt.e_classes.InsertOnSubmit(ec);



        dt.SubmitChanges();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        GridView1.DataBind();

    }
 
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;
       
        int id = Convert.ToInt32(lk.CommandArgument);
        Response.Redirect("calender.aspx?id=" + id);

       


    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {


        LinkButton lk = (LinkButton)sender;

        int id = Convert.ToInt32(lk.CommandArgument);
        Response.Redirect("send_invitation.aspx?id=" + id);


    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;

        int id = Convert.ToInt32(lk.CommandArgument);
        Response.Redirect("calender.aspx?id=" + id);

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton6_Click1(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;

        int id = Convert.ToInt32(lk.CommandArgument);
        var g = dt.e_classes.Where(a=>a.classid==id).SingleOrDefault();
        dt.e_classes.DeleteOnSubmit(g);
        dt.SubmitChanges();

        //var h = dt.schedules.Where(a => a.class_id == id).SingleOrDefault();
        //dt.schedules.DeleteOnSubmit(h);
        //dt.SubmitChanges();

        //var i= dt.Invitation_datas.Where(a => a.classid == id).SingleOrDefault();
        //dt.Invitation_datas.DeleteOnSubmit(i);
        //dt.SubmitChanges();



        //var k = dt.student_classes.Where(a => a.classid == id).SingleOrDefault();
        //dt.student_classes.DeleteOnSubmit(k);
        //dt.SubmitChanges();

        GridView1.DataBind();


        
    }
}