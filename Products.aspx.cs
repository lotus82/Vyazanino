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
    public partial class Products : System.Web.UI.Page
    {
        String connectionString = "";
        String Category_Parent_Name = "";

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
            if (!IsPostBack)
            {
                connectionString = Application["ConnectionString"].ToString();
                DataTable dt = new DataTable();
                dt.Columns.Add("ID_Category", typeof(int));
                dt.Columns.Add("Category_Name", typeof(string));
                dt.Columns.Add("Count", typeof(int));
                dt.Columns.Add("Parents", typeof(int));

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("Catalog", con))
                    {
                        Int32 parents = Convert.ToInt32(HttpContext.Current.Request.QueryString["parents"].ToString());
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@ID_Category_Parent", SqlDbType.Int).Value = parents;
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                dt.Rows.Add(reader.GetInt32(0), reader.GetString(1), reader.GetInt32(2),parents);
                            }
                            reader.NextResult();
                            while (reader.Read())
                            {
                                Category_Parent_Name = reader.GetString(0);
                            }
                        }
                        else
                        {
                        }
                        reader.Close();
                        con.Close();
                    }
                }

                Repeater_Catalog.DataSource = dt;
                Repeater_Catalog.DataBind();
                UpdatePanel_Catalog.Update();
                
                DataTable dt_goods = new DataTable();
                dt_goods.Columns.Add("ID_Goods", typeof(Int64));
                //dt_goods.Columns.Add("GUID_Goods", typeof(Guid));
                dt_goods.Columns.Add("Name_Goods", typeof(string));
                dt_goods.Columns.Add("Descript_Goods", typeof(String));
                dt_goods.Columns.Add("Category_Goods", typeof(int));
                dt_goods.Columns.Add("Price_Goods", typeof(Decimal));
                dt_goods.Columns.Add("Count_Goods", typeof(int));
                dt_goods.Columns.Add("Size_Goods", typeof(int));
                dt_goods.Columns.Add("Colors_Goods", typeof(int));
                dt_goods.Columns.Add("Foto_Goods", typeof(String));
                //dt_goods.Columns.Add("Height_Goods", typeof(int));
                //dt_goods.Columns.Add("Width_Goods", typeof(int));
                //dt_goods.Columns.Add("Seller_Goods", typeof(Guid));
                //dt_goods.Columns.Add("Action_Goods", typeof(int));

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("Goods_select", con))
                    {
                        string dirName = Server.MapPath("~/assets/images/products/");
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@ID_Category", SqlDbType.Int).Value = Convert.ToInt32(HttpContext.Current.Request.QueryString["category"].ToString());
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.HasRows)
                        {
                            Label_Empty.Text = "";
                            while (reader.Read())
                            {
                                ArrayList al_images = new ArrayList();
                                if (Directory.Exists(dirName))
                                {
                                    string[] files = Directory.GetFiles(dirName);
                                    foreach (string s in files)
                                    {
                                        if ((s.Contains(reader.GetGuid(8).ToString().ToLower())) || (s.Contains(reader.GetGuid(8).ToString().ToUpper())))
                                        {
                                            al_images.Add("/assets/images/products/" + Path.GetFileName(s));
                                        }
                                    }
                                }
                                dt_goods.Rows.Add(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetInt32(3), reader.GetDecimal(4), reader.GetInt32(5), reader.GetInt32(6), reader.GetInt32(7), al_images[0]);
                            }
                        }
                        else
                        {
                            Label_Empty.Text = "В данной категории отсутствуют товары. Ведется работа по наполнению каталога.";
                        }
                        reader.Close();
                        con.Close();
                    }
                }
                Repeater_Goods_Table.DataSource = dt_goods;
                Repeater_Goods_Table.DataBind();
                Repeater_Goods_List.DataSource = dt_goods;
                Repeater_Goods_List.DataBind();
            }
        }

        protected void Repeater_Catalog_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
            Label Label_Category_Parent_Name = new Label();
            if (e.Item.ItemType == ListItemType.Header)
            {
              Label_Category_Parent_Name = (Label)e.Item.FindControl("Label_Category_Parent_Name");
            }
            Label_Category_Parent_Name.Text = Category_Parent_Name;
        }

        protected void Repeater_Goods_Table_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "To_Cart")
            {
                
                HiddenField HF_ID_Goods = e.Item.FindControl("HF_ID_Goods") as HiddenField;
                Int32 ID_Goods = Convert.ToInt32(HF_ID_Goods.Value);
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
            Cart_Info();
        }

        protected void Repeater_Goods_List_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "To_Cart")
            {
                if (User.Identity.IsAuthenticated)
                {
                    HiddenField HF_ID_Goods = e.Item.FindControl("HF_ID_Goods") as HiddenField;
                    Int32 ID_Goods = Convert.ToInt32(HF_ID_Goods.Value);
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

                }
            }
            Cart_Info();
        }
        
    }
}