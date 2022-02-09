using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace WebApplication10
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string email = email_id.Text;
                string pass = password.Text;
               // Response.Write("On Pageload" + "<font color='green'> IsPostBack = TRUE </font>");
            }
            if (!IsPostBack)
            {
                string email = email_id.Text;
                string pass = password.Text;
                //Response.Write("On Pageload" + "<font color='red'> IsPostBack = False </font>");
            }

        }
        int count = 0;
        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Register.aspx");
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string email = email_id.Text;
            string pass = password.Text;
            unpw_vali.Text = "Invalid Email Id/Password";

                /* *********************Input VALIDATION*********************** 
                     
           email_id_label.Text = "Enter Email Id";
            pass_label.Text = "Enter Password";
*/
          //  Response.Write("Email: "+email+" Password: "+pass);
            
            //SQL REMOTE DB QUERY STARTS
           try
            {
                count++;
                //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BCString"].ConnectionString);
                 SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ONLINEbillcareConnectionString"].ConnectionString);
                conn.Open();
                string ckeckuser = "select count(*) from db_users where email='" + email_id.Text.ToLower() + "'";
                string totalRegistered = "select count(*) from db_users";
                SqlCommand com = new SqlCommand(ckeckuser, conn);
                SqlCommand com2 = new SqlCommand(totalRegistered, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                //Response.Write("<br/>TRY Access No: " + count + "<br/>");
                int totalReg = Convert.ToInt32(com2.ExecuteScalar().ToString());
                if (temp == 1)
                {

                    //  Response.Write("<font color='green'><b>INSIDE</b><br></font>");
                    string checkPasswordQuery = "SELECT password from db_users where email='" + email_id.Text.ToLower() + "'";
                    SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
                    string passwordServer = passCom.ExecuteScalar().ToString().Replace(" ", "");
                    string inputPassword = password.Text;
                    if (passwordServer == inputPassword)
                    {
                        string usernameQuery = "select first_name from db_users where email='" + email_id.Text.ToLower() + "'";
                        SqlCommand usernameCom = new SqlCommand(usernameQuery, conn);
                        string first_name = usernameCom.ExecuteScalar().ToString();

                        //Creating Session
                        Session["new"] = first_name;
                        Session["user_email"] = email_id.Text.ToLower();
                        Response.Redirect("/Home.aspx");
                    }
                    else
                    {
                        unpw_vali.Text = "Invalid Email Id or Password";
                        //Response.Write("<font color='red'> Invalid Password/Username </font>");
                        //Response.Write("<br>" + totalReg);

                    }

                }
                else
                {

                    
                    //Response.Write("<br>" + totalReg);
                }


                conn.Close();

            }
            catch (Exception exc)
            {
              //  Response.Write("<br/>DB Access No: " + count + "<br/>");
               // goto again;
                Response.Write("<br/>Error " + exc.ToString() + "<br/>");

            }
            finally
            {

                //Response.Write("<font color='blue'>&nbsp;Query Executed</font>");
            }
            //SQL REMOTE DB QUERY ENDS

        }
    }
}