using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void signup_Click(object sender, EventArgs e)
    {
        //file upload
        string dirpath = string.Empty;
        if(FileUpload1.HasFile)
        {
            string dir = "img";
            dirpath = dir + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(dirpath));
        }

        //data insertion
        SqlCommand cmd = new SqlCommand("insert into farmer_registertbl (farmer_name,village,taluka,land_in_hector,adhar_number,mobile_no,date_of_birth,photo_id) values (@farmer_name,@village,@taluka,@land_in_hector,@adhar_number,@mobile_no,@date_of_birth,@photo_id)",con);
        cmd.Parameters.AddWithValue("@farmer_name", txtnm.Text);
        cmd.Parameters.AddWithValue("@village", txtvil.Text);
        cmd.Parameters.AddWithValue("@taluka", txttal.Text);
        cmd.Parameters.AddWithValue("@land_in_hector", txtland.Text);
        cmd.Parameters.AddWithValue("@adhar_number", txtadhar.Text);
        cmd.Parameters.AddWithValue("@mobile_no", txtmob.Text);
        cmd.Parameters.AddWithValue("@date_of_birth", txtbd.Text);
        cmd.Parameters.AddWithValue("@photo_id", dirpath);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}