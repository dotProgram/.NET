using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication10
{
    public partial class WebForm3 : System.Web.UI.Page
         
    {    Boolean flag;

        protected void Page_Load(object sender, EventArgs e)
 {
            if (Session["user_email"] == null)
            {
                Response.Redirect("/registerPage.aspx");
            }
            else {
              //  Label193.Text = "Invalid Request";
            }

        }
        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Login.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //  Label193.Text = "Hello Enter do ";
            if (IsPostBack)
            {
                /*
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ONLINEbillcareConnectionString"].ConnectionString);
                conn.Open();
                string ckeckuser = "select count(*) from userBusinessDetails where email='" + email_id.Text.ToLower() + "'";
                SqlCommand com = new SqlCommand(ckeckuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("<font color='red'>User Already Exists&nbsp;</font>");
                    flag = true;
                }

                conn.Close();
                */
                flag = true;
            }
            /*
           Random rand = new Random();
           int randomNumber = ((rand.Next(9) + 1) * (rand.Next(99) + 1) * (rand.Next(99) + 1)) / (rand.Next(11) + 1);
           */
            try
            {
                /*  Guid newGuid =Guid.NewGuid();*/


                if (flag = true)
                {
                   //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BCString"].ConnectionString);
                     SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ONLINEbillcareConnectionString"].ConnectionString);
                    conn.Open();
                    String insertquery = "insert into userBusinessDetails (email,company_name,business_type,financial_year,b_country) values(@email,@company_name,@business_type,@financial_year,@b_country)";
                    SqlCommand com = new SqlCommand(insertquery, conn);
                    /*com.Parameters.AddWithValue("@Id", newGuid.ToString());*/
                    com.Parameters.AddWithValue("@company_name", company_name.Text);
                    com.Parameters.AddWithValue("@business_type", business_name.Text);
                    
                    com.Parameters.AddWithValue("@email", Request.QueryString["email"].ToLower());
                    com.Parameters.AddWithValue("@financial_year", f_year.Text);
                    
                    com.Parameters.AddWithValue("@b_country", b_country.SelectedItem.ToString());
       
                    com.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("/Home.aspx?email=" + Request.QueryString["email"]);
                    Response.Write("<font color='green'>Entire Registration is Successful</font>");


                }
                else
                {
                    Response.Write("<font color='red'>Registration Unsuccessful! </font>");
                }
            }
            catch (Exception exc)
            {
                Response.Write("Error " + exc.ToString());

            }

        }
    }
}