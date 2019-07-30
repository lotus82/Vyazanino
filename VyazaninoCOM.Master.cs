using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VyazaninoCOM
{
    public partial class VyazaninoCOM : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Cart_Info();
            User_Info();
        }

        public void Cart_Info()
        {
            Label_Cart_Total_Count.Text = Session["Total_Count_Cart"].ToString();
            Label_Cart_Total_Summ.Text = Session["Total_Summ_Cart"].ToString();
        }

        public void User_Info()
        {
            LoginName loginName = LoginView1.FindControl("HeadLoginName") as LoginName;
            if (loginName != null)//&& session != null)
            {
                if (Session["User_Name"].ToString().Length > 12)
                {
                    loginName.FormatString = Session["User_Name"].ToString().Substring(0, 11);
                }
                else
                {
                    loginName.FormatString = Session["User_Name"].ToString();
                }
            }
        }

    }
}