using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class sugarcanefillman_dashboard : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        //Total Booking Count
        SqlCommand cmd = new SqlCommand("select * from booking where status='Verify' and village='" + Session["vill"] + "'", cn);
        cn.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        cn.Close();
        Label1.Text = ds.Tables[0].Rows.Count.ToString();


        //Total Verifyed booking
        SqlCommand cd = new SqlCommand("select * from booking where sugercanecomplete='complete' and village='" + Session["vill"] + "'", cn);
        cn.Open();
        SqlDataAdapter sa = new SqlDataAdapter(cd);
        DataSet da = new DataSet();
        sa.Fill(da);
        cn.Close();
        Label2.Text = da.Tables[0].Rows.Count.ToString();

        //Total waiting booking
        SqlCommand cdm = new SqlCommand("select * from booking where village='" + Session["vill"] + "'", cn);
        cn.Open();
        SqlDataAdapter saa = new SqlDataAdapter(cdm);
        DataSet daa = new DataSet();
        saa.Fill(daa);
        cn.Close();
        Label3.Text = daa.Tables[0].Rows.Count.ToString();


        SqlCommand ccdm = new SqlCommand("select * from booking where status='waiting' and  village='" + Session["vill"] + "'", cn);
        cn.Open();
        SqlDataAdapter ssaa = new SqlDataAdapter(ccdm);
        DataSet adaa = new DataSet();
        ssaa.Fill(adaa);
        cn.Close();
        Label4.Text = daa.Tables[0].Rows.Count.ToString();
    }
}