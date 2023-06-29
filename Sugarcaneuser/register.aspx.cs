using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    void mobilecheck()
    {

        //SqlDataReader myReader = null;
        SqlCommand cmd = new SqlCommand("select * from farmer_registertbl where mobile_no=@mobileno", con);
        cmd.Parameters.AddWithValue("@mobileno", txtmob.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Mobile Number already registered ');", true);
            
        }
        else
        {
            con.Close();
            //file upload
            string dirpath = string.Empty;
            if (FileUpload1.HasFile)
            {
                string dir = "img";
                dirpath = dir + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(dirpath));
            }

            //data insertion
            SqlCommand cm = new SqlCommand("farmerregister", con);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.AddWithValue("@farmer_name", txtnm.Text);
            cm.Parameters.AddWithValue("@village", txtvil.Text);
            cm.Parameters.AddWithValue("@taluka", txttal.Text);
            cm.Parameters.AddWithValue("@land_in_hector", txtland.Text);
            cm.Parameters.AddWithValue("@adhar_number", txtadhar.Text);
            cm.Parameters.AddWithValue("@mobile_no", txtmob.Text);
            cm.Parameters.AddWithValue("@email", txtemail.Text);
            cm.Parameters.AddWithValue("@date_of_birth", txtbd.Text);
            cm.Parameters.AddWithValue("@photo_id", dirpath);
            con.Open();
            cm.ExecuteNonQuery();
            con.Close();


            try
            {
                con.Open();
                object obj = cmd.ExecuteScalar();
                HiddenField1.Value = obj.ToString();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }


            //Email

            string nm = txtemail.Text;

            using (MailMessage mm = new MailMessage("prathmeshedake87@gmail.com", nm))
            {
                mm.Subject = "YOUR ID PASS";
                mm.Body = "UserID : " + HiddenField1.Value + "Password : " + txtmob.Text;
                mm.IsBodyHtml = false;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("prathmeshedake87@gmail.com", "7066871087");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('registration done');", true);
            }
            
        }
        
    }

    protected void signup_Click(object sender, EventArgs e)
    {
        mobilecheck();
        //Response.Redirect("http://localhost:51920/Sugarcaneuser/login.aspx");
    }
}