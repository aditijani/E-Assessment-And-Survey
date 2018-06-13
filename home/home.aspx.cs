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
public partial class home_home : System.Web.UI.Page
{
    static string get=ConfigurationManager.AppSettings["connectvc"];
        SqlConnection con=new SqlConnection(get);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bregister_Click(object sender, EventArgs e)
    {
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx?id=1");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx?id=0");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("login",con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@username",username.Text);
        cmd.Parameters.AddWithValue("@password",userpassword.Text);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {

            while (dr.Read())
            {
                Session["email"] = dr["emailid"].ToString();
                Session["user"] =  dr["uid"].ToString();
                Session["username"] = dr["username"].ToString();
                Session["type"] = dr["type"].ToString();
                if (Convert.ToInt32(dr["type"]) == 0)
                {
                    
                    Response.Redirect("../educatorhome.aspx");
                }
                else
                {
                    Response.Redirect("../studenthome.aspx");

                }

              }
        }
        else
        {
            Label1.Text ="Invalid username or password" + "   "+"<span class='badge badge-important'>X</span>";
            Label1.Visible = true;
        }
        con.Close();
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("forgetpassword", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@emailid", TextBox1.Text);
        //cmd.Parameters.AddWithValue("@password", userpassword.Text);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            while (dr.Read())
            {
                string pw = dr["password"].ToString();
                //Label2.Text = pw;



                MailMessage mail = new MailMessage();
                mail.To.Add(TextBox1.Text);
                mail.From = new MailAddress("ceg.brkha66@gmail.com");
                mail.Subject = "Regarding your password recovery";
                mail.Body = "your password is=<b>'" + pw + "'</b>";
                mail.IsBodyHtml = true;

                //send mail

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                NetworkCredential nc = new NetworkCredential("ceg.brkha66@gmail.com", "radhasoamibrkha");
                smtp.Credentials = nc;
                smtp.EnableSsl = true;
                try
                {
                    smtp.Send(mail);
                    Label1.Visible = true; ;
                    Label1.Text = "Password sent please check in your Email." + "   " + "<span class='badge badge-important'>X</span>";

                }
                catch (Exception ex)
                {
                    Label1.Visible = true; ;
                    Label1.Text = "Error sending mail...verify your emai laddres or internet connection" + "   " + "<span class='badge badge-important'>X</span>";
                }



            }
        }
        else
        {
            Label1.Text = "Invalid email id or Network Connection is slow" + "   " + "<span class='badge badge-important'>X</span>";
            Label1.Visible = true;

        }

    }


    //protected void Button5_Click(object sender, EventArgs e)
    //{
    //    MailMessage mail = new MailMessage();
    //    mail.To.Add(TextBox3.Text);
    //    mail.From = new MailAddress("ceg.brkha66@gmail.com", "vclass");
    //    mail.Subject = "Message from Persons.......";
    //    mail.Body = TextBox4.Text;
    //    mail.IsBodyHtml = true;

    //    //send mail

    //    SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
    //    NetworkCredential nc = new NetworkCredential("ceg.brkha66@gmail.com", "radhasoamibrkha");
    //    smtp.Credentials = nc;
    //    smtp.EnableSsl = true;
    //    try
    //    {
    //        smtp.Send(mail);
    //    }
    //    catch (Exception ex)
    //    {
    //        Label3.Visible = true;

    //        Label3.Text = "Error sending mail...verify your emai laddres or internet connection";
    //    }
    //    TextBox2.Text = "";
    //    TextBox3.Text = "";
    //    TextBox4.Text = "";
    //}
    protected void Button5_Click(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(TextBox3.Text);
        mail.From = new MailAddress("ceg.brkha66@gmail.com", "vclass");
        mail.Subject = "Message from Persons.......";
        mail.Body = TextBox4.Text;
        mail.IsBodyHtml = true;

        //send mail

        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
        NetworkCredential nc = new NetworkCredential("ceg.brkha66@gmail.com", "radhasoamibrkha");
        smtp.Credentials = nc;
        smtp.EnableSsl = true;
        try
        {
            smtp.Send(mail);
        }
        catch (Exception ex)
        {
            Label3.Visible = true;

            Label3.Text = "Error sending mail...verify your emai laddres or internet connection";
        }
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}