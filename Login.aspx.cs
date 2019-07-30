using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VyazaninoCOM
{
    public partial class Login : System.Web.UI.Page
    {
        String connectionString;

        private MasterPage FindMaster(MasterPage master)
        {
            if (master == null) return null;
            if (master is VyazaninoCOM) return master;
            return FindMaster(master.Master);
        }

        protected void Cart_Info()
        {
            Int32 Count_Goods_Cart = 0;
            Decimal Summa_Goods = 0;
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
            }
            Session["Total_Count_Cart"] = Count_Goods_Cart.ToString();
            Session["Total_Summ_Cart"] = Summa_Goods.ToString();
            VyazaninoCOM master = (VyazaninoCOM)FindMaster(this.Master);
            if (master != null) master.Cart_Info();
        }

        protected void User_Info()
        {
            if (User.Identity.IsAuthenticated)
            {
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
            
            VyazaninoCOM master = (VyazaninoCOM)FindMaster(this.Master);
            if (master != null) master.User_Info();
        }
        
        //---------------------Загрузка страницы----------------------------------------------------
        protected void Page_Load(object sender, EventArgs e)
        {
            //Cart_Info();
            //User_Info();
            connectionString = Application["ConnectionString"].ToString();
            if (!this.IsPostBack)
                ViewState["LoginErrors"] = 0;
        }

        //---------------------Валидация логина/пароля----------------------------------------------
        protected void Login1_LoginError(object sender, EventArgs e)
        {
            // Если состояние LoginErrors не существует, создать его
            if (ViewState["LoginErrors"] == null)
                ViewState["LoginErrors"] = 0;

            // Увеличить счетчик неудачных попыток входа
            int ErrorCount = (int)ViewState["LoginErrors"] + 1;
            ViewState["LoginErrors"] = ErrorCount;

            // Проверить количество неудачных попыток
            if ((ErrorCount > 3) && (Login1.PasswordRecoveryUrl != string.Empty))
                Response.Redirect(Login1.PasswordRecoveryUrl);
        }

        //---------------------Аутинтефикация-------------------------------------------------------
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (Membership.ValidateUser(Login1.UserName, Login1.Password))
            {
                e.Authenticated = true;
                Session["ID_User"] = Membership.GetUser(Login1.UserName).ProviderUserKey;
                Cart_Info();
                User_Info();
            }
            else
            {
                e.Authenticated = false;
            }
        }


        protected void Button_Login_Click(object sender, EventArgs e)
        {
        
        } 

    }
}