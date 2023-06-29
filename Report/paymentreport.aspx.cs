using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

public partial class Report_paymentreport : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-1CICO36M\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    reportbind();

        //}

    }

    void reportbind()
    {
        //SqlCommand cmd = new SqlCommand("SELECT * from  payment", con);
        //// cmd.Parameters.AddWithValue("@UserId", txtid.Text);
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //DataTable dt = new DataTable("Payment");
        //da.Fill(dt);

        //ReportViewer1.ProcessingMode = ProcessingMode.Local;
        //ReportViewer1.LocalReport.ReportPath = Server.MapPath("paymentReport.rdlc");
        //ReportViewer1.LocalReport.DataSources.Clear();
        //ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
        //ReportViewer1.LocalReport.Refresh();
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdate.Text = Calendar1.SelectedDate.ToShortDateString();
        //dateconversion
        String MyString = Calendar1.SelectedDate.ToShortDateString(); // get value from text field
        DateTime MyDateTime = new DateTime();
        MyDateTime = DateTime.ParseExact(MyString, "dd-MM-yyyy", null);
        String MyString_new = MyDateTime.ToString("yyyy-MM-dd");
        //query
        SqlCommand cmd = new SqlCommand("SELECT * from  payment where payment_date=@date", con);
        cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(MyString_new));
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable("Booking");
        da.Fill(dt);

        ReportViewer1.ProcessingMode = ProcessingMode.Local;
        ReportViewer1.LocalReport.ReportPath = Server.MapPath("paymentReport.rdlc");
        ReportViewer1.LocalReport.DataSources.Clear();
        ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
        ReportViewer1.LocalReport.Refresh();

    }
}