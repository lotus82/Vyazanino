using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VyazaninoCOM.Users
{
    public partial class User_Cart : System.Web.UI.Page
    {
        String connectionString = "";
        static Int32 ID_Goods =0;
        static Guid ID_Seller;

        private MasterPage FindMaster(MasterPage master)
        {
            if (master == null) return null;
            if (master is VyazaninoCOM) return master;
            return FindMaster(master.Master);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Cart_Select();
            }
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

        // ----------- Процедура выборки корзины --------------------------------------------------------
        protected void Cart_Select()
        {
            string dirName = Server.MapPath("~/assets/images/products/");
            connectionString = Application["ConnectionString"].ToString();
            DataTable dt = new DataTable();
            dt.Columns.Add("ID_Goods", typeof(Int32));
            dt.Columns.Add("Name_Goods", typeof(String));
            dt.Columns.Add("Price_Goods", typeof(Decimal));
            dt.Columns.Add("Count_Goods_Cart", typeof(Int32));
            dt.Columns.Add("Summa_Goods", typeof(Decimal));
            dt.Columns.Add("Foto_Goods", typeof(String));
            dt.Columns.Add("ID_Seller", typeof(Guid));
            using (SqlConnection con = new SqlConnection(connectionString))
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
                            
                            ArrayList al_images = new ArrayList();
                            if (Directory.Exists(dirName))
                            {
                                foreach (string s in SafeEnumerateFiles(dirName, reader.GetGuid(5).ToString().ToUpper() + "*.jpg", SearchOption.TopDirectoryOnly))
                                {
                                    al_images.Add(Path.GetFileName(s));
                                }
                            }
                            dt.Rows.Add(reader.GetInt32(0), reader.GetString(1), reader.GetDecimal(2), reader.GetInt32(3), reader.GetDecimal(4),al_images[0],reader.GetGuid(6));
                        }
                    }
                    else
                    {
                    }
                    reader.Close();
                    con.Close();
                }
            }
            Repeater_Cart.DataSource = dt;
            Repeater_Cart.DataBind();
            UpdatePanel_Cart.Update();
            Label_Count_Total.Text = Session["Total_Count_Cart"].ToString();
            Label_Summ_Total.Text = Session["Total_Summ_Cart"].ToString();
        }

        // ----------- Процедура добавления товара в корзину --------------------------------------------
        protected void Cart_Insert()
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Cart_Insert", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_User_Cart", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                    cmd.Parameters.Add("@ID_Goods_Cart", SqlDbType.BigInt).Value = Convert.ToInt64(HttpContext.Current.Request.QueryString["id_goods"].ToString());
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            Cart_Info();
        }

        // ----------- Процедура очистки корзины --------------------------------------------------------
        protected void Cart_Delete()
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Cart_Delete", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_User_Cart", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            Cart_Info();
        }

        protected void Cart_Dell_Goods(Int64 ID_Goods_Cart)
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Cart_Dell_Goods", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_User_Cart", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                    cmd.Parameters.Add("@ID_Goods_Cart", SqlDbType.BigInt).Value = ID_Goods_Cart;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            Cart_Info();
        }

        protected void Repeater_Cart_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Dell")
            {
                HiddenField HF_ID_Goods_Cart = e.Item.FindControl("HF_ID_Goods_Cart") as HiddenField;
                ID_Goods = Convert.ToInt32(HF_ID_Goods_Cart.Value);
                
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Cart_Dell_Goods", "$('#myModal_Cart_Dell_Goods').modal({backdrop: 'static',keyboard: false });", true);
            }
            if (e.CommandName == "Order_Seller")
            {
                HiddenField HiddenField_Seller = e.Item.FindControl("HiddenField_Seller") as HiddenField;
                ID_Seller = Guid.Parse(HiddenField_Seller.Value);
                connectionString = Application["ConnectionString"].ToString();
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("Order_User_NotFinish_Insert", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@ID_User", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                        cmd.Parameters.Add("@ID_Seller", SqlDbType.UniqueIdentifier).Value = ID_Seller;
                        cmd.Parameters.Add("@Status_Order", SqlDbType.BigInt).Value = 1;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                Cart_Info();
                Response.Redirect("User_Profile.aspx?active=3");
            }
        }

        protected void Button_Cart_Clear_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Clear_Cart", "$('#myModal_Clear_Cart').modal({backdrop: 'static',keyboard: false });", true);
        }

        protected void Button_Cart_Update_Click(object sender, EventArgs e)
        {
            Cart_Select();
            UpdatePanel_Cart.Update();
        }

        protected void Button_Clear_Cart_Dell_Click(object sender, EventArgs e)
        {
            Cart_Delete();
            Cart_Select();
            UpdatePanel_Cart.Update();
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Clear_Cart", "$('#myModal_Clear_Cart').modal('hide');", true);
            Cart_Info();
            Response.Redirect("User_Cart.aspx");
        }

        protected void Button_Clear_Cart_Cancel_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Clear_Cart", "$('#myModal_Clear_Cart').modal('hide');", true);
        }

        protected void Button_Dell_Goods_Cancel_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Cart_Dell_Goods", "$('#myModal_Cart_Dell_Goods').modal('hide');", true);
        }

        protected void Button_Dell_Goods_Dell_Click(object sender, EventArgs e)
        {
            Cart_Dell_Goods(ID_Goods);
            UpdatePanel_Cart.Update();
            Cart_Select();
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Cart_Dell_Goods", "$('#myModal_Cart_Dell_Goods').modal('hide');", true);
            Cart_Info();
            Response.Redirect("User_Cart.aspx");
        }

        private static IEnumerable<string> SafeEnumerateFiles(string path, string searchPattern, SearchOption searchOption)
        {   /// <summary>
            /// Возвращает перечисляемую коллекцию имен файлов которые соответствуют шаблону в указанном каталоге, с дополнительным просмотром вложенных каталогов
            /// </summary>
            /// <param name="path">Полный или относительный путь катага в котором выполняется поиск</param>
            /// <param name="searchPattern">Шаблон поиска файлов *.*</param>
            /// <param name="searchOption">Одно из значений перечисления SearchOption указывающее нужно ли выполнять поиск во вложенных каталогах или только в указанном каталоге</param>
            /// <returns>Возвращает перечисляемую коллекцию полных имен файлов</returns>
            var dirs = new Stack<string>();
            dirs.Push(path);

            while (dirs.Count > 0)
            {
                string currentDirPath = dirs.Pop();
                if (searchOption == SearchOption.AllDirectories)
                {
                    try
                    {
                        string[] subDirs = Directory.GetDirectories(currentDirPath);
                        foreach (string subDirPath in subDirs)
                        {
                            dirs.Push(subDirPath);
                        }
                    }
                    catch (UnauthorizedAccessException)
                    {
                        continue;
                    }
                    catch (DirectoryNotFoundException)
                    {
                        continue;
                    }
                }

                string[] files = null;
                try
                {
                    files = Directory.GetFiles(currentDirPath, searchPattern);
                }
                catch (UnauthorizedAccessException)
                {
                    continue;
                }
                catch (DirectoryNotFoundException)
                {
                    continue;
                }

                foreach (string filePath in files)
                {
                    yield return filePath;
                }
            }
        }

        protected void Button_Order_Click(object sender, EventArgs e)
        {
            
        }
    }
}