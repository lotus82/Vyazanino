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

namespace VyazaninoCOM
{
    public partial class Product_Details : System.Web.UI.Page
    {
        String connectionString = "";
        Guid Seller_Goods;
        public String Name_Goods = "";

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

        protected void Page_Load(object sender, EventArgs e)
        {
            string dirName = Server.MapPath("~/assets/images/products/");
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Product_Details", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_Goods", SqlDbType.Int).Value = Convert.ToInt32(HttpContext.Current.Request.QueryString["id_goods"].ToString());
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Name_Goods = reader.GetString(0);
                            Label_Name_Goods.Text = reader.GetString(0);
                            Label_Descript_Goods.Text = reader.GetString(1);
                            Label_Price_Goods.Text = reader.GetDecimal(2).ToString();
                            Input_Count_Goods.Value = reader.GetInt32(3).ToString();
                            Seller_Goods = reader.GetGuid(4);
                            string GUID_Goods = reader.GetGuid(5).ToString();
                            DataTable dt_1 = new DataTable();
                            DataTable dt_2 = new DataTable();
                            dt_1.Columns.Add("N_Goods");
                            dt_1.Columns.Add("Foto_Goods");
                            dt_2.Columns.Add("N_Goods");
                            dt_2.Columns.Add("Foto_Goods");
                            //ArrayList al_images = new ArrayList();
                            if (Directory.Exists(dirName))
                            {
                                int i = 0;

                                foreach (string s in SafeEnumerateFiles(dirName, GUID_Goods.ToString().ToUpper() + "*.jpg", SearchOption.TopDirectoryOnly))
                                {
                                    dt_2.Rows.Add(i, Path.GetFileName(s).ToString());
                                    i++;
                                    dt_1.Rows.Add(i, Path.GetFileName(s).ToString());
                                    
                                    
                                }
                            }
                            Repeater_Foto_Goods_1.DataSource = dt_1;
                            Repeater_Foto_Goods_1.DataBind();
                            //dt_2.Rows[0].Delete();
                            Repeater_Foto_Goods_2.DataSource = dt_2;
                            Repeater_Foto_Goods_2.DataBind();
                        }
                    }
                    else
                    {
                        Label_Empty.Text = "Данного товара больше не существует.";
                    }
                    reader.Close();
                    con.Close();
                }
            }

            
        }

        protected void ImageButton_To_Cart_Click(object sender, ImageClickEventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                connectionString = Application["ConnectionString"].ToString();
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("Cart_Insert", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@ID_Goods", SqlDbType.Int).Value = Convert.ToInt32(HttpContext.Current.Request.QueryString["id_goods"].ToString()); ;
                        cmd.Parameters.Add("@ID_User_Cart", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey; ;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            else
            {

            }
            Cart_Info();
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

    }
}