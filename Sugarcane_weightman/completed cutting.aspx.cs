using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sugarcane_weightman_completed_cutting : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        binddata();
    }
    void binddata()
    {
        SqlCommand cmd = new SqlCommand("select bookingid, threshing_season_year,full_name, village, taluka, district, sugercanecomplete, payment_status from Booking where payment_status='pending'", cn);
        cn.Open();
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        cn.Close();

    }
}