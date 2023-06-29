using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

public partial class Report_accountantreport : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-1CICO36M\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            reportbind();
        }

    }

    void reportbind()
    {
        SqlCommand cmd = new SqlCommand("SELECT * from  accountant_registration", con);
       // cmd.Parameters.AddWithValue("@vill", txtvill.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable("accountant_registration");
        da.Fill(dt);

        ReportViewer1.ProcessingMode = ProcessingMode.Local;
        ReportViewer1.LocalReport.ReportPath = Server.MapPath("accountantReport.rdlc");
        ReportViewer1.LocalReport.DataSources.Clear();
        ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
        ReportViewer1.LocalReport.Refresh();
    }

}