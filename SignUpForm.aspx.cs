using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class SignUpForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            // Get the connection string from the configuration file
            string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            // Create a connection and open it
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                // Create the SQL insert query
                string insertQuery = "INSERT INTO UserInfo (Email, FirstName, LastName, Gender, Password, dob, Street, City, State) " +
                    "VALUES (@Email, @FirstName, @LastName, @Gender, @Password, @dob, @Street, @City, @State)";

                // Create a SqlCommand with the query and connection
                using (SqlCommand com = new SqlCommand(insertQuery, conn))
                {
                    // Add parameters with length checks
                    com.Parameters.AddWithValue("@Email", email.Text);
                    com.Parameters.AddWithValue("@FirstName", fname.Text);
                    com.Parameters.AddWithValue("@LastName", lname.Text);
                    com.Parameters.AddWithValue("@Gender", gender.Text);
                    com.Parameters.AddWithValue("@Password", password1.Text);
                    com.Parameters.AddWithValue("@dob", dob.Text);
                    com.Parameters.AddWithValue("@Street", street.Text);
                    com.Parameters.AddWithValue("@City", city.Text);

                    // Add @State parameter with a length check
                    string stateValue = state.Text;
                    if (stateValue.Length <= 50)
                    {
                        com.Parameters.AddWithValue("@State", stateValue);
                    }
                    else
                    {
                        // Handle the case where the state value is too long (e.g., show an error message).
                        // You can display a message to the user or log the error.
                    }

                    // Execute the SQL command
                    com.ExecuteNonQuery();
                }

                // Redirect the user
                Response.Write("Registration Successful");
                Response.Redirect("userlogin.aspx");
            }
        }
    }
}
