using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace WebApplication1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void SendInfo(object sender, EventArgs e)
        {
            using (MailMessage message = new MailMessage())
            {
                message.From = new MailAddress(Email.Text.ToString());
                message.To.Add(new MailAddress("sunbestofficial@gmail.com"));
                message.Subject = "Message via SunBestSupport from: " + Name.Text.ToString();
                message.Body = msg.Text.ToString();
                SmtpClient client = new SmtpClient();
                client.Credentials = new System.Net.NetworkCredential(Email.Text.ToString(), EmailPassword.Text.ToString());
                client.EnableSsl = true;
                client.Port = 587;
                client.Host = "smtp.gmail.com";
                client.Send(message);
            }

            Response.Redirect("contact_correct.aspx");
            
                  

        }
        
    }
}