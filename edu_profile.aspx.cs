using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class edu_profile : System.Web.UI.Page
{
    DataClassesDataContext dt = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var c = dt.user_logins.Where(a => a.uid == Convert.ToInt32(Session["user"]) & a.type == 0).Single();
            string email = c.emailid;

            var f = dt.Educators.Where(b => b.emailid == email).Single();
            tfname.Text = f.fname;
            tlname.Text = f.lname;
            tmno.Text = f.contactno;
            temail.Text = f.emailid;

            tcollage.Text = f.Collage;
            tposition.Text = f.position;
            Image1.ImageUrl = f.imagepath;

        }

    }
    protected void bregister0_Click(object sender, EventArgs e)
    {

        bregister.Visible = true;
        bregister0.Visible = false;
        bregister1.Visible = true;

        tfname.ReadOnly = false;
        tlname.ReadOnly = false;
        tmno.ReadOnly = false;
        temail.ReadOnly = false;

        tcollage.ReadOnly = false;
        tposition.ReadOnly = false;
    }
    protected void bregister_Click(object sender, EventArgs e)
    {
        var c = dt.user_logins.Where(a => a.uid == Convert.ToInt32(Session["user"]) & a.type == 0).Single();
        string email = c.emailid;

        var f = dt.Educators.Where(b => b.emailid == email).Single();
        f.fname = tfname.Text;
        f.lname = tlname.Text;
        f.contactno = tmno.Text;
        f.emailid = temail.Text;

        f.Collage = tcollage.Text;
        f.position = tposition.Text;
        dt.SubmitChanges();
        bregister.Visible = false;
        bregister0.Visible = true;
        bregister1.Visible = false;
        up();
    }
    protected void bregister1_Click(object sender, EventArgs e)
    {
        up();
        bregister.Visible = false;
        bregister0.Visible = true;
        bregister1.Visible = false;
    }

    public void up()
    {
        tfname.ReadOnly = true;
        tlname.ReadOnly = true;
        tmno.ReadOnly = true;
        temail.ReadOnly = true;

        tcollage.ReadOnly = true;
        tposition.ReadOnly = true;


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string name = FileUpload1.PostedFile.FileName;
            FileUpload1.SaveAs(Server.MapPath("edu_images/" + name));
            Image1.ImageUrl = "edu_images/" + name;


            var c = dt.user_logins.Where(a => a.uid == Convert.ToInt32(Session["user"]) & a.type == 0).Single();
            string email = c.emailid;

            var f = dt.Educators.Where(b => b.emailid == email).Single();
            f.imagepath = "edu_images/" + name;
            dt.SubmitChanges();

        }
    }
}