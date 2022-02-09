using System;
using EASendMail;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SmtpMail oMail = new SmtpMail("TryIt");
            SmtpClient oSmtp = new SmtpClient();

            // Set sender email address, please change it to yours
            oMail.From = "test@emailarchitect.net";
            // Set recipient email address, please change it to yours
            oMail.To = "aaqibq@gmail.com";

            // Set email subject
            oMail.Subject = "test email from c# project";

            // Set email body
            oMail.TextBody = "this is a test email sent from c# project, do not reply";

            // Your SMTP server address
            SmtpServer oServer = new SmtpServer("smtp.emailarchitect.net");
            // User and password for ESMTP authentication, if your server doesn't require
            // User authentication, please remove the following codes.
            oServer.User = "test@emailarchitect.net";
            oServer.Password = "testpassword";

            // If your smtp server requires TLS connection, please add this line
            // oServer.ConnectType = SmtpConnectType.ConnectSSLAuto;
            // If your smtp server requires implicit SSL connection on 465 port, please add this line
            // oServer.Port = 465;
            // oServer.ConnectType = SmtpConnectType.ConnectSSLAuto;

            try
            {

                Response.Write("start to send email ...");
                oSmtp.SendMail(oServer, oMail);
                Response.Write("email was sent successfully!");
            }
            catch (Exception ep)
            {
                Response.Write("failed to send email with the following error:");
                Response.Write(ep.Message);
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}