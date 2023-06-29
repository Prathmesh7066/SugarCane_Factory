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
        //Total farmer
        SqlCommand cmd = new SqlCommand("select * from Booking where status='verify' or status='waiting'", cn);
        cn.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        cn.Close();
        Label1.Text = ds.Tables[0].Rows.Count.ToString();


        ////Total booking
        SqlCommand cd = new SqlCommand("select * from Booking where status='verify'", cn);
        cn.Open();
        SqlDataAdapter sa = new SqlDataAdapter(cd);
        DataSet da = new DataSet();
        sa.Fill(da);
        cn.Close();
        Label2.Text = da.Tables[0].Rows.Count.ToString();

        ////Total waiting booking
        SqlCommand cdm = new SqlCommand("select * from payment where status ='paid'", cn);
        cn.Open();
        SqlDataAdapter saa = new SqlDataAdapter(cdm);
        DataSet daa = new DataSet();
        saa.Fill(daa);
        cn.Close();
        Label3.Text = daa.Tables[0].Rows.Count.ToString();

        SqlCommand cdm1 = new SqlCommand("select * from payment where status ='paid'", cn);
        cn.Open();
        SqlDataAdapter saa1 = new SqlDataAdapter(cdm1);
        DataSet daa1 = new DataSet();
        saa1.Fill(daa1);
        cn.Close();
        Label4.Text = daa1.Tables[0].Rows.Count.ToString();
    }
    }
