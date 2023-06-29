using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class dashboard : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //Total Booking Count
        SqlCommand cmd = new SqlCommand("select * from booking where farmer_id='" + Session["unm"] + "'", cn);
        cn.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        cn.Close();
        Label1.Text = ds.Tables[0].Rows.Count.ToString();


        //Total Verifyed booking
        SqlCommand cd = new SqlCommand("select * from booking where farmer_id='" + Session["unm"] + "'and status ='verify'", cn);
        cn.Open();
        SqlDataAdapter sa = new SqlDataAdapter(cd);
        DataSet da = new DataSet();
        sa.Fill(da);
        cn.Close();
        Label2.Text = da.Tables[0].Rows.Count.ToString();

        //Total waiting booking
        SqlCommand cdm = new SqlCommand("select * from booking where farmer_id='" + Session["unm"] + "'and status ='waiting'", cn);
        cn.Open();
        SqlDataAdapter saa = new SqlDataAdapter(cdm);
        DataSet daa = new DataSet();
        saa.Fill(daa);
        cn.Close();
        Label3.Text = daa.Tables[0].Rows.Count.ToString();

        SqlCommand cc = new SqlCommand("select * from farmerenquiry where farmer_id='" + Session["unm"] + "'", cn);
        cn.Open();
        SqlDataAdapter ss = new SqlDataAdapter(cc);
        DataSet dd = new DataSet();
        ss.Fill(dd);
        cn.Close();
        Label4.Text = dd.Tables[0].Rows.Count.ToString();


    }
}