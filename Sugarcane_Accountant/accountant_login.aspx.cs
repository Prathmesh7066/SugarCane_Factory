using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsignin_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from accountant_registration where @accountant_id=contact_no and @accountant_password=aadhar_no", con);
        cmd.Parameters.AddWithValue("@accountant_id", txtid.Text);
        cmd.Parameters.AddWithValue("@accountant_password", txtpass.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

         if(dr.Read())
        {
            Session["unm"] = txtid.Text;
            //Session["pass"] = txtpass.Text;
            Response.Redirect("dashboard.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Your username and Password is incorrect');", true);
        }
        con.Close();
    }



}