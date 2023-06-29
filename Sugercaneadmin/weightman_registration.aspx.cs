using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class Sugercaneadmin_weightman_registration : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-C6HCDFN\SQLEXPRESS;Initial Catalog=sugercane_farming;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string dirpath = string.Empty;
        if (FileUpload1.HasFile)
        {
            string dir = "weightmanimg";
            dirpath = dir + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(dirpath));
        }

        SqlCommand cmd = new SqlCommand("insert into weightman_registration(weightman_name,contact_no,email_id,aadhar_no,village,photo_id) values (@weightman_name,@contact_no,@email_id,@aadhar_no,@village,@photo_id)", con);
        cmd.Parameters.AddWithValue("@weightman_name", txtnm.Text);
        cmd.Parameters.AddWithValue("@contact_no", txtcontact.Text);
        cmd.Parameters.AddWithValue("@email_id", txtemail.Text);
        cmd.Parameters.AddWithValue("@aadhar_no", txtadhar.Text);
        cmd.Parameters.AddWithValue("@village", txtvill.Text);
        cmd.Parameters.AddWithValue("@photo_id", dirpath);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        //Email

        string nm = txtemail.Text;

        using (MailMessage mm = new MailMessage("prathmeshedake87@gmail.com", nm))
        {
            mm.Subject = "Enquiry";
            mm.Body = "UserID : " + txtcontact.Text + "Password : " + txtadhar.Text;
            mm.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("prathmeshedake87@gmail.com", "7066871087");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('thank you.');", true);
        }

    }
}