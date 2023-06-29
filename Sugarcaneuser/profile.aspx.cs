using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class profile : System.Web.UI.Page
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
            lblnm.Text = (myReader["farmer_name"].ToString());




        }
        con.Close();
    }
}
