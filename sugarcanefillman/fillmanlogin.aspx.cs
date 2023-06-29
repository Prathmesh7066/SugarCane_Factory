using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class sugarcanefillman_fillmanlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsignin_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from fillmantable where contact_no=@logid and village=@village and aadhar_no=@logpass", con);
        cmd.Parameters.AddWithValue("@logid", txtlogid.Text);
        cmd.Parameters.AddWithValue("@village", txtvillg.Text);
        cmd.Parameters.AddWithValue("@logpass", txtpass.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["unm"] = txtlogid.Text;
            Session["vill"] = txtvillg.Text;
            Session["pass"] = txtpass.Text;
            Response.Redirect("dashboard.aspx");
        }
        else
            {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('your username and passsword is incorrect');",true);
        }
    }
}