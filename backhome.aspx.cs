using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class backhome : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        int t=Convert.ToInt32(Session["type"]);
        if (t == 0)
        {
            Response.Redirect("educatorhome.aspx");
        }
        else
        {
            Response.Redirect("studenthome.aspx");
        }
       
    }
}