using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Security;


namespace VyazaninoCOM
{
    public partial class Cart_Unreg : System.Web.UI.Page
    {
        String connectionString = "";
        static Int32 ID_Goods =0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    Response.Redirect("Users/User_Cart.aspx");
                }
                else
                {
                    HttpCookie cookieReq = Request.Cookies["Cart_Unreg"];
                    if (cookieReq != null)// Проверить, удалось ли обнаружить cookie-набор с таким именем.
                    {
                        System.Web.HttpContext context = System.Web.HttpContext.Current;
                        string ID_Goods_Array = context.Request.Cookies["Cart_Unreg"].Values["ID_Goods"];
                        Cart_Select(ID_Goods_Array);
                    }
                    else
                    {
                        
                    }
                }
            }
        }

        // ----------- Процедура выборки корзины --------------------------------------------------------
        protected void Cart_Select(string ID_Goods_Unreg)
        {
            string dirName = Server.MapPath("~/assets/images/products/");
            connectionString = Application["ConnectionString"].ToString();
            DataTable dt = new DataTable();
            dt.Columns.Add("ID_Goods", typeof(Int32));
            dt.Columns.Add("Name_Goods", typeof(String));
            dt.Columns.Add("Price_Goods", typeof(Decimal));
            dt.Columns.Add("Foto_Goods", typeof(String));
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Cart_Select_Unreg", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_Goods_Unreg", SqlDbType.VarChar).Value = ID_Goods_Unreg;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            ArrayList al_images = new ArrayList();
                            if (Directory.Exists(dirName))
                            {
                                foreach (string s in SafeEnumerateFiles(dirName, reader.GetGuid(3).ToString().ToUpper() + "*.jpg", SearchOption.TopDirectoryOnly))
                                {
                                    al_images.Add(Path.GetFileName(s));
                                }
                            }
                            dt.Rows.Add(reader.GetInt32(0), reader.GetString(1), reader.GetDecimal(2), al_images[0]);
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
            //Label_Count_Total.Text = Session["Total_Count_Cart"].ToString();
            Label_Summ_Total.Text = Session["Total_Summ_Cart"].ToString();
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

        protected void Button_Cart_Clear_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Clear_Cart", "$('#myModal_Clear_Cart').modal({backdrop: 'static',keyboard: false });", true);
        }

        protected void Button_Clear_Cart_Dell_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("Cart_Unreg");// Создать объект cookie-набора
            cookie["ID_Goods"] = String.Empty;// Установить значения в нем
            Response.Cookies.Add(cookie);// Добавить куки в ответ
            cookie.Expires = DateTime.Now.AddDays(-2);
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            //string ID_Goods_Array = context.Request.Cookies["Cart_Unreg"].Values["ID_Goods"];
            Cart_Select(String.Empty);
            UpdatePanel_Cart.Update();
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Clear_Cart", "$('#myModal_Clear_Cart').modal('hide');", true);
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
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            string ID_Goods_Array = context.Request.Cookies["Cart_Unreg"].Values["ID_Goods"];
            var s = ID_Goods_Array.Split(',');
            string ID_Goods_Array_New = "";
                foreach (string str in s)
                {
                    if (str != ID_Goods.ToString())
                    {
                        ID_Goods_Array_New += str + ",";
                    }
                }
            HttpCookie cookie = new HttpCookie("Cart_Unreg");// Создать объект cookie-набора
            cookie["ID_Goods"] = ID_Goods_Array_New;// Установить значения в нем
            Response.Cookies.Add(cookie);
            cookie.Expires = DateTime.Now.AddMonths(1);
            Cart_Select(ID_Goods_Array_New);
            UpdatePanel_Cart.Update();
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Cart_Dell_Goods", "$('#myModal_Cart_Dell_Goods').modal('hide');", true);
        }

        protected void Repeater_Cart_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Dell")
            {
                HiddenField HF_ID_Goods_Cart = e.Item.FindControl("HF_ID_Goods_Cart") as HiddenField;
                ID_Goods = Convert.ToInt32(HF_ID_Goods_Cart.Value);
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Cart_Dell_Goods", "$('#myModal_Cart_Dell_Goods').modal({backdrop: 'static',keyboard: false });", true);
            }
        }
    }
}