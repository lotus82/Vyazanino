using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;


namespace VyazaninoCOM
{
    public partial class Helium : System.Web.UI.Page
    {
        Boolean IsPageRefresh = false;
        String connectionString = "Data Source=ms-sql-8.in-solve.ru;Initial Catalog=1gb_vyazanino1;User Id = 1gb_mbou-sosh-4; Password = 3fe27510czx";
        protected void Page_Load(object sender, EventArgs e)
        {

            Helium_Flow_Select();
            Chart_Trnava();
            Chart_Rosa();
            Chart1.Width = (((Request.Browser.ScreenPixelsWidth) * 2 - 100) / 2);
            Chart2.Width = (((Request.Browser.ScreenPixelsWidth) * 2 - 100) / 2);

            Chart1.Series[0].MarkerStyle = MarkerStyle.Circle;
            Chart1.Series[0].MarkerColor = Color.Black;
            Chart1.Series[0].MarkerSize = 7;

            Chart2.Series[0].MarkerStyle = MarkerStyle.Circle;
            Chart2.Series[0].MarkerColor = Color.Black;
            Chart2.Series[0].MarkerSize = 7;

            Chart1.ChartAreas[0].AxisY.Interval = 10;
            Chart1.ChartAreas[0].AxisY.Maximum = 100;
            Chart2.ChartAreas[0].AxisY.Interval = 10;
            Chart2.ChartAreas[0].AxisY.Maximum = 100;

            Chart1.ChartAreas[0].AxisX.MajorGrid.Enabled = true;
            //Chart1.ChartAreas[0].AxisX.MinorGrid.Enabled = true;
            Chart1.ChartAreas[0].AxisY.MajorGrid.Enabled = true;
            //Chart1.ChartAreas[0].AxisY.MinorGrid.Enabled = true;

            Chart2.ChartAreas[0].AxisX.MajorGrid.Enabled = true;
            //Chart2.ChartAreas[0].AxisX.MinorGrid.Enabled = true;
            Chart2.ChartAreas[0].AxisY.MajorGrid.Enabled = true;
            //Chart2.ChartAreas[0].AxisY.MinorGrid.Enabled = true;

            Chart1.Titles.Add(new Title("Расход гелия (Трнавская 2019)", Docking.Top, new Font("Verdana", 14f), Color.Black));
            Chart1.Series["Series_Helium"].ChartType = SeriesChartType.Line;
            Chart1.Series["Series_Line"].ChartType = SeriesChartType.Line;
            Chart1.Series["Series_Helium"].BorderWidth = 5;
            Chart1.Series["Series_Line"].BorderWidth = 4;
            Chart1.Series[0].ToolTip = "#VALX (#VALY{0}%)";

            Chart2.Titles.Add(new Title("Расход гелия (Роза 2019)", Docking.Top, new Font("Verdana", 14f), Color.Black));
            Chart2.Series["Series_Helium"].ChartType = SeriesChartType.Line;
            Chart2.Series["Series_Line"].ChartType = SeriesChartType.Line;
            Chart2.Series["Series_Helium"].BorderWidth = 5; 
            Chart2.Series["Series_Line"].BorderWidth = 4;
            Chart2.Series[0].ToolTip = "#VALX (#VALY{0}%)";

            

            if (!IsPostBack)
            {
                ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
                {
                    Path = "~/Scripts/jquery-1.9.0.min.js",

                });


                ViewState["postGuids"] = System.Guid.NewGuid().ToString();
                Session["postGuid"] = ViewState["postGuids"].ToString();
            }
            else
            {
                if (ViewState["postGuids"].ToString() != Session["postGuid"].ToString())
                {
                    IsPageRefresh = true;
                    TextBox_Helium.Text = "";
                    Label_Validator.Text = "";
                }
                Session["postGuid"] = System.Guid.NewGuid().ToString();
                ViewState["postGuids"] = Session["postGuid"].ToString();

            }

        }

        protected void Button_Helium_Click(object sender, EventArgs e)
        {
            if (TextBox_Helium.Text.ToString().Length == 0)
            {
                Label_Validator.Text = "Значение обязательно";
            }
            else if (TextBox_Helium.Text.ToString().Length > 2)
            {
                Label_Validator.Text = "Значение не может быть больше 99%";
                TextBox_Helium.Text = "";
            }
            else
            {
                if (!IsPageRefresh) //only perform the button click actions if page has not been refreshed
                {
                    Helium_Flow_Insert();
                    Helium_Flow_Select();
                    Chart_Trnava();
                    Chart_Rosa();
                    TextBox_Helium.Text = "";
                    Label_Validator.Text = "";
                }
            }

        }

