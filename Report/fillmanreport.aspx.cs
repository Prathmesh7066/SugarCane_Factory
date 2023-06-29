using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

public partial class Report_fillmanreport : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-1CICO36M\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    void reportbind()
    {
        SqlCommand cmd = new SqlCommand("SELECT * from  fillmantable where taluka=@taluka", con);
        cmd.Parameters.AddWithValue("@taluka", txtvill.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable("fillmantable");
        da.Fill(dt);

        ReportViewer1.ProcessingMode = ProcessingMode.Local;
        ReportViewer1.LocalReport.ReportPath = Server.MapPath("fillmanregbyvill.rdlc");
        ReportViewer1.LocalReport.DataSources.Clear();
        ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
        ReportViewer1.LocalReport.Refresh();
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        reportbind();

    }
}