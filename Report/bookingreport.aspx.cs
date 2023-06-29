using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

public partial class Report_bookingreport : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        //txtdate.Text = Calendar1.SelectedDate.ToShortDateString();
        //dateconversion
        String MyString = Calendar1.SelectedDate.ToShortDateString(); // get value from text field
        DateTime MyDateTime = new DateTime();
        MyDateTime = DateTime.ParseExact(MyString, "dd-MM-yyyy", null);
        String MyString_new = MyDateTime.ToString("yyyy-MM-dd");
        //query
        SqlCommand cmd = new SqlCommand("SELECT * from  booking where booking_date=@date", con);
        cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(MyString_new));
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable("Booking");
        da.Fill(dt);

        ReportViewer1.ProcessingMode = ProcessingMode.Local;
        ReportViewer1.LocalReport.ReportPath = Server.MapPath("bookingReport.rdlc");
        ReportViewer1.LocalReport.DataSources.Clear();
        ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
        ReportViewer1.LocalReport.Refresh();

    }
}
