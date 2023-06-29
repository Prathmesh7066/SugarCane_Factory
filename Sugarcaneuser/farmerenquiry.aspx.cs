using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Sugarcaneuser_farmerenquiry : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        con.Open();
        SqlDataReader myReader = null;
        SqlCommand cmd = new SqlCommand("select * from farmer_registertbl where farmer_id='" + Session["unm"] + "'", con);
        myReader = cmd.ExecuteReader();


        while (myReader.Read())
        {
            txtnm.Text = (myReader["farmer_name"].ToString());
            txtvil.Text = (myReader["village"].ToString());
            txtmob.Text = (myReader["mobile_no"].ToString());
            txtid.Text = (myReader["farmer_id"].ToString());

        }
        con.Close();
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into farmerenquiry (farmer_id,farmer_name,farmer_village,farmer_mobileno,farmer_query,status) values (@farmer_id,@farmer_name,@farmer_village,@farmer_mobileno,@farmer_query,'pending')", con);
        cmd.Parameters.AddWithValue("@farmer_id", txtid.Text);
        cmd.Parameters.AddWithValue("@farmer_name", txtnm.Text);
        cmd.Parameters.AddWithValue("@farmer_village", txtvil.Text);
        cmd.Parameters.AddWithValue("@farmer_mobileno", txtmob.Text);
        cmd.Parameters.AddWithValue("@farmer_query", txtqu.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('enquiry submitted.');", true);

    }
}