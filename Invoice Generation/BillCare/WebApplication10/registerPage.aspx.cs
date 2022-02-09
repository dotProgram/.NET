using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// These namespaces are used to Establish Connection with database
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication10
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        Boolean flag;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            

                if (IsPostBack)
                {
                    try{
                   // SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BCString"].ConnectionString);
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ONLINEbillcareConnectionString"].ConnectionString);
                    conn.Open();
                    string ckeckuser = "select count(*) from db_users where email='" + email_id.Text.ToLower() + "'";
                    SqlCommand com = new SqlCommand(ckeckuser, conn);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    if (temp == 1)
                    {
                        Response.Write("<font color='red'>User Already Exists&nbsp;</font>");
                        flag = true;
                    }
                        conn.Close();
                    }
                    catch (Exception exc)
                    {
                        Response.Write("Error " + exc.ToString());

                    }

                    
                }
            
                
            

            
            /*
           Random rand = new Random();
           int randomNumber = ((rand.Next(9) + 1) * (rand.Next(99) + 1) * (rand.Next(99) + 1)) / (rand.Next(11) + 1);
           */
            try
            {
                /*  Guid newGuid =Guid.NewGuid();*/


                if (flag != true)
                {
                    //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BCString"].ConnectionString);
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ONLINEbillcareConnectionString"].ConnectionString);
                    conn.Open();
                    String insertquery = "insert into db_users (first_name,last_name,email,password,country,state,city,street_1,street_2,phone,pincode, final_rProcess) values(@first_name,@last_name,@email,@password,@country,@state,@city,@street_1,@street_2,@phone,@pincode, @final_rProcess)";
                    SqlCommand com = new SqlCommand(insertquery, conn);
                    /*com.Parameters.AddWithValue("@Id", newGuid.ToString());*/
                    com.Parameters.AddWithValue("@first_name", first_name.Text);
                    com.Parameters.AddWithValue("@last_name", last_name.Text);
                    com.Parameters.AddWithValue("@email", email_id.Text.ToLower().Replace(" ", ""));
                    com.Parameters.AddWithValue("@password", cpassword.Text);
                    com.Parameters.AddWithValue("@country", country.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@state", state.Text);
                    com.Parameters.AddWithValue("@city", city.Text);
                    com.Parameters.AddWithValue("@street_1", form_street_add1.Text);
                    com.Parameters.AddWithValue("@street_2", form_street_add2.Text);
                    com.Parameters.AddWithValue("@phone", phone.Text);
                    com.Parameters.AddWithValue("@pincode", pincode.Text);
                    com.Parameters.AddWithValue("@final_rProcess", 0);
                    com.ExecuteNonQuery();
                    conn.Close();
                    Session["user_email"] = email_id.Text.ToLower();
                    Response.Redirect("/registerProcessConfirm.aspx?email=" + email_id.Text.ToLower());
                    Response.Write("<font color='purple'>Registration is Successful</font>" + "<font color='green'>Your Id is: </font>&nbsp;" + "<b>" + "</b>");


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