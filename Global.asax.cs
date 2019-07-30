using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace VyazaninoCOM
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["ConnectionString"] = @"*****";
           // Application["ConnectionString"] = @"Data Source=UCHENIK12\SQLEXPRESS;Initial Catalog=Vyazanino;Trusted_Connection=True;";
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Int32 Count_Goods_Cart = 0;
            Decimal Summa_Goods = 0;
            Session["User_Name"] = "";
            if (User.Identity.IsAuthenticated)
            {
                using (SqlConnection con = new SqlConnection(Application["ConnectionString"].ToString()))
                {
                    using (SqlCommand cmd = new SqlCommand("Cart_Select", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@ID_User_Cart", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Count_Goods_Cart = Count_Goods_Cart + reader.GetInt32(3);
                                Summa_Goods = Summa_Goods + reader.GetDecimal(4);
                            }
                        }
                        else
                        {
                        }
                        reader.Close();
                        con.Close();
                    }
                }
                using (SqlConnection con = new SqlConnection(Application["ConnectionString"].ToString()))
                {
                    using (SqlCommand cmd = new SqlCommand("User_Name_Select", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@ID_User", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Session["User_Name"] = reader.GetString(0);
                            }
                        }
                        reader.Close();
                        con.Close();
                    }
                }
                using (SqlConnection con1 = new SqlConnection(Application["ConnectionString"].ToString()))
                {
                    using (SqlCommand cmd1 = new SqlCommand("Shop_Name_Select", con1))
                    {
                        cmd1.CommandType = CommandType.StoredProcedure;
                        cmd1.Parameters.Add("@Login_Shop", SqlDbType.VarChar, 50).Value = Membership.GetUser().UserName;
                        con1.Open();
                        SqlDataReader reader1 = cmd1.ExecuteReader();
                        if (reader1.HasRows)
                        {
                            while (reader1.Read())
                            {
                                Session["User_Name"] = reader1.GetString(0);
                            }
                        }
                        reader1.Close();
                        con1.Close();
                    }
                }
            }
            Session["ID_User"] = "";
            Session["Total_Count_Cart"] = Count_Goods_Cart.ToString();
            Session["Total_Summ_Cart"] = Summa_Goods.ToString();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Session["ID_User"] = "";
            Session["User_Name"] = "";
            Session["Total_Count_Cart"] = "";
            Session["Total_Summ_Cart"] = "";
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
