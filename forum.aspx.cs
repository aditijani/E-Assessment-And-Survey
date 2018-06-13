using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("A_que.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;
        int id = Convert.ToInt32(lk.CommandArgument);

        Response.Redirect("answerlist.aspx?id=" + id);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}