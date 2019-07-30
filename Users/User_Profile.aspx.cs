using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;
using suggestionscsharp;
using System.Drawing;
using System.IO;
using System.Collections;
using System.Text;
using System.Net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Web.Script.Serialization;


namespace VyazaninoCOM.Users
{
    public partial class User_Profile : System.Web.UI.Page
    {
        String connectionString = "";
        static Int32 ID_Goods = 0;
        static Guid Add_Goods;
        static Guid GUID_Goods_for_dell;
        static Int16 Count_Goods_Dell = 0;
        static Int32 Active_Index_Page = 0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (HttpContext.Current.Request.QueryString["active"] != null)
                { 
                    if (HttpContext.Current.Request.QueryString["active"].ToString()=="3")
                    {
                        Active_Index_Page = 3;
                        UpdatePanel_Main.Update();
                    }
                }
                else
                {
                    DropDownList_Add_Goods_Category_1.Visible = true;
                    DropDownList_Add_Goods_Category_2.Visible = false;
                    DropDownList_Add_Goods_Category_3.Visible = false;
                    connectionString = Application["ConnectionString"].ToString();
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        using (SqlCommand cmd = new SqlCommand("Profile_Select", con))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.Add("@User_Name", SqlDbType.VarChar, 50).Value = Membership.GetUser().UserName.ToString();
                            con.Open();
                            SqlDataReader reader = cmd.ExecuteReader();
                            if (reader.HasRows)
                            {
                                Label_User_Role.Text = "магазин";
                                Button_Goods.Visible = true;
                                Button_Main.Visible = false;
                                Button_Main_Shop.Visible = true;
                                Button_Messages.Visible = true;
                                Button_Orders.Visible = false;
                                Button_Orders_Shop.Visible = true;
                                Button_Balance.Visible = true;
                                Active_Index_Page = 1;
                                Shop_Profile_Select();
                                UpdatePanel_Main_Shop.Update();
                            }
                            else
                            {
                                Label_User_Role.Text = "профиль";
                                Button_Goods.Visible = false;
                                Button_Main.Visible = true;
                                Button_Main_Shop.Visible = false;
                                Button_Messages.Visible = true;
                                Button_Orders.Visible = true;
                                Button_Orders_Shop.Visible = false;
                                Button_Balance.Visible = false;
                                Active_Index_Page = 0;
                                User_Profile_Select();
                                UpdatePanel_Main.Update();
                            }
                            reader.Close();
                            con.Close();
                        }
                    }
                }
                MultiView_Profile.ActiveViewIndex = Active_Index_Page;
           }
        }


        //-------------------------- (Покупатель) Профиль----------------------------------------------
        protected void User_Profile_Select()
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("User_Profile_Select", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_User", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            First_Name.Text = reader.GetString(0);
                            SurName.Text = reader.GetString(1);
                            TextBox_Phone.Text = reader.GetString(2);
                            Address.Text = reader.GetString(3);
                        }
                    }
                    reader.Close();
                    con.Close();
                }
            }
        }

        protected void User_Profile_Update()
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("User_Profile_Update", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_User", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                    cmd.Parameters.Add("@First_Name", SqlDbType.VarChar,15).Value = First_Name.Text;
                    cmd.Parameters.Add("@SurName", SqlDbType.VarChar, 15).Value = SurName.Text;
                    cmd.Parameters.Add("@Phone", SqlDbType.VarChar, 12).Value = TextBox_Phone.Text;
                    cmd.Parameters.Add("@Address", SqlDbType.VarChar, 150).Value = Address.Text;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        protected void Button_Save_Click(object sender, EventArgs e)
        {
            User_Profile_Update();
            User_Profile_Select();
            UpdatePanel_Main.Update();
        }


        //-------------------------- (Покупатель) Заказы----------------------------------------------
        public  void Order_User_NotFinish_Delete(object sender, EventArgs e, Int32 Order_ID)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Dell_Goods", "$('#myModal_Dell_Goods').modal({backdrop: 'static',keyboard: false });", true);
            //using (SqlConnection con = new SqlConnection("Data Source=ms-sql-8.in-solve.ru;Initial Catalog=1gb_vyazanino1;User Id = 1gb_mbou-sosh-4; Password = 3fe27510czx"))
            //{
            //    using (SqlCommand cmd = new SqlCommand("Order_User_NotFinish_Delete", con))
            //    {
            //        cmd.CommandType = CommandType.StoredProcedure;
            //        cmd.Parameters.Add("@ID_Order", SqlDbType.Int).Value = Order_ID;
            //        con.Open();
            //        cmd.ExecuteNonQuery();
            //        con.Close();
            //    }
            //}
        }

        protected void Order_User_NotFinish_Select()
        {
            connectionString = Application["ConnectionString"].ToString();
            DataTable dt_orders = new DataTable();
            //String Number_Order = "";
            //String Seller_Order = "";
            //String Date_Order = "";
            dt_orders.Columns.Add("Number_Order", typeof(String));
            dt_orders.Columns.Add("Date_Order", typeof(DateTime));
            dt_orders.Columns.Add("Seller_Order", typeof(String));
            dt_orders.Columns.Add("Number_Goods", typeof(Int32));
            dt_orders.Columns.Add("Name_Goods", typeof(String));
            dt_orders.Columns.Add("Price_Goods", typeof(Decimal));
            dt_orders.Columns.Add("Count_Goods", typeof(Int32));
            dt_orders.Columns.Add("Cost_Goods", typeof(Decimal));
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Order_User_NotFinish_Select", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_User", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            //Number_Order = reader.GetGuid(0).ToString();
                            //Seller_Order = reader.GetString(2);
                            //Date_Order = reader.GetDateTime(1).ToShortDateString();
                            dt_orders.Rows.Add(reader.GetInt32(0).ToString(), reader.GetDateTime(1).ToString().Substring(0,10), reader.GetString(2), 1, reader.GetString(3), reader.GetDecimal(4), reader.GetInt32(5), reader.GetDecimal(6));
                        }
                    }
                    reader.Close();
                    con.Close();
                }
            }
            //Label_Number_Order.Text = dt_orders.Rows[0].ItemArray[0].ToString();
            //Label_Date_Order.Text = dt_orders.Rows[0].ItemArray[1].ToString();
            //Label_Seller_Order.Text = dt_orders.Rows[0].ItemArray[2].ToString();
            //Repeater_Oreder_User_NotFinish.DataSource = dt_orders;
            //Repeater_Oreder_User_NotFinish.DataBind();
        }


        //-------------------------- (Покупатель) Выбор вкладки "Основное"----------------------------------------------------------------------------------
        protected void Button_Main_Click(object sender, EventArgs e)
        {
            MultiView_Profile.ActiveViewIndex = 0;
            //UpdatePanel_Profile.Update();  
        }

        //-------------------------- (Покупатель) Выбор вкладки "Покупки"---------------------------------------------------------------------------------
        protected void Button_Orders_Click(object sender, EventArgs e)
        {
            MultiView_Profile.ActiveViewIndex = 2;
            //Order_User_NotFinish_Select();
            //UpdatePanel_Profile.Update();
        }

        //-------------------------- (Покупатель) Выбор вкладки "Сообщения"----------------------------------------------------------------------------------
        protected void Button_Messages_Click(object sender, EventArgs e)
        {
            MultiView_Profile.ActiveViewIndex = 4;
            //UpdatePanel_Profile.Update();
        }

        


        
        //-------------------------Профиль-----------------------------------------------------------
        protected void Shop_Profile_Select()
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Shop_Profile_Select", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Login_Shop", SqlDbType.VarChar, 50).Value = Membership.GetUser().UserName;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Company_Name.Text = reader.GetString(0);
                            Description_Shop.Text = reader.GetString(1);
                            SurName_Shop.Text = reader.GetString(2);
                            Name_Shop.Text = reader.GetString(3);
                            Address_Shop.Text = reader.GetString(4);
                            City_Shop.Text = reader.GetString(5);
                            Country_Shop.Text = reader.GetString(6);
                            Image_Shop_Avatar.ImageUrl = "../assets/images/shops/shop_" + Membership.GetUser().ProviderUserKey.ToString() + ".jpg";
                        }
                    }
                    reader.Close();
                    con.Close();
                }
            }
        }

        protected void Shop_Profile_Update()
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Shop_Profile_Update", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Login_Shop", SqlDbType.VarChar, 50).Value = Membership.GetUser().UserName;
                    cmd.Parameters.Add("@Name_Company", SqlDbType.VarChar, 150).Value = Company_Name.Text;
                    cmd.Parameters.Add("@Description_Shop", SqlDbType.VarChar).Value = Description_Shop.Text;
                    cmd.Parameters.Add("@Surname_Seller", SqlDbType.VarChar, 50).Value = SurName_Shop.Text;
                    cmd.Parameters.Add("@Name_Seller", SqlDbType.VarChar, 50).Value = Name_Shop.Text;
                    cmd.Parameters.Add("@Address_Shope", SqlDbType.VarChar, 150).Value = Address_Shop.Text;
                    cmd.Parameters.Add("@City", SqlDbType.VarChar, 100).Value = City_Shop.Text;
                    cmd.Parameters.Add("@Country", SqlDbType.VarChar, 100).Value = Country_Shop.Text;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
         
        protected void Button_Main_Shop_Click(object sender, EventArgs e)
        {
            MultiView_Profile.ActiveViewIndex = 1;
            //UpdatePanel_Profile.Update(); 
        }

        protected void Button_Save_Shop_Click(object sender, EventArgs e)
        {
            Shop_Profile_Update();
            Shop_Profile_Select();
            UpdatePanel_Main_Shop.Update();
        }

        protected void Upload_Shop_Avatar_Button_Click(object sender, EventArgs e)
        {
            string savePath = Server.MapPath("~/assets/images/shops/");

            if (FileUpload_Shop_Avatar.HasFile)
            {
                string fileName = Server.HtmlEncode(FileUpload_Shop_Avatar.FileName);

                string extension = System.IO.Path.GetExtension(fileName);

                if ((extension == ".jpg")||(extension==".JPG"))
                {
                    savePath += "shop_" + Membership.GetUser().ProviderUserKey.ToString() + ".jpg";
                    FileUpload_Shop_Avatar.SaveAs(savePath);
                    Label_Status_Shop_Avatar.ForeColor = Color.Blue;
                    Label_Status_Shop_Avatar.Text = "Фото успешно загружено.";
                }
                else
                {
                    Label_Status_Shop_Avatar.ForeColor = Color.Red;
                    Label_Status_Shop_Avatar.Text = "Фото не загружено!";
                }
            }
        }


        //-------------------------Товары-----------------------------------------------------------
        protected void Repeater_Goods_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Dell")
            {
                HiddenField HF_ID_Goods = e.Item.FindControl("HF_ID_Goods") as HiddenField;
                ID_Goods = Convert.ToInt32(HF_ID_Goods.Value);
                TextBox TextBox_Count_Product = e.Item.FindControl("TextBox_Count_Product") as TextBox;
                Count_Goods_Dell = Convert.ToInt16(TextBox_Count_Product.Text);
                HiddenField HiddenField_Foto_Goods = e.Item.FindControl("HiddenField_Foto_Goods") as HiddenField;
                GUID_Goods_for_dell = Guid.Parse(HiddenField_Foto_Goods.Value.ToString().Substring(0,36));
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Dell_Goods", "$('#myModal_Dell_Goods').modal({backdrop: 'static',keyboard: false });", true);
            }
            if (e.CommandName == "Save")
            {
                HiddenField HF_ID_Goods = e.Item.FindControl("HF_ID_Goods") as HiddenField;
                ID_Goods = Convert.ToInt32(HF_ID_Goods.Value);
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Save_Goods", "$('#myModal_Save_Goods').modal({backdrop: 'static',keyboard: false });", true);
            }
        }

        protected void Shop_Goods_Select()
        {
            connectionString = Application["ConnectionString"].ToString();
            DataTable dt_goods = new DataTable();
            dt_goods.Columns.Add("ID_Goods", typeof(Int32));
            dt_goods.Columns.Add("Name_Goods", typeof(string));
            dt_goods.Columns.Add("Descript_Goods", typeof(String));
            dt_goods.Columns.Add("Category_Goods", typeof(String));
            dt_goods.Columns.Add("Price_Goods", typeof(Decimal));
            dt_goods.Columns.Add("Count_Goods", typeof(int));
            dt_goods.Columns.Add("Size_Goods", typeof(int));
            dt_goods.Columns.Add("Colors_Goods", typeof(int));
            dt_goods.Columns.Add("Foto_Goods",typeof(String));
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string dirName = Server.MapPath("~/assets/images/products/");
                using (SqlCommand cmd = new SqlCommand("Shop_Goods_Select", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@GUID_Shop", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            //DataTable dt_images = new DataTable();
                            ArrayList al_images = new ArrayList();
                            //dt_images.Columns.Add("Img_Goods_Select", typeof(String));
                            if (Directory.Exists(dirName))
                            {
                                string[] files = Directory.GetFiles(dirName);
                                foreach (string s in files)
                                {
                                    if ((s.Contains(reader.GetGuid(8).ToString().ToLower())) || (s.Contains(reader.GetGuid(8).ToString().ToUpper())))
                                    {
                                        al_images.Add(Path.GetFileName(s));
                                        //dt_images.Rows.Add("../assets/images/products/" + Path.GetFileName(s));
                                    }

                                }
                            }
                            al_images.Add(string.Empty);
                            dt_goods.Rows.Add(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetDecimal(4), reader.GetInt32(5), reader.GetInt32(6), reader.GetInt32(7), al_images[0]);
                        }
                    }
                    reader.Close();
                    con.Close();
                }
            }
            Repeater_Goods.DataSource = dt_goods;
            Repeater_Goods.DataBind();
        }
        
        protected void Shop_Goods_Dell(Int32 ID_Goods, Int16 Count_Goods_Dell)
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Shop_Goods_Delete", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_Goods", SqlDbType.Int).Value = ID_Goods;
                    cmd.Parameters.Add("@Count_Goods_Dell", SqlDbType.Int).Value = Count_Goods_Dell;
                    cmd.Parameters.Add("@GUID_Shop", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            string dirName = Server.MapPath("~/assets/images/products/");
            if (Directory.Exists(dirName))
            {
                foreach (string s in SafeEnumerateFiles(dirName, GUID_Goods_for_dell.ToString().ToUpper() + "*.jpg", SearchOption.TopDirectoryOnly))
                {
                    if (TryDeleteFileByName(Path.GetFileName(s), dirName) == -1)
                    {
                        //  ("Имя файла или каталог указан неверно.");
                    }
                }
            }
        }

        protected void Button_Goods_Click(object sender, EventArgs e)
        {
            MultiView_Profile.ActiveViewIndex = 5;
            Shop_Goods_Select();
            //UpdatePanel_Profile.Update(); 
        }

        protected void Button_Dell_Goods_Cancel_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Dell_Goods", "$('#myModal_Dell_Goods').modal('hide');", true);
        }

        protected void Button_Dell_Goods_Dell_Click(object sender, EventArgs e)
        {
            Shop_Goods_Dell(ID_Goods, Count_Goods_Dell);
            Shop_Goods_Select();
            //UpdatePanel_Profile.Update();
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Dell_Goods", "$('#myModal_Dell_Goods').modal('hide');", true);
        }

        protected void Button_Save_Goods_Cancel_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Save_Goods", "$('#myModal_Save_Goods').modal('hide');", true);
        }

        protected void Button_Save_Goods_Save_Click(object sender, EventArgs e)
        {
            Shop_Goods_Save(ID_Goods);
            Shop_Goods_Select();
            //UpdatePanel_Profile.Update();
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Save_Goods", "$('#myModal_Save_Goods').modal('hide');", true);
        }
        
        protected void Button_Orders_Shop_Click(object sender, EventArgs e)
        {
            MultiView_Profile.ActiveViewIndex = 3;
            //UpdatePanel_Profile.Update(); 
        }

        protected void Shop_Goods_Save(Int64 ID_Goods)
        {

        }

        public int TryDeleteFileByName(string fileName, string pathName)
        {
            string fullName = pathName + "\\" + fileName;

            //Проверяем, а существует ли файл который нужно удалить
            if (System.IO.File.Exists(fullName))
            {
                //Удаляем :)
                System.IO.File.Delete(fullName);
                //Удаление прошло успешно возвращаем 0
                return 0;
            }

            //Файла который нужно удалить не существует -1
            return -1;
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

        protected void Button_Goods_Clear_Click(object sender, EventArgs e)
        {
            
            
        }

        
        //-------------------------Добавление нового товара------------------------------------------
        protected void Button_Goods_Add_Click(object sender, EventArgs e)
        {
            MultiView_Profile.ActiveViewIndex = 7;
            DropDownList_Add_Goods_Category_1.Items.Clear();
            DropDownList_Add_Goods_Category_1.Items.Add(string.Empty);
            DropDownList_Add_Goods_Category_1_Bind();
            DropDownList_Add_Goods_Category_1.SelectedIndex = -1;
            Select_Img_Add_Goods();
            //UpdatePanel_Profile.Update();
        }

        protected void DropDownList_Add_Goods_Category_1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList_Add_Goods_Category_2.Items.Clear();
            DropDownList_Add_Goods_Category_2.Items.Add(string.Empty);
            DropDownList_Add_Goods_Category_2.Visible = true;
            DropDownList_Add_Goods_Category_3.Visible = false;
            Button_Add_Goods_Save.Visible = false;
            DropDownList_Add_Goods_Category_2_Bind(Convert.ToInt32(DropDownList_Add_Goods_Category_1.SelectedValue));
            DropDownList_Add_Goods_Category_2.SelectedIndex = -1;
            UpdatePanel_Add_Goods.Update();
        }

        protected void DropDownList_Add_Goods_Category_2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList_Add_Goods_Category_3.Items.Clear();
            DropDownList_Add_Goods_Category_3.Items.Add(string.Empty);
            DropDownList_Add_Goods_Category_3.Visible = true;
            Button_Add_Goods_Save.Visible = false;
            DropDownList_Add_Goods_Category_3_Bind(Convert.ToInt32(DropDownList_Add_Goods_Category_2.SelectedValue));
            DropDownList_Add_Goods_Category_3.SelectedIndex = -1;
            UpdatePanel_Add_Goods.Update();
        }

        protected void DropDownList_Add_Goods_Category_3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Button_Add_Goods_Save.Visible = true;
        }

        protected void View_Add_Goods_Activate(object sender, EventArgs e)
        {
            Add_Goods = Guid.NewGuid();
        }

        protected void Button_Add_Goods_Save_Click(object sender, EventArgs e)
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Shop_Add_Goods_Insert", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@GUID_Goods", SqlDbType.UniqueIdentifier).Value = Add_Goods;
                    cmd.Parameters.Add("@Name_Goods", SqlDbType.VarChar, 200).Value = TextBox_Add_Goods_Name.Text;
                    cmd.Parameters.Add("@Descript_Goods", SqlDbType.VarChar).Value = TextBox_Add_Goods_Descript.Text;
                    cmd.Parameters.Add("@Price_Goods", SqlDbType.Decimal).Value = Convert.ToDecimal(TextBox_Add_Goods_Price.Text);
                    cmd.Parameters.Add("@Count_Goods", SqlDbType.Int).Value = Convert.ToInt32(TextBox_Add_Goods_Count.Text);
                    cmd.Parameters.Add("@Category_Goods", SqlDbType.Int).Value = Convert.ToInt32(DropDownList_Add_Goods_Category_3.SelectedValue);
                    cmd.Parameters.Add("@Seller_Goods", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            MultiView_Profile.ActiveViewIndex = 5;
            Shop_Goods_Select();
            UpdatePanel_Goods.Update();
        }

        protected void Select_Img_Add_Goods()
        {
            string dirName = Server.MapPath("~/assets/images/products/");
            DataTable dt_images = new DataTable();
            dt_images.Columns.Add("Img_Add_Goods",typeof(string));
            if (Directory.Exists(dirName))
            {
                string[] files = Directory.GetFiles(dirName);
                foreach (string s in files)
                {
                    if (s.ToUpper().Contains(Add_Goods.ToString().ToUpper()))
                    {
                        dt_images.Rows.Add(Path.GetFileName(s).ToString());
                    }
                }
            }
            Repeater_Img_Add_Goods.DataSource = dt_images;
            Repeater_Img_Add_Goods.DataBind();
            UpdatePanel_Add_Goods_Img.Update();
        }

        protected void Upload_Image_Add_Goods_Button_Click(object sender, EventArgs e)
        {
            string savePath = Server.MapPath("~/assets/images/products/"); //@\assets\images\products\;

            if (FileUpload_Add_Goods.HasFile)
            {
                string fileName = Server.HtmlEncode(FileUpload_Add_Goods.FileName);
                string extension = System.IO.Path.GetExtension(fileName);
                if ((extension == ".jpg") || (extension == ".JPG"))
                {
                    string dirName = Server.MapPath("~/assets/images/products/");
                    if (Directory.Exists(dirName))
                    {
                        string[] files = Directory.GetFiles(dirName);
                        savePath += Add_Goods.ToString().ToUpper() + "_" + Guid.NewGuid().ToString().ToUpper() + ".jpg";
                        FileUpload_Add_Goods.SaveAs(savePath);
                        Label_Image_Add_Goods_Upload_Status.ForeColor = Color.Blue;
                        Label_Image_Add_Goods_Upload_Status.Text = "Фото успешно загружено.";
                    }
                }
                else
                {
                    Label_Image_Add_Goods_Upload_Status.ForeColor = Color.Red;
                    Label_Image_Add_Goods_Upload_Status.Text = "Фото не загружено! Поддерживаемый формат .jpg";
                }
            }
            Select_Img_Add_Goods();
        }

        protected void DropDownList_Add_Goods_Category_1_Bind()
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Category_1_Select", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        DropDownList_Add_Goods_Category_1.DataSource = reader;
                        DropDownList_Add_Goods_Category_1.DataTextField = "Category_Name";
                        DropDownList_Add_Goods_Category_1.DataValueField = "ID_Category";
                        DropDownList_Add_Goods_Category_1.DataBind();
                    }
                    //reader.Close();
                    con.Close();
                }
            }
        }

        protected void DropDownList_Add_Goods_Category_2_Bind(Int32 Cat_1)
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Category_2_Select", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_Category_1", SqlDbType.Int).Value = Cat_1;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        DropDownList_Add_Goods_Category_2.DataSource = reader;
                        DropDownList_Add_Goods_Category_2.DataTextField = "Category_Name";
                        DropDownList_Add_Goods_Category_2.DataValueField = "ID_Category";
                        DropDownList_Add_Goods_Category_2.DataBind();
                    }
                    //reader.Close();
                    con.Close();
                }
            }
        }

        protected void DropDownList_Add_Goods_Category_3_Bind(Int32 Cat_2)
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Category_3_Select", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_Category_2", SqlDbType.Int).Value = Cat_2;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        DropDownList_Add_Goods_Category_3.DataSource = reader;
                        DropDownList_Add_Goods_Category_3.DataTextField = "Category_Name";
                        DropDownList_Add_Goods_Category_3.DataValueField = "ID_Category";
                        DropDownList_Add_Goods_Category_3.DataBind();
                    }
                    reader.Close();
                    con.Close();
                }
            }
        }
        
        
        //-------------------------Баланс-----------------------------------------------------------
        protected void Button_Balance_Click(object sender, EventArgs e)
        {
            MultiView_Profile.ActiveViewIndex = 6;
            Shop_Balance_Select();
            UpdatePanel_Balance.Update();
            //UpdatePanel_Profile.Update(); 
        }

        protected void Button_Balance_Add_Click(object sender, EventArgs e)
        {
            //POST("https://securepay.tinkoff.ru/v2", "TerminalKey=1564077239358DEMO&Amount=140000&OrderId=21050&Description=Проверка");
            
            Label_post.Text=POST1();
            UpdatePanel_Balance.Update();
        }

        protected void Button_Balance_History_Click(object sender, EventArgs e)
        {

        }

        protected void Shop_Balance_Select()
        {
            connectionString = Application["ConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Shop_Balance_Select", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@GUID_Shop", SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Label_Shop_Balance.Text = reader.GetDecimal(0).ToString();
                        }
                    }
                    reader.Close();
                    con.Close();
                }
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Dell_Goods", "$('#myModal_Dell_Goods').modal({backdrop: 'static',keyboard: false });", true);
            
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal_Dell_Goods", "$('#myModal_Dell_Goods').modal({backdrop: 'static',keyboard: false });", true);
            UpdatePanel_Orders_User.Update();
        }

        private static string POST(string Url, string Data)
        {
            System.Net.WebRequest req = System.Net.WebRequest.Create(Url);
            req.Method = "POST";
            req.Timeout = 100000;
            req.ContentType = "application/x-www-form-urlencoded";
            byte[] sentData = Encoding.GetEncoding(1251).GetBytes(Data);
            req.ContentLength = sentData.Length;
            System.IO.Stream sendStream = req.GetRequestStream();
            sendStream.Write(sentData, 0, sentData.Length);
            sendStream.Close();
            System.Net.WebResponse res = req.GetResponse();
            System.IO.Stream ReceiveStream = res.GetResponseStream();
            System.IO.StreamReader sr = new System.IO.StreamReader(ReceiveStream, Encoding.UTF8);
            //Кодировка указывается в зависимости от кодировки ответа сервера
            Char[] read = new Char[256];
            int count = sr.Read(read, 0, 256);
            string Out = String.Empty;
            while (count > 0)
            {
                String str = new String(read, 0, count);
                Out += str;
                count = sr.Read(read, 0, 256);
            }
            return Out;
        }

        private static string POST1()
        {

 //           System.Net.WebRequest req = System.Net.WebRequest.Create(Url);
 //           req.Method = "POST";
 //           req.Timeout = 100000;
 //           req.ContentType = "application/x-www-form-urlencoded";

 //           WebClient wc= new WebClient();
 ////wc.Headers.Add(HttpRequestHeader.Cookie,".....");
 //wc.Headers.Add(HttpRequestHeader.ContentType, "application/json");
 //wc.Headers.Add("x-requested-with", "XMLHttpRequest");

 
 string json_data = @"{
    ""TerminalKey"": ""1564077239358DEMO"",
    ""Amount"": ""140000"",
    ""OrderId"": ""21050"",
    ""Description"": ""Подарочная карта на 1400.00 рублей"",
    ""DATA"": {
        ""Phone"": ""+71234567890"",
        ""Email"": ""a@test.com""
    },
    ""Receipt"": {
        ""Email"": ""a@test.ru"",
        ""Phone"": ""+79031234567"",
        ""EmailCompany"": ""b@test.ru"",
        ""Taxation"": ""osn"",
        ""Items"": [
            {
                ""Name"": ""Наименование товара 1"",
                ""Price"": 10000,
                ""Quantity"": 1.00,
                ""Amount"": 10000,
                ""PaymentMethod"": ""full_prepayment"",
                ""PaymentObject"": ""commodity"",
                ""Tax"": ""vat10"",
                ""Ean13"": ""0123456789""
            },
            {
                ""Name"": ""Наименование товара 2"",
                ""Price"": 20000,
                ""Quantity"": 2.00,
                ""Amount"": 40000,
                ""PaymentMethod"": ""prepayment"",
                ""PaymentObject"": ""service"",
                ""Tax"": ""vat20""
            },
            {
                ""Name"": ""Наименование товара 3"",
                ""Price"": 30000,
                ""Quantity"": 3.00,
                ""Amount"": 90000,
                ""Tax"": ""vat10""
            }
        ]
    }
}";
 string json_data1 = @"{
            ""TerminalKey"": ""1564077239358DEMO"",
            ""PaymentId"": ""99082585"",
            ""Token"": ""01a6f7f482fb4edd23837777d061ece5fdf8e4901ebb73a536cf0f1218f92415""}";
 var httpRequest = (HttpWebRequest)WebRequest.Create("https://securepay.tinkoff.ru/v2/GetState");
 httpRequest.Method = "POST";
 httpRequest.ContentType = "application/json";
 try
 {
     using (var requestStream = httpRequest.GetRequestStream())
     using (var writer = new StreamWriter(requestStream))
     {
         writer.Write(json_data1);
     }
     using (var httpResponse = httpRequest.GetResponse())
     using (var responseStream = httpResponse.GetResponseStream())
     using (var reader = new StreamReader(responseStream))
     {
         string response = reader.ReadToEnd();
         var response_json = JObject.Parse(response);
         return response_json["Status"].ToString();
     }
 }
 catch (Exception ex1)
 {
     return ex1.Message;
 }
        }
        

    }
}