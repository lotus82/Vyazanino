using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Profile;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.SqlServer;

namespace VyazaninoCOM
{
    public partial class User_Registration : System.Web.UI.Page
    {
        String connectionString = "";
        static String Log, Pass = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            TextBox LoginText = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("UserName");
            TextBox Password = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("Password");
            Log = LoginText.Text;
            //Pass = Password.Text;
            
        }

        


        protected void ContinueButton_Click(object sender, EventArgs e)
        {
            if (Membership.ValidateUser(Log, Pass))
            {

                connectionString = Application["ConnectionString"].ToString();
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("User_Profile_Insert", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@ID_User", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }

                //FormsAuthentication.RedirectFromLoginPage(Log, false);
                Response.Redirect("Default.aspx");
            }
        }

        


        
    }
}