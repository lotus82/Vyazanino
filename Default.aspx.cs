using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Runtime.Serialization.Json;
//using System.Runtime.Serialization;
using System.Net;

namespace VyazaninoCOM
{
    public partial class Default : System.Web.UI.Page
    {
        String connectionString = "";

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


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Cart_Info();
                User_Info();
                string dirName = Server.MapPath("~/assets/images/products/");
                connectionString = Application["ConnectionString"].ToString();
                DataTable dt_last_goods = new DataTable();
                dt_last_goods.Columns.Add("ID_Goods", typeof(Int32));
                dt_last_goods.Columns.Add("Name_Goods", typeof(string));
                dt_last_goods.Columns.Add("Price_Goods", typeof(Decimal));
                dt_last_goods.Columns.Add("Foto_Goods", typeof(String));
                //dt_last_goods.Columns.Add("GUID_Goods", typeof(String));
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("Default_Select", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                ArrayList al_images = new ArrayList();
                                if (Directory.Exists(dirName))
                                {
                                    string[] files = Directory.GetFiles(dirName);
                                    foreach (string s in files)
                                    {
                                        if ((s.Contains(reader.GetGuid(3).ToString().ToLower())) || (s.Contains(reader.GetGuid(3).ToString().ToUpper())))
                                        { 
                                            al_images.Add(Path.GetFileName(s));
                                        }
                                    }
                                }
                                al_images.Add(string.Empty);
                                dt_last_goods.Rows.Add(reader.GetInt32(0), reader.GetString(1), reader.GetDecimal(2),al_images[0]);
                            }
                        }
                        else
                            reader.Close();
                        con.Close();
                    }

                    Repeater_Last_Goods.DataSource = dt_last_goods;
                    Repeater_Last_Goods.DataBind();
                }
            }
        }

        protected void Repeater_Last_Goods_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "To_Cart")
            {
                HiddenField HF_ID_Goods = e.Item.FindControl("HF_ID_Goods") as HiddenField;
                Int32 ID_Goods = Convert.ToInt32(HF_ID_Goods.Value);
                if (User.Identity.IsAuthenticated)
                { 
                    connectionString = Application["ConnectionString"].ToString();
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        using (SqlCommand cmd = new SqlCommand("Cart_Insert", con))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.Add("@ID_Goods", SqlDbType.Int).Value = ID_Goods;
                            cmd.Parameters.Add("@ID_User_Cart", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey; ;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
                else
                {
                    HttpCookie cookieReq = Request.Cookies["Cart_Unreg"];
                    if (cookieReq != null)// Проверить, удалось ли обнаружить cookie-набор с таким именем.
                    {
                        System.Web.HttpContext context = System.Web.HttpContext.Current;
                        HttpCookie cookie = new HttpCookie("Cart_Unreg");// Создать объект cookie-набора
                        cookie["ID_Goods"] = context.Request.Cookies["Cart_Unreg"].Values["ID_Goods"].ToString() + "," + ID_Goods.ToString();// Установить значения в нем
                        Response.Cookies.Add(cookie);
                        cookie.Expires = DateTime.Now.AddMonths(1);
                    }
                    else
                    {
                        HttpCookie cookie = new HttpCookie("Cart_Unreg");// Создать объект cookie-набора
                        cookie["ID_Goods"] = ID_Goods.ToString();// Установить значения в нем
                        Response.Cookies.Add(cookie);// Добавить куки в ответ
                        cookie.Expires = DateTime.Now.AddMonths(1);// Этот cookie-набор будет оставаться действительным в течение однойго месяца
                    }
                    
                                        
                    string ID_Goods_Unreg;
                    if (cookieReq != null)
                    {
                        ID_Goods_Unreg = cookieReq["Cart_Unreg"];
                    } 
                }
            }
            Cart_Info();
        }

        //public static void WriteCookie(List<CartItem> cartItems)
        //{
        //    DataContractJsonSerializer serializer = new DataContractJsonSerializer(typeof(List<CartItem>));
        //    MemoryStream memoryStream = new MemoryStream();
        //    serializer.WriteObject(memoryStream, cartItems);
        //    string cookieValue = Encoding.Default.GetString(memoryStream.ToArray());
        //    memoryStream.Close();
        //    HttpCookie httpCookie = new HttpCookie(cartCookie);
        //    httpCookie.Value = cookieValue;
        //    httpCookie.Expires = DateTime.Now.AddDays(30d);
        //    HttpContext.Current.Response.Cookies.Add(httpCookie);
        //}

        public String GetCartId()
        {
            //System.Web.HttpContext context = System.Web.HttpContext.Current;
            return "";
            //if (context.Request.Cookies["CartID"] != null)
            //{
            //    return context.Request.Cookies["CartID"].Value;
            //}
            //else
            //{
            //    Guid tempCartId = Guid.NewGuid();
            //    context.Response.Cookies["CartID"].Value = tempCartId.ToString();
            //    context.Response.Cookies["CartID"].Expires = DateTime.Now.AddDays(7);
            //    return tempCartId.ToString();
            //}
        
            //System.Net.CookieContainer cookies = new CookieContainer();
            //System.Net.HttpWebRequest request = (System.Net.HttpWebRequest)WebRequest.Create(uri);
            //request.CookieContainer = cookies;
            //// do something with request
            //var response = request.GetResponse();
            //// do something with response 

            // Создать объект cookie-набора
            //HttpCookie cookie = new HttpCookie("Cart_Unreg");
            //// Установить значения в нем
            //cookie["Language"] = "Russian";
            //cookie["Country"] = "ru-ru";
            //// Добавить куки в ответ
            //Response.Cookies.Add(cookie);
            //// Этот cookie-набор будет оставаться действительным в течение однойго месяца
            //cookie.Expires = DateTime.Now.AddMonths(1);
                
        }

    }
}