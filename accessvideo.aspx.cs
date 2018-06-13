using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class accessvideo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        string path = lnk.CommandArgument;

        ViewState["video"] = path;
        ModalPopupExtender1.Show();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        ModalPopupExtender1.Hide();
        string extt = System.IO.Path.GetExtension(ViewState["video"].ToString());
        string name = System.IO.Path.GetFileName(ViewState["video"].ToString());
        
        Response.ContentType = "Application/flv";
       
        Response.AppendHeader("Content-Disposition", "attachment; filename=Video");

        Response.TransmitFile(Server.MapPath(ViewState["video"].ToString()));
        Response.End();


    }
    protected void btnclose_Click(object sender, EventArgs e)
    {

    }
}