using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsignin_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from farmer_registertbl where @farmer_id=farmer_id and @farmer_password=mobile_no", con);
        cmd.Parameters.AddWithValue("@farmer_id", txtid.Text);
        cmd.Parameters.AddWithValue("@farmer_password", txtpass.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Session["unm"] = txtid.Text;
            Response.Redirect("dashboard.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Your username and Password is incorrect');", true);
        }
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:51920/Sugercaneadmin/login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:51920/sugarcanefillman/fillmanlogin.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:51920/Sugarcane_weightman/weightman_login.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:51920/Sugarcane_Accountant/accountant_login.aspx");
    }
}