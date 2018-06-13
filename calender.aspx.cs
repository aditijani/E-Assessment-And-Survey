using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class calender : System.Web.UI.Page
{
    DataClassesDataContext dt = new DataClassesDataContext();
    schedule sd = new schedule();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            e_class ec = new e_class();

            var g = dt.e_classes.Where(a => a.classid == Convert.ToInt32(Request.QueryString["id"])).SingleOrDefault();
            Label3.Text = g.course;

            Label4.Text = g.member.ToString();  

        

            startdate();
            
        }
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
    
        date4select(btn.ID);
       
        ModalPopupExtender1.Show();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
      
       

      ModalPopupExtender1.Hide();
    }//next
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        nextdates();
    }//prev
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        prevdates();
        
      
    }



    public void startdate()
    {//date
        ldate1.Text = DateTime.Now.ToString("dd/MM/yyyy");
        ldate2.Text = DateTime.Now.AddDays(1).ToString("dd/MM/yyyy");
        ldate3.Text = DateTime.Now.AddDays(2).ToString("dd/MM/yyyy");
        ldate4.Text = DateTime.Now.AddDays(3).ToString("dd/MM/yyyy");

        ldate5.Text = DateTime.Now.AddDays(4).ToString("dd/MM/yyyy");
        ldate6.Text = DateTime.Now.AddDays(5).ToString("dd/MM/yyyy");
        ldate7.Text = DateTime.Now.AddDays(6).ToString("dd/MM/yyyy");
        Label6.Text = DateTime.Now.AddDays(6).ToShortDateString();
        Label7.Text = DateTime.Now.ToShortDateString();
        //day
        lday1.Text = DateTime.Now.DayOfWeek.ToString();
        lday2.Text = DateTime.Now.AddDays(1).DayOfWeek.ToString();
        lday3.Text = DateTime.Now.AddDays(2).DayOfWeek.ToString();
        lday4.Text = DateTime.Now.AddDays(3).DayOfWeek.ToString();

        lday5.Text = DateTime.Now.AddDays(4).DayOfWeek.ToString();
        lday6.Text = DateTime.Now.AddDays(5).DayOfWeek.ToString();
        lday7.Text = DateTime.Now.AddDays(6).DayOfWeek.ToString();
        //Label6.Text = DateTime.Now.AddDays(6).ToShortDateString();
       // Label7.Text = DateTime.Now.ToShortDateString();


        getdata();
    }
    public void nextdates()
    {
        //date
        Label7.Text = Convert.ToDateTime(Label6.Text).AddDays(1).ToShortDateString();
        ldate1.Text = Convert.ToDateTime(Label6.Text).AddDays(1).ToString("dd/MM/yyyy");
       
        // Convert.ToDateTime(ldate7.Text).AddDays(1).ToString("dd/MM/yyyy");
        // DateTime.Now.Date.ToString("dd/MM/yyyy");
        ldate2.Text = Convert.ToDateTime(Label6.Text).AddDays(2).ToString("dd/MM/yyyy");
        ldate3.Text = Convert.ToDateTime(Label6.Text).AddDays(3).ToString("dd/MM/yyyy");
        ldate4.Text = Convert.ToDateTime(Label6.Text).AddDays(4).ToString("dd/MM/yyyy");

        ldate5.Text = Convert.ToDateTime(Label6.Text).AddDays(5).ToString("dd/MM/yyyy");
        ldate6.Text = Convert.ToDateTime(Label6.Text).AddDays(6).ToString("dd/MM/yyyy");
        ldate7.Text = Convert.ToDateTime(Label6.Text).AddDays(7).ToString("dd/MM/yyyy");
        Label6.Text = Convert.ToDateTime(Label6.Text).AddDays(7).ToShortDateString();

        //day
        lday1.Text = Convert.ToDateTime(Label6.Text).AddDays(1).DayOfWeek.ToString();


        lday2.Text = Convert.ToDateTime(Label6.Text).AddDays(2).DayOfWeek.ToString();
        lday3.Text = Convert.ToDateTime(Label6.Text).AddDays(3).DayOfWeek.ToString();
        lday4.Text = Convert.ToDateTime(Label6.Text).AddDays(4).DayOfWeek.ToString();

        lday5.Text = Convert.ToDateTime(Label6.Text).AddDays(5).DayOfWeek.ToString();
        lday6.Text = Convert.ToDateTime(Label6.Text).AddDays(6).DayOfWeek.ToString();
        lday7.Text = Convert.ToDateTime(Label6.Text).AddDays(7).DayOfWeek.ToString();
        getdata();
    }
    public void prevdates()
    {
        //date
        Label6.Text = Convert.ToDateTime(Label7.Text).AddDays(-1).ToShortDateString();
        ldate1.Text = Convert.ToDateTime(Label7.Text).AddDays(-7).ToString("dd/MM/yyyy");

        // Convert.ToDateTime(ldate7.Text).AddDays(1).ToString("dd/MM/yyyy");
        // DateTime.Now.Date.ToString("dd/MM/yyyy");
        ldate2.Text = Convert.ToDateTime(Label7.Text).AddDays(-6).ToString("dd/MM/yyyy");
        ldate3.Text = Convert.ToDateTime(Label7.Text).AddDays(-5).ToString("dd/MM/yyyy");
        ldate4.Text = Convert.ToDateTime(Label7.Text).AddDays(-4).ToString("dd/MM/yyyy");

        ldate5.Text = Convert.ToDateTime(Label7.Text).AddDays(-3).ToString("dd/MM/yyyy");
        ldate6.Text = Convert.ToDateTime(Label7.Text).AddDays(-2).ToString("dd/MM/yyyy");
        ldate7.Text = Convert.ToDateTime(Label7.Text).AddDays(-1).ToString("dd/MM/yyyy");
        Label7.Text = Convert.ToDateTime(Label6.Text).AddDays(-6).ToShortDateString();
        //day
        lday1.Text = Convert.ToDateTime(Label7.Text).AddDays(-7).DayOfWeek.ToString();


        lday2.Text = Convert.ToDateTime(Label7.Text).AddDays(-6).DayOfWeek.ToString();
        lday3.Text = Convert.ToDateTime(Label7.Text).AddDays(-5).DayOfWeek.ToString();
        lday4.Text = Convert.ToDateTime(Label7.Text).AddDays(-4).DayOfWeek.ToString();

        lday5.Text = Convert.ToDateTime(Label7.Text).AddDays(-3).DayOfWeek.ToString();
        lday6.Text = Convert.ToDateTime(Label7.Text).AddDays(-2).DayOfWeek.ToString();
        lday7.Text = Convert.ToDateTime(Label7.Text).AddDays(-1).DayOfWeek.ToString();
        getdata();
    }

    public void date4select(string d)
    {
        switch (d)
        {
            case "btn1": sdate.Text = ldate1.Text;
                
                break;
            case "btn2": sdate.Text = ldate2.Text;
               
                break;
            case "btn3": sdate.Text = ldate3.Text;
              
                break;
            case "btn4": sdate.Text = ldate4.Text;
               
                break;
            case "btn5": sdate.Text = ldate5.Text;
              
                break;
            case "btn6": sdate.Text = ldate6.Text;
               
                break;
            case "btn7": sdate.Text = ldate7.Text;
             
                break;
            default: sdate.Text = "";
             
                break;
        }


    }



    protected void Button3_Click1(object sender, EventArgs e)
    { 
        string st=TimeSelector1.Hour.ToString()+":"+TimeSelector1.Minute.ToString()+":"+TimeSelector1.AmPm;
        string et = TimeSelector2.Hour.ToString() + ":" + TimeSelector2.Minute.ToString() + ":" + TimeSelector2.AmPm;
        if (TimeSelector1.Hour >= TimeSelector2.Hour)
        {
           
                lblerror.Visible = true;
                lblerror.CssClass = "alert alert-error";


        }
        else
        {
            lblerror.Visible = false;

            sd.class_id =  Convert.ToInt32(Request.QueryString["id"]);

            //
            // string date = Convert.ToDateTime(sdate.Text).ToString("MM/dd/yyyy");

            sd.sdate = sdate.Text;
            sd.stime = st;
            sd.etime = et;
            sd.location = " ";
            dt.schedules.InsertOnSubmit(sd);
            dt.SubmitChanges();
            getdata();
            Response.Redirect("calender.aspx?id="+Request.QueryString["id"]);
        }
    }

    public void getdata()
    {

        DataList1.DataBind();
        DataList2.DataBind();
        DataList3.DataBind();
        DataList4.DataBind();
        DataList5.DataBind();
        DataList6.DataBind(); 
        DataList7.DataBind();
    }



    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}