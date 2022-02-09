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
    public partial class Client : System.Web.UI.Page
    {
        Boolean flag;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_email"] != null)
            {
                //user.Text = Session["new"].ToString().ToUpper();
            }
            else
            {
                Response.Redirect("/Login.aspx");

            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Default.aspx");
        }
        protected void AddClient_Click(object sender, EventArgs e)
        {
             if (IsPostBack)
            {
                //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BCString"].ConnectionString);
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ONLINEbillcareConnectionString"].ConnectionString);
                conn.Open();
                string ckeckuser = "select count(*) from db_clients where clientID='" + client_id.Text.ToLower() + "'";
                SqlCommand com = new SqlCommand(ckeckuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("<font color='red'>Client Already Exists&nbsp;</font>");
                    flag = true;
                }

                conn.Close();


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
                   // SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BCString"].ConnectionString);
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ONLINEbillcareConnectionString"].ConnectionString);
                    conn.Open();
                    String insertquery = "insert into db_clients (clientID, first_name, last_name, email, ownerEmailID, country, state, city, street_1, street_2, phone, pincode) values(@clientID, @first_name, @last_name, @email, @ownerEmailID, @country, @state, @city, @street_1, @street_2, @phone, @pincode)";
                    SqlCommand com = new SqlCommand(insertquery, conn);
                    /*com.Parameters.AddWithValue("@Id", newGuid.ToString());*/
                    com.Parameters.AddWithValue("@clientID", client_id.Text.ToLower().Replace(" ", ""));
                    com.Parameters.AddWithValue("@first_name", first_name.Text);
                    com.Parameters.AddWithValue("@last_name", last_name.Text);
                    com.Parameters.AddWithValue("@email", email.Text.ToLower());
                    com.Parameters.AddWithValue("@ownerEmailID", "dj@gmail.com");
                    com.Parameters.AddWithValue("@country", country.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@state", "state");
                    com.Parameters.AddWithValue("@city", "city");
                   com.Parameters.AddWithValue("@street_1", "street_1");
                    com.Parameters.AddWithValue("@street_2", "street_2");
                    com.Parameters.AddWithValue("@phone", phone.Text);
                    com.Parameters.AddWithValue("@pincode", pincode.Text);
                   // com.Parameters.AddWithValue("@final_rProcess", 0);
                    com.ExecuteNonQuery();
                    conn.Close();
                    //Response.Redirect("/registerProcessConfirm.aspx?email=" + email_id.Text.ToLower());
                    //Response.Write("<font color='purple'>Registration is Successful</font>" + "<font color='green'>Your Id is: </font>&nbsp;" + "<b>" + "</b>");


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


            Response.Redirect("/Client.aspx");

        }
        
    }
    
}

            

        
