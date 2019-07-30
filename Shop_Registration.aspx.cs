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
using suggestionscsharp;
using System.Web.Services;
using RestSharp;
using NUnit;

namespace VyazaninoCOM
{
    public partial class Shop_Registration : System.Web.UI.Page
    {
        String connectionString = "";
        static String Log, Pass = "";
        static String Strana_Shop, City_Shop = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ContinueButton_Click(object sender, EventArgs e)
        {
            if (Membership.ValidateUser(Log, Pass))
            {
                //TextBox TextBox_Name_Shop = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("TextBox_Name_Shop");
                //TextBox TextBox_Country = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("TextBox_Country");
                //TextBox TextBox_City = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("TextBox_City");
                //connectionString = Application["ConnectionString"].ToString();
                //using (SqlConnection con = new SqlConnection(connectionString))
                //{
                //    using (SqlCommand cmd = new SqlCommand("Shop_Profile_Insert", con))
                //    {
                //        cmd.CommandType = CommandType.StoredProcedure;
                //        cmd.Parameters.Add("@GUID_Shop", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                //        cmd.Parameters.Add("@Name_Shop", SqlDbType.VarChar, 150).Value = TextBox_Name_Shop.Text;
                //        cmd.Parameters.Add("@Country", SqlDbType.VarChar, 100).Value = TextBox_Country.Text;
                //        cmd.Parameters.Add("@City", SqlDbType.VarChar, 100).Value = TextBox_City.Text;
                //        con.Open();
                //        cmd.ExecuteNonQuery();
                //        con.Close();
                //    }
                //}

                FormsAuthentication.RedirectFromLoginPage(Log, false);
            }
        }

        protected void RegisterShop_CreatedUser(object sender, EventArgs e)
        {
            TextBox LoginText = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("UserName");
            TextBox Password = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("Password");
            Log = LoginText.Text;
            Pass = Password.Text;
            TextBox TextBox_Name_Shop = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("TextBox_Name_Shop");
            TextBox TextBox_Country = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("TextBox_Country");
            TextBox TextBox_City = (TextBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("TextBox_City");
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Shop_Profile_Insert", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Login_Shop", SqlDbType.VarChar, 50).Value = Log;
                    cmd.Parameters.Add("@Name_Shop", SqlDbType.VarChar, 150).Value = TextBox_Name_Shop.Text;
                    cmd.Parameters.Add("@Country", SqlDbType.VarChar, 100).Value = Strana_Shop;
                    cmd.Parameters.Add("@City", SqlDbType.VarChar, 100).Value = City_Shop;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

        }

        protected void RegisterShop_CreatingUser(object sender, LoginCancelEventArgs e)
        {
            CheckBox CheckBox_License = (CheckBox)CreateUserWizardStep1.ContentTemplateContainer.FindControl("CheckBox_License");
            if (CheckBox_License.Checked)
            {  }// return;
            else { }
        }

        [WebMethod]
        public static string[,] GetAddress(string Textik, string Strana, string City1)
        {
            Strana_Shop = Strana;
            City_Shop = City1;
            var token = "18562dd1fc0eaa6c6cfe13a8796f4782fcbcbc0c";
            var url = "https://suggestions.dadata.ru/suggestions/api/4_1/rs";
            var api = new SuggestClient(token, url);
            var query = new AddressSuggestQuery(Textik);
            var location = new AddressData();
            location.country = "*";
            query.locations = new AddressData[] { location };
            var response = api.QueryAddress(query);
            var s = new string[response.suggestions.Count, 3];
            for (int i = 0; i < response.suggestions.Count; i++)
            {
                s[i, 0] = response.suggestions[i].ToString();
                if (response.suggestions[i].data.country != null) { s[i, 1] = response.suggestions[i].data.country.ToString(); }
                else { s[i, 1] = ""; }

                if (response.suggestions[i].data.city != null) { s[i, 2] = response.suggestions[i].data.city.ToString(); }
                else { s[i, 2] = ""; }
            }
            return s;
        }

    }
}