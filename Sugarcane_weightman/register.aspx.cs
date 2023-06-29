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
        SqlCommand cmd = new SqlCommand("farmerregister", con);
        cmd.CommandType = CommandType.StoredProcedure;
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

        //string nm = txtemail.Text;

        using (MailMessage mm = new MailMessage("prasanna.shinde566@gmail.com", "prasanna.shinde566@gmail.com"))
        {
            mm.Subject = "IDPASS";
            mm.Body = "UserID : " + HiddenField1.Value + "Password : " + txtmob.Text;
            mm.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("prasanna.shinde566@gmail.com", "97300236Pp@");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('thank you.');", true);
        }

    }
}