        protected void Helium_Flow_Select()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Date_Helium", typeof(String));
            dt.Columns.Add("Flow_Helium", typeof(Int32));
            dt.Columns.Add("Address", typeof(String));
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Helium_Flow_Select", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            if (reader.GetInt32(1)<50)
                            {
                                Label_Critical.Text = "Критический уровень гелия!!!";
                            }
                            if (CheckBox_Rosa.Checked && !CheckBox_Trn.Checked)
                            {
                                if (reader.GetString(2)=="Роза Люксембург")
                                {
                                    dt.Rows.Add(reader.GetDateTime(0).ToString().Substring(0, 10), reader.GetInt32(1), reader.GetString(2));
                                }
                            }
                            if (!CheckBox_Rosa.Checked && CheckBox_Trn.Checked)
                            {
                                if (reader.GetString(2) == "Трнавская")
                                {
                                    dt.Rows.Add(reader.GetDateTime(0).ToString().Substring(0, 10), reader.GetInt32(1), reader.GetString(2));
                                }
                            }
                            if (!CheckBox_Rosa.Checked && !CheckBox_Trn.Checked)
                            {
                                dt.Rows.Add(reader.GetDateTime(0).ToString().Substring(0, 10), reader.GetInt32(1), reader.GetString(2));
                            }
                            if (CheckBox_Rosa.Checked && CheckBox_Trn.Checked)
                            {
                                dt.Rows.Add(reader.GetDateTime(0).ToString().Substring(0, 10), reader.GetInt32(1), reader.GetString(2));
                            }
                        }
                    }
                    else
                    {
                    }
                    reader.Close();
                    con.Close();
                }
            }
            Repeater_Helium.DataSource = dt;
            Repeater_Helium.DataBind();
            UpdatePanel_Helium.Update();
        }

        protected void Chart_Trnava()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Date_Helium", typeof(String));
            dt.Columns.Add("Flow_Helium", typeof(Int32));
            dt.Columns.Add("Line", typeof(Int32));
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Chart_Trnava", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dt.Rows.Add(reader.GetDateTime(0).ToString().Substring(0, 5), reader.GetInt32(1), 50);
                        }
                    }
                    else
                    {
                    }
                    reader.Close();
                    con.Close();
                }
            }
            Chart1.DataSource = dt;
            Chart1.Series["Series_Helium"].XValueMember = "Date_Helium";
            Chart1.Series["Series_Helium"].YValueMembers = "Flow_Helium";
            Chart1.Series["Series_Line"].XValueMember = "Date_Helium";
            Chart1.Series["Series_Line"].YValueMembers = "Line";
            Chart1.DataBind();
            UpdatePanel_Helium.Update();
        }

        protected void Chart_Rosa()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Date_Helium", typeof(String));
            dt.Columns.Add("Flow_Helium", typeof(Int32));
            dt.Columns.Add("Line", typeof(Int32));
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Chart_Rosa", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            dt.Rows.Add(reader.GetDateTime(0).ToString().Substring(0, 5), reader.GetInt32(1), 50);
                            
                        }
                    }
                    else
                    {
                    }
                    reader.Close();
                    con.Close();
                }
            }
            Chart2.DataSource = dt;
            Chart2.Series["Series_Helium"].XValueMember = "Date_Helium";
            Chart2.Series["Series_Helium"].YValueMembers = "Flow_Helium";
            Chart2.Series["Series_Line"].XValueMember = "Date_Helium";
            Chart2.Series["Series_Line"].YValueMembers = "Line";
            Chart2.DataBind();
            UpdatePanel_Helium.Update();
        }

        protected void Helium_Flow_Insert()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Helium_Flow_Insert", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Flow_Helium", SqlDbType.Int).Value = Convert.ToInt32(TextBox_Helium.Text);
                    cmd.Parameters.Add("@Address", SqlDbType.VarChar, 50).Value = DropDownList_Address.SelectedValue;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        protected void CheckBox_Rosa_CheckedChanged(object sender, EventArgs e)
        {
            Helium_Flow_Select();
            UpdatePanel_Helium.Update();
        }

        protected void CheckBox_Trn_CheckedChanged(object sender, EventArgs e)
        {
            Helium_Flow_Select();
            UpdatePanel_Helium.Update();
        }
    }
}