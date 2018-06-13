using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
public partial class home_register : System.Web.UI.Page
{
    static string get = ConfigurationManager.AppSettings["connectvc"];
    SqlConnection con = new SqlConnection(get);
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Request.QueryString["id"] != null)
        {

            if (Request.QueryString["id"] == "0")
            {


            }
            else
            {

                Label18.Visible = false;
                tposition.Visible = false;
                
            }

        }
        else
        {
            Response.Redirect("home.aspx");

        }




        if (!IsPostBack)
        {
            con.Open();

            string str = "select * from state_list";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows)
            {
                while (r.Read())
                {
                    dstate.Items.Add(r[1].ToString());
                }
            }
            //DropDownList1.SelectedValue = "Select State";

            con.Close();


        }



    }
    protected void bregister_Click(object sender, EventArgs e)
    {
        int f = 0;
        con.Open();

        string em = temail.Text;
        string sel = "select count(rid) from Student where emailid='" + em + "'";
        SqlCommand c = new SqlCommand(sel, con);
        int count = Convert.ToInt32(c.ExecuteScalar().ToString());


        string sell = "select count(eid) from Educator where emailid='" + em + "'";
        SqlCommand cc = new SqlCommand(sell, con);

        int countt = Convert.ToInt32(cc.ExecuteScalar().ToString());


        if (count >= 1 || countt >= 1)
        {
            Response.Write("<script language='javascript'>alert('Emailid is already exists...try with another id');</script>");
        }
        else
        {
            f = 1;
        }
        con.Close();


        if (f == 1)
        {
            con.Open();

            SqlCommand cmd;

            if (Request.QueryString["id"] == "1")
            {
                cmd = new SqlCommand("studentdata", con);


            }
            else
            {
                cmd = new SqlCommand("educatordata", con);
            }
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@fname", tfname.Text);
            cmd.Parameters.AddWithValue("@lname", tlname.Text);
            cmd.Parameters.AddWithValue("@collage", tcollage.Text);
            if (Request.QueryString["id"] == "0")
            {
                cmd.Parameters.AddWithValue("@position", tposition.Text);
            }

            cmd.Parameters.AddWithValue("@state", dstate.SelectedValue);
            cmd.Parameters.AddWithValue("@city", dcity.SelectedValue);
            cmd.Parameters.AddWithValue("@contactno", tmno.Text);
            cmd.Parameters.AddWithValue("@emailid", temail.Text);

            int a = cmd.ExecuteNonQuery();
            Label23.Visible = true;
            Label23.Text = "You are register successfully.....Please check Your mail regarding registration";

            con.Close();

            if (a == 1)
            {
                // Response.Write("<script language='javascript'>alert('mess send');</script>");
                //create mail
                string getra = MakePassword();

                string link = "http://localhost:9999/vclass/best_webdesign_template_1920/user_veri.aspx?id=" + getra + "&type=" + Request.QueryString["id"];
                MailMessage mail = new MailMessage();
                mail.To.Add(temail.Text);
                mail.From = new MailAddress("ceg.brkha66@gmail.com", "vclass");
                mail.Subject = "Regarding your Registration Process";
                mail.Body = "<a href='" + link + "'>click here </a>";
                mail.IsBodyHtml = true;

                //send mail

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                NetworkCredential nc = new NetworkCredential("ceg.brkha66@gmail.com", "radhasoamibrkha");
                smtp.Credentials = nc;
                smtp.EnableSsl = true;
                try
                {
                    smtp.Send(mail);

                    con.Open();
                    string ins = "insert into veri_code values('" + temail.Text + "','" + getra + "')";
                    SqlCommand cmd1 = new SqlCommand(ins, con);
                    cmd1.ExecuteNonQuery();
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("<script language='javascript'>alert('Error sending mail...verify your emai laddres or internet connection');</script>");
                }


            }


        }
    }

    public string MakePassword()
    {
        string possibles = "abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ0123456789";
        char[] passwords = new char[13];
        Random rd = new Random();

        for (int i = 0; i < 13; i++)
        {
            passwords[i] = possibles[rd.Next(0, possibles.Length)];
        }
        return new string(passwords);
    }
    protected void dstate_SelectedIndexChanged(object sender, EventArgs e)
    {
          con.Open();

        dcity.Items.Clear();
        dcity.Enabled = true;
        string str = "select * from cities where city_state='" + dstate.SelectedValue + "'";

        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                //DropDownList2.Items.Clear();
                dcity.Items.Add(dr[1].ToString());
            }
        }

        con.Close();
    
    }
}