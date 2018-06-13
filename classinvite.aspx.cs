using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class classinvite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;

        int id = Convert.ToInt32(lk.CommandArgument);
        Response.Redirect("send_invitation.aspx?id=" + id);
    }
}