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
    public partial class Shops : System.Web.UI.Page
    {
        Guid g;
        String s = "";
        String connectionString = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = Application["ConnectionString"].ToString();
            s = Session["ID_User"].ToString();
            Sellers_Select();
        }

        //--------------------------Процедура "Список магазинов"---------------------------------------------------------------------
        protected void Sellers_Select()
        {
            connectionString = Application["ConnectionString"].ToString();
            DataTable dt = new DataTable();
            dt.Columns.Add("Login_Shop", typeof(String));
            dt.Columns.Add("Name_Company", typeof(String));
            dt.Columns.Add("Date_Registration", typeof(String));
            dt.Columns.Add("Address_Shop", typeof(String));
            dt.Columns.Add("Description", typeof(String));
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Shops_Select", con))
                {
                    //g = new Guid(s);
                    cmd.CommandType = CommandType.StoredProcedure;
                    //cmd.Parameters.Add("@ID_Seller", SqlDbType.UniqueIdentifier).Value = g;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            var guid_shop = Membership.GetUser(reader.GetString(0)).ProviderUserKey;
                            dt.Rows.Add(guid_shop, reader.GetString(1), (reader.GetDateTime(2)).ToShortDateString(),
                                reader.GetString(3), reader.GetString(4));
                        }
                    }
                    else
                    {
                    }
                    reader.Close();
                    con.Close();
                }
            }
            Repeater_Shops.DataSource = dt;
            Repeater_Shops_List.DataSource = dt;
            Repeater_Shops.DataBind();
            Repeater_Shops_List.DataBind();

        }

    }
}