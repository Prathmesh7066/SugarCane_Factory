using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class booking : System.Web.UI.Page
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
            txttal.Text = (myReader["taluka"].ToString());
            txtland.Text = (myReader["land_in_hector"].ToString());
            txtaadhar.Text = (myReader["adhar_number"].ToString());
            Txtmob.Text = (myReader["mobile_no"].ToString());
            hiddern_farmer_id.Value=(myReader["farmer_id"].ToString());

        }
        con.Close();
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into booking (threshing_season_year,customer_caregory,full_name,village,taluka,district,mobile_no,addhar_card_no,pan_card_no,bank_name,branch,account_no,village_of_sugarcane_field,group_no,water_supply,land_in_hectares,sugaecane_variety,status,sugercanecomplete,farmer_id,payment_status) values (@threshing_season_year,@customer_caregory,@full_name,@village,@taluka,@district,@mobile_no,@addhar_card_no,@pan_card_no,@bank_name,@branch,@account_no,@village_of_sugarcane_field,@group_no,@water_supply,@land_in_hectares,@sugaecane_variety,@status,@sugercanecomplete,@farmer_id,'pending')", con);
        cmd.Parameters.AddWithValue("@full_name", txtnm.Text);
        cmd.Parameters.AddWithValue("@village", txtvil.Text);
        cmd.Parameters.AddWithValue("@taluka", txttal.Text);
        cmd.Parameters.AddWithValue("@district", txtdis.Text);
        cmd.Parameters.AddWithValue("@mobile_no", Txtmob.Text);
        cmd.Parameters.AddWithValue("@addhar_card_no", txtaadhar.Text);
        cmd.Parameters.AddWithValue("@village_of_sugarcane_field", txtsurfield.Text);
        cmd.Parameters.AddWithValue("@group_no", txtgrno.Text);
        cmd.Parameters.AddWithValue("@water_supply",ddwater.Text);
        cmd.Parameters.AddWithValue("@land_in_hectares", txtland.Text);
        cmd.Parameters.AddWithValue("@sugaecane_variety", txtsuva.Text);
        cmd.Parameters.AddWithValue("@status", "Waiting");
        cmd.Parameters.AddWithValue("@bank_name", txtbnm.Text);
        cmd.Parameters.AddWithValue("@branch", txtbranch.Text);
        cmd.Parameters.AddWithValue("@account_no", txtacno.Text);
        cmd.Parameters.AddWithValue("@threshing_season_year", txttsy.Text);
        cmd.Parameters.AddWithValue("@customer_caregory",ddmemb.Text);
        cmd.Parameters.AddWithValue("@pan_card_no", txtpan.Text);
        cmd.Parameters.AddWithValue("@sugercanecomplete", "Waiting");
        cmd.Parameters.AddWithValue("@farmer_id", hiddern_farmer_id.Value);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Booking done');", true);


    }
}