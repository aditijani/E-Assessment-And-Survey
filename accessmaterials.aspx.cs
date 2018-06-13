using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class accessmaterials : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.ContentType = "Application/pdf";
        Response.AppendHeader("Content-Disposition", "attachment; filename=Test_PDF.pdf");
        LinkButton lnk = (LinkButton)sender;
        Response.TransmitFile(Server.MapPath(lnk.CommandArgument.ToString()));
        Response.End();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        string path = lnk.CommandArgument;

        ViewState["path"] = path;

        ModalPopupExtender1.Show();
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        ModalPopupExtender1.Hide();

        string extt = System.IO.Path.GetExtension(ViewState["path"].ToString());
        string name = System.IO.Path.GetFileName(ViewState["path"].ToString());

        if (extt == ".doc" || extt == ".docx")
        {
            Response.ContentType = "Application/doc";
        }
        else if(extt==".pdf")
        {

        Response.ContentType = "Application/pdf";
        }
        Response.AppendHeader("Content-Disposition", "attachment; filename=Material");

        Response.TransmitFile(Server.MapPath(ViewState["path"].ToString()));
        Response.End();
    }
   
    protected void btnclose_Click(object sender, EventArgs e)
    {

    }
}