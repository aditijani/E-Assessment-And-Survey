using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    static string get = ConfigurationManager.AppSettings["connectvc"];
    SqlConnection con = new SqlConnection(get);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("deletedata", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@t_name", "veri_code");
        cmd.Parameters.AddWithValue("@whereid", "id");
        cmd.Parameters.AddWithValue("@wherevalue", "1");
        cmd.ExecuteNonQuery();
        con.Close();
    }
}