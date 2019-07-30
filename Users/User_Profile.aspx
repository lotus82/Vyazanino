<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="User_Profile.aspx.cs" Inherits="VyazaninoCOM.Users.User_Profile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
        .MultiText {
            overflow: auto;
            resize: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="/Default.aspx">Главная</a></li>
                    <li class='active'>Профиль</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="body-content outer-top-xs">
        <div class="container" style="border: 0px solid red; padding: 0px 15px 0px 15px;">
            <div class="row">
                <!-- ============================================== БОКОВАЯ ПАНЕЛЬ =================================================================== -->
                <div class="col-xs-12 col-sm-12 col-md-2 sidebar" style="border: 0px solid green; margin: 0px 0px 0px 0px; padding-right: 15px;">
                    <!-- ================================== БОКОВОЕ МЕНЮ ============================================================================= -->
                    <div class="side-menu animate-dropdown outer-bottom-xs">
                        <div class="head" style="text-align: center;">
                            Ваш
                            <asp:Label ID="Label_User_Role" runat="server" Text=""></asp:Label>
                        </div>
                        <nav class="yamm megamenu-horizontal" role="navigation">
                            <ul class="nav">
                                <li class="dropdown menu-item">
                                    <asp:Button ID="Button_Main" CssClass="btn btn-primary a1" Width="100%" runat="server" OnClick="Button_Main_Click" Text="Основное" />
                                </li>

                                <li class="dropdown menu-item">
                                    <asp:Button ID="Button_Orders" CssClass="btn btn-primary a1" Width="100%" runat="server" OnClick="Button_Orders_Click" Text="Покупки" />
                                </li>

                                <li class="dropdown menu-item">
                                    <asp:Button ID="Button_Main_Shop" CssClass="btn btn-primary a1" Width="100%" runat="server" OnClick="Button_Main_Shop_Click" Text="Основное" />
                                </li>

                                <li class="dropdown menu-item">
                                    <asp:Button ID="Button_Orders_Shop" CssClass="btn btn-primary a1" Width="100%" runat="server" OnClick="Button_Orders_Shop_Click" Text="Заказы" />
                                </li>

                                <li class="dropdown menu-item">
                                    <asp:Button ID="Button_Goods" CssClass="btn btn-primary a1" Width="100%" runat="server" OnClick="Button_Goods_Click" Text="Товары" />
                                </li>

                                <li class="dropdown menu-item">
                                    <asp:Button ID="Button_Balance" CssClass="btn btn-primary a1" Width="100%" runat="server" OnClick="Button_Balance_Click" Text="Баланс" />
                                </li>

                                <li class="dropdown menu-item">
                                    <asp:Button ID="Button_Messages" CssClass="btn btn-primary a1" Width="100%" runat="server" OnClick="Button_Messages_Click" Text="Сообщения" />
                                </li>



                            </ul>
                        </nav>
                    </div>
                    <style type="text/css">
                        .a1 {
                            text-align: left;
                        }
                    </style>
                    <!-- ================================== БОКОВОЕ МЕНЮ : КОНЕЦ ===================================================================== -->
                </div>

                <!-- ============================================== КОНТЕНТ ========================================================================== -->
               
                <div class=" col-xs-12 col-sm-12 col-md-10  " style="border: 0px solid #157ed2; padding: 0px 15px 15px 15px; margin: 0px 0px 0px 0px;">
                    <div class="sign-in-page sign-in" style="">
                        
                        <asp:UpdatePanel ID="UpdatePanel_Profile" runat="server" UpdateMode="Always"  >
                            <ContentTemplate>
                                <asp:MultiView ID="MultiView_Profile" runat="server">

                                    <asp:View runat="server" ID="View_Main">
                                        <h4 style="border-bottom: 1px solid #ddd; font-size: 18px; padding-bottom: 14px; text-align: center;">Основное</h4>
                                        <asp:UpdatePanel ID="UpdatePanel_Main" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <div class="form-group">
                                                    <label class="info-title" for="First_Name">Имя<span>*</span></label>
                                                    <asp:TextBox ID="First_Name" AutoPostBack="false" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RequiredFieldValidator ID="First_Name_Required"
                                                        runat="server"
                                                        ControlToValidate="First_Name"
                                                        ErrorMessage="* обязательное поле" ForeColor="Red"
                                                        ValidationGroup="MainGroup" />
                                                    <asp:RegularExpressionValidator ID="First_Name_Validator"
                                                        runat="server"
                                                        ControlToValidate="First_Name"
                                                        ValidationExpression="[А-Яа-яA-Za-z]{1,15}"
                                                        ErrorMessage="Некорректное имя"
                                                        ValidationGroup="MainGroup" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="info-title" for="SurName">Фамилия</label>
                                                    <asp:TextBox ID="SurName" AutoPostBack="false" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RegularExpressionValidator ID="SurName_Validator"
                                                        runat="server"
                                                        ControlToValidate="SurName"
                                                        ValidationExpression="[А-Яа-яA-Za-z]{1,15}"
                                                        ErrorMessage="Некорректная фамилия"
                                                        ValidationGroup="MainGroup" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="info-title" for="TextBox_Phone">Телефон</label>
                                                    <asp:TextBox ID="TextBox_Phone" AutoPostBack="false" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                                        runat="server"
                                                        ControlToValidate="TextBox_Phone"
                                                        ValidationExpression="^([1-9]{1}|\+[1-9]{1}){1}[0-9]{10}"
                                                        ErrorMessage="Неверный формат"
                                                        ValidationGroup="MainGroup" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="info-title" for="Address">Адрес</label>
                                                    <asp:TextBox ID="Address" AutoPostBack="true" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RegularExpressionValidator ID="Address_Validator"
                                                        runat="server"
                                                        ControlToValidate="Address"
                                                        ValidationExpression="([А-Яа-яA-Za-z0-9]\.*-*,*){1,150}"
                                                        ErrorMessage="Некорректное имя"
                                                        ValidationGroup="MainGroup" />
                                                </div>

                                                <div class="form-group">
                                                    <asp:Button ID="Button_Save" CommandName="Save" CssClass="btn-upper btn btn-primary checkout-page-button" OnClick="Button_Save_Click" runat="server" Text="Сохранить" ValidationGroup="MainGroup" />
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </asp:View>
                                                                       
                                    <asp:View runat="server" ID="View_Main_Shop">
                                        <h4 style="border-bottom: 1px solid #ddd; font-size: 18px; padding-bottom: 14px; text-align: center;">Основное</h4>
                                        <br />
                                                <div class="form-group">
                                                    <asp:Image ID="Image_Shop_Avatar" runat="server" BorderColor="LightGray" BorderWidth="2" Width="150" Height="150" /><br /><br />
                                                    <asp:FileUpload AllowMultiple="true" ID="FileUpload_Shop_Avatar" runat="server"/><br/>
                                                    <asp:Button ID="Upload_Shop_Avatar_Button" CssClass="btn btn-primary start" Text="Загрузить" runat="server" OnClick="Upload_Shop_Avatar_Button_Click"></asp:Button> 
                                                    <asp:Label ID="Label_Status_Shop_Avatar" ForeColor="Red" runat="server" Text=""></asp:Label>
                                                    <hr />
                                                </div>
                                        <br />
                                        <asp:UpdatePanel ID="UpdatePanel_Main_Shop" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                
                                                <div class="form-group">
                                                    <label class="info-title" for="Company_Name">Название<span>*</span></label>
                                                    <asp:TextBox ID="Company_Name" AutoPostBack="false" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21"
                                                        runat="server"
                                                        ControlToValidate="Company_Name"
                                                        ErrorMessage="* обязательное поле" ForeColor="Red"
                                                        ValidationGroup="MainGroup" />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator21"
                                                        runat="server"
                                                        ControlToValidate="Company_Name"
                                                        ValidationExpression="([А-Яа-яA-Za-z]\.*-*,* *){1,50}"
                                                        ErrorMessage="Некорректное название"  ForeColor="Red"
                                                        ValidationGroup="MainGroup" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="info-title" for="Description_Shop">Описание<span>*</span></label>
                                                    <asp:TextBox ID="Description_Shop" Height="200" TextMode="MultiLine" AutoPostBack="false" CssClass="form-control unicase-form-control text-input MultiText" runat="server" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22"
                                                        runat="server"
                                                        ControlToValidate="Description_Shop"
                                                        ErrorMessage="* обязательное поле" ForeColor="Red"
                                                        ValidationGroup="MainGroup" />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator22"
                                                        runat="server"
                                                        ControlToValidate="Company_Name"
                                                        ValidationExpression="([А-Яа-яA-Za-z0-9]\.*-*,* *){1,1000}"
                                                        ErrorMessage="Некорректные символы в описании" ForeColor="Red"
                                                        ValidationGroup="MainGroup" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="info-title" for="Name_Shop">Имя</label>
                                                    <asp:TextBox ID="Name_Shop" AutoPostBack="false" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator23"
                                                        runat="server"
                                                        ControlToValidate="Name_Shop"
                                                        ValidationExpression="[А-Яа-яA-Za-z]{1,15}"
                                                        ErrorMessage="Некорректное имя"  ForeColor="Red"
                                                        ValidationGroup="MainGroup" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="info-title" for="SurName_Shop">Фамилия</label>
                                                    <asp:TextBox ID="SurName_Shop" AutoPostBack="false" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator24"
                                                        runat="server"
                                                        ControlToValidate="SurName_Shop"
                                                        ValidationExpression="[А-Яа-яA-Za-z]{1,15}"
                                                        ErrorMessage="Некорректная фамилия"  ForeColor="Red"
                                                        ValidationGroup="MainGroup" />
                                                </div>


                                                <div class="form-group">
                                                    <label class="info-title" for="Address_Shop">Адрес</label>
                                                    <asp:TextBox ID="Address_Shop" AutoPostBack="true" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator25"
                                                        runat="server"
                                                        ControlToValidate="Address_Shop"
                                                        ValidationExpression="([А-Яа-яA-Za-z0-9]\.*-*,* *№*){1,150}"
                                                        ErrorMessage="Некорректыйе адрес" ForeColor="Red"
                                                        ValidationGroup="MainGroup" />

                                                </div>
                                                <div class="form-group">
                                                    <label class="info-title" for="City_Shop">Город</label>
                                                    <asp:TextBox ID="City_Shop" ReadOnly="true" AutoPostBack="false" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator26"
                                                        runat="server"
                                                        ControlToValidate="City_Shop"
                                                        ValidationExpression="([А-Яа-яA-Za-z0-9]\.*-*,* *){1,150}"
                                                        ErrorMessage="Неверный формат"
                                                        ValidationGroup="MainGroup" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="info-title" for="Country_Shop">Страна</label>
                                                    <asp:TextBox ID="Country_Shop" ReadOnly="true" AutoPostBack="false" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator27"
                                                        runat="server"
                                                        ControlToValidate="Country_Shop"
                                                        ValidationExpression="([А-Яа-яA-Za-z0-9]\.*-*,* *){1,150}"
                                                        ErrorMessage="Неверный формат"
                                                        ValidationGroup="MainGroup" />
                                                </div>

                                                <div class="form-group">
                                                    <asp:Button ID="Button_Save_Shop" CommandName="Save" CssClass="btn-upper btn btn-primary checkout-page-button" OnClick="Button_Save_Shop_Click" runat="server" Text="Сохранить" ValidationGroup="MainGroup" />
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </asp:View>

                                    <asp:View runat="server" ID="View_Orders">
                                        <h4 style="border-bottom: 1px solid #ddd; font-size: 18px; padding-bottom: 14px; text-align: center;">Покупки</h4>
                                        <asp:UpdatePanel ID="UpdatePanel_Orders_User" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <div class="shopping-cart" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px; overflow: auto;">
                                                    <div class="shopping-cart-table " style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                        <div class="table-responsive" style="padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                            <%--<button class='btn btn-upper btn-primary pull-left' type='submit' onclick='Order_User_NotFinish_Delete(25)' runat='server' >Отменить заказ111</button>
                                                            <asp:Button runat="server" class="btn btn-primary" ID="b1" Text="Button" OnClick="b1_Click" ></asp:Button>--%>
                                                            <%
                                                                System.Data.DataTable dt_orders = new System.Data.DataTable();
                                                                dt_orders.Columns.Add("Number_Order", typeof(String));
                                                                dt_orders.Columns.Add("Date_Order", typeof(DateTime));
                                                                dt_orders.Columns.Add("Seller_Order", typeof(String));
                                                                dt_orders.Columns.Add("Name_Goods", typeof(String));
                                                                dt_orders.Columns.Add("Price_Goods", typeof(Decimal));
                                                                dt_orders.Columns.Add("Count_Goods", typeof(Int32));
                                                                dt_orders.Columns.Add("Cost_Goods", typeof(Decimal));
                                                                using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(Application["ConnectionString"].ToString()))
                                                                {
                                                                    using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Order_User_NotFinish_Select", con))
                                                                    {
                                                                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                                                                        cmd.Parameters.Add("@ID_User", System.Data.SqlDbType.UniqueIdentifier).Value = Membership.GetUser().ProviderUserKey;
                                                                        con.Open();
                                                                        System.Data.SqlClient.SqlDataReader reader = cmd.ExecuteReader();
                                                                        if (reader.HasRows)
                                                                        {
                                                                            while (reader.Read())
                                                                            {
                                                                                dt_orders.Rows.Add(reader.GetInt32(0).ToString(), reader.GetDateTime(1).ToString().Substring(0, 10), reader.GetString(2), reader.GetString(3), reader.GetDecimal(4), reader.GetInt32(5), reader.GetDecimal(6));
                                                                            }
                                                                        }
                                                                        reader.Close();
                                                                        con.Close();
                                                                    }
                                                                }
                                                                
                                                                
                                                                Response.Write(@"Заказ № <b>" + dt_orders.Rows[0].ItemArray[0].ToString() + @"</b><br/>
                                                                                Дата заказа: <b>" + dt_orders.Rows[0].ItemArray[1].ToString().Substring(0, 10) + @"</b><br/>
                                                                                Продавец: <b>" + dt_orders.Rows[0].ItemArray[2].ToString() + "</b><br/><br/>");

                                                                Response.Write(@"<table class=""table"" style=""padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"">
                                                                        <thead>
                                                                            <tr style=""border: 1px solid grey;"">
                                                                                <th style=""border: 1px solid grey;"" class=""cart-romove item"">№</th>
                                                                                <th style=""border: 1px solid grey;"" class=""cart-description item"">Название</th>
                                                                                <th style=""border: 1px solid grey;"" class=""cart-product-name item"">Цена</th>
                                                                                <th style=""border: 1px solid grey;"" class=""cart-product-name item"">Кол-во</th>
                                                                                <th style=""border: 1px solid grey;"" class=""cart-qty item"">Сумма</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tfoot>
                                                                            <tr style=""border-top: 2px solid grey; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"">
                                                                                <td colspan=""8"" style=""padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"">
                                                                                    <div class=""shopping-cart-btn"" style=""padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"">
                                                                                        <span >
                                                                                            <button class=""btn btn-upper btn-primary pull-left"" onclick=""Order_User_NotFinish_Delete(" + dt_orders.Rows[0].ItemArray[0] + @")"" runat=""server"" >Отменить заказ</button>
                                                                                            <button class=""btn btn-upper btn-primary pull-right outer-right-xs""  runat=""server"">Подтвердить</button>
                                                                                        </span>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                        </tfoot>
                                                                        <tbody style=""padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"">");
                                                                Response.Write(@"<tr>
                                                                                <td style=""border: 1px solid grey; width: 50px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;"">
                                                                                   " + 1 + @"
                                                                                </td>
                                                                                <td style=""border: 1px solid grey; white-space: normal; min-width: 100px; max-width: 100px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;"">
                                                                                    " + dt_orders.Rows[0].ItemArray[3].ToString() + @"
                                                                                </td>
                                                                                <td style=""border: 1px solid grey; white-space: normal; min-width: 200px; max-width: 300px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;"">
                                                                                    " + dt_orders.Rows[0].ItemArray[4].ToString() + @"
                                                                                </td>
                                                                                <td style=""border: 1px solid grey; white-space: normal; min-width: 100px; max-width: 100px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;"">
                                                                                    " + dt_orders.Rows[0].ItemArray[5].ToString() + @"
                                                                                </td>
                                                                                <td style=""border: 1px solid grey; width: 50px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;"">
                                                                                    " + dt_orders.Rows[0].ItemArray[6].ToString() + @"
                                                                                </td>
                                                                            </tr>");
                                                                int n = 1;
                                                                for (int i = 1; i < dt_orders.Rows.Count; i++)
                                                                {
                                                                    if (dt_orders.Rows[i - 1].ItemArray[0].ToString() != dt_orders.Rows[i].ItemArray[0].ToString())
                                                                    {
                                                                        Response.Write(@"</tbody></table><br/><hr/>");
                                                                    }
                                                                    if (dt_orders.Rows[i - 1].ItemArray[0].ToString() != dt_orders.Rows[i].ItemArray[0].ToString())
                                                                    {
                                                                        Response.Write(@"Заказ № <b>" + dt_orders.Rows[i].ItemArray[0].ToString() + @"</b><br/>
                                                                                Дата заказа: <b>" + dt_orders.Rows[i].ItemArray[1].ToString().Substring(0, 10) + @"</b><br/>
                                                                                Продавец: <b>" + dt_orders.Rows[i].ItemArray[2].ToString() + "</b><br/><br/>");

                                                                        Response.Write(@"<table class=""table"" style=""padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"">
                                                                        <thead>
                                                                            <tr style=""border: 1px solid grey;"">
                                                                                <th style=""border: 1px solid grey;"" class=""cart-romove item"">№</th>
                                                                                <th style=""border: 1px solid grey;"" class=""cart-description item"">Название</th>
                                                                                <th style=""border: 1px solid grey;"" class=""cart-product-name item"">Цена</th>
                                                                                <th style=""border: 1px solid grey;"" class=""cart-product-name item"">Кол-во</th>
                                                                                <th style=""border: 1px solid grey;"" class=""cart-qty item"">Сумма</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tfoot>
                                                                            <tr style=""border-top: 2px solid grey; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"">
                                                                                <td colspan=""8"" style=""padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"">
                                                                                    <div class=""shopping-cart-btn"" style=""padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"">
                                                                                        <span >
                                                                                            <button class=""btn btn-upper btn-primary pull-left"" type=""submit"" onclick='Order_User_NotFinish_Delete("+Convert.ToInt32(dt_orders.Rows[i].ItemArray[0].ToString())+ @")'  runat=""server"" >Отменить заказ</button>
                                                                                            <button class=""btn btn-upper btn-primary pull-right outer-right-xs""  runat=""server"">Подтвердить</button>
                                                                                        </span>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                        </tfoot>
                                                                        <tbody style=""padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;"">");
                                                                        n = 0;
                                                                    }
                                                                    n++;
                                                                    Response.Write(@"<tr>
                                                                                <td style=""border: 1px solid grey; width: 50px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;"">
                                                                                   " + n + @"
                                                                                </td>
                                                                                <td style=""border: 1px solid grey; white-space: normal; min-width: 100px; max-width: 100px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;"">
                                                                                    " + dt_orders.Rows[i].ItemArray[3].ToString() + @"
                                                                                </td>
                                                                                <td style=""border: 1px solid grey; white-space: normal; min-width: 200px; max-width: 300px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;"">
                                                                                    " + dt_orders.Rows[i].ItemArray[4].ToString() + @"
                                                                                </td>
                                                                                <td style=""border: 1px solid grey; white-space: normal; min-width: 100px; max-width: 100px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;"">
                                                                                    " + dt_orders.Rows[i].ItemArray[5].ToString() + @"
                                                                                </td>
                                                                                <td style=""border: 1px solid grey; width: 50px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;"">
                                                                                    " + dt_orders.Rows[i].ItemArray[6].ToString() + @"
                                                                                </td>
                                                                            </tr>");
                                                                }
                                                                Response.Write(@"</tbody></table>");                     
                                                            %>  
                                                                                                                      
                                                            <%--Заказ № <asp:Label ID="Label_Number_Order" Font-Bold="true" runat="server" Text=""></asp:Label><br/>
                                                            Дата заказа: <asp:Label ID="Label_Date_Order" Font-Bold="true" runat="server" Text=""></asp:Label><br/>
                                                            Продавец:  <asp:Label ID="Label_Seller_Order" Font-Bold="true" runat="server" Text=""></asp:Label><br/><br/>
                                                            <table class="table" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                                <thead>
                                                                    <tr style="border: 1px solid grey;">
                                                                        <th style="border: 1px solid grey;" class="cart-romove item">№</th>
                                                                        <th style="border: 1px solid grey;" class="cart-description item">Название</th>
                                                                        <th style="border: 1px solid grey;" class="cart-product-name item">Цена</th>
                                                                        <th style="border: 1px solid grey;" class="cart-product-name item">Кол-во</th>
                                                                        <th style="border: 1px solid grey;" class="cart-qty item">Сумма</th>
                                                                    </tr>
                                                                </thead>
                                                                <tfoot>
                                                                    <tr style="border-top: 2px solid grey; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                                        <td colspan="8" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                                            <div class="shopping-cart-btn" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                                                <span class="">
                                                                                    <asp:Button ID="Button_Order_Cancel" class="btn btn-upper btn-primary pull-left"  runat="server" Text="Отменить заказ" />
                                                                                    <asp:Button ID="Button_Order_Ok" class="btn btn-upper btn-primary pull-right outer-right-xs"  runat="server" Text="Подтвердить" />
                                                                                </span>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </tfoot>
                                                                <tbody style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                                    <asp:Repeater ID="Repeater_Oreder_User_NotFinish" runat="server" OnItemCommand="Repeater_Oreder_User_NotFinish_ItemCommand">
                                                                        <HeaderTemplate></HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <tr>
                                                                                <td style="border: 1px solid grey; width: 50px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <%#Eval("Number_Goods")%>
                                                                                </td>
                                                                                <td style="border: 1px solid grey; white-space: normal; min-width: 100px; max-width: 100px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <%#Eval("Name_Goods") %>
                                                                                </td>
                                                                                <td style="border: 1px solid grey; white-space: normal; min-width: 200px; max-width: 300px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <%#Eval("Price_Goods") %>
                                                                                </td>
                                                                                <td style="border: 1px solid grey; white-space: normal; min-width: 100px; max-width: 100px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <%#Eval("Count_Goods") %>
                                                                                </td>
                                                                                <td style="border: 1px solid grey; width: 50px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <%#Eval("Cost_Goods") %>
                                                                                </td>
                                                                            </tr>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate></FooterTemplate>
                                                                    </asp:Repeater>
                                                                </tbody>
                                                            </table>--%>
                                                        </div>
                                                    </div>
                                                </div>

                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </asp:View>

                                    <%-- ------------------------- Заказы магазина ------------------------------------------ --%>
                                    <asp:View runat="server" ID="View_Orders_Shop">
                                        <h4 style="border-bottom: 1px solid #ddd; font-size: 18px; padding-bottom: 14px; text-align: center;">Заказы</h4>
                                        <asp:UpdatePanel ID="UpdatePanel_Orders_Shop" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </asp:View>

                                    <%-- ------------------------- Сообщения магазина --------------------------------------- --%>
                                    <asp:View runat="server" ID="View_Messages">
                                        <h4 style="border-bottom: 1px solid #ddd; font-size: 18px; padding-bottom: 14px; text-align: center;">Сообщения</h4>
                                        <asp:UpdatePanel ID="UpdatePanel_Messages" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </asp:View>

                                    <%-- ------------------------- Товары магазина ------------------------------------------ --%>
                                    <asp:View runat="server" ID="View_Goods">
                                        <h4 style="border-bottom: 1px solid #ddd; font-size: 18px; padding-bottom: 14px; text-align: center;">Товары</h4>
                                        <asp:UpdatePanel ID="UpdatePanel_Goods" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <div class="shopping-cart" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px; overflow: auto;">
                                                    <div class="shopping-cart-table " style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                        <div class="table-responsive" style="padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                            <table class="table" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="cart-romove item"></th>
                                                                        <th class="cart-description item">Фото</th>
                                                                        <th class="cart-product-name item">Название</th>
                                                                        <th class="cart-product-name item">Описание</th>
                                                                        <th class="cart-qty item">Категория</th>
                                                                        <th class="cart-sub-total item">Цена</th>
                                                                        <th class="cart-total last-item">Кол-во</th>
                                                                        <th class="cart-romove item"></th>
                                                                    </tr>
                                                                </thead>
                                                                <tfoot>
                                                                    <tr style="border-top: 2px solid grey; padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                                        <td colspan="8" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                                            <div class="shopping-cart-btn" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                                                <span class="">
                                                                                    <asp:Button ID="Button_Goods_Add" class="btn btn-upper btn-primary outer-left-xs" runat="server" OnClick="Button_Goods_Add_Click" Text="Добавить товар" />
                                                                                    <asp:Button ID="Button_Goods_Clear" class="btn btn-upper btn-primary pull-right outer-right-xs" OnClick="Button_Goods_Clear_Click" runat="server" Text="Удалить всё" />
                                                                                </span>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </tfoot>
                                                                <tbody style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                                    <asp:Repeater ID="Repeater_Goods" runat="server" OnItemCommand="Repeater_Goods_ItemCommand">
                                                                        <HeaderTemplate></HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <tr>
                                                                                <td class="romove-item" style="border: 1px solid grey; width: 50px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <asp:ImageButton ID="ImageButton_Save_Goods" Width="30" BackColor="White" ImageUrl="../assets/images/icons/Save.png" runat="server" CommandName="Save" />
                                                                                    <asp:HiddenField ID="HF_ID_Goods" runat="server" Value='<%#Eval("ID_Goods")%>' />
                                                                                    <asp:HiddenField ID="HiddenField_Foto_Goods" runat="server" Value='<%#Eval("Foto_Goods")%>' />
                                                                                </td>
                                                                                <td style="border: 1px solid grey; width: 100px; text-align: center; padding: 10px 10px 10px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <a href="/Product_Details.aspx?id_goods=<%#Eval("ID_Goods") %>">
                                                                                        <img id="img_ID_Goods_Cart" src="/assets/images/products/<%#Eval("Foto_Goods") %>" alt="Товар" style="width: 80px;  border: 2px solid lightgrey" />
                                                                                    </a>
                                                                                </td>
                                                                                <td style="border: 1px solid grey; white-space: normal; min-width: 100px; max-width: 100px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <%#Eval("Name_Goods") %>
                                                                                </td>
                                                                                <td style="border: 1px solid grey; white-space: normal; min-width: 200px; max-width: 300px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <%#Eval("Descript_Goods") %>
                                                                                </td>
                                                                                <td style="border: 1px solid grey; white-space: normal; min-width: 100px; max-width: 100px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <%#Eval("Category_Goods") %></td>
                                                                                <td style="border: 1px solid grey; width: 100px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <asp:TextBox ID="TextBox_Price_Goods" Width="80" TextMode="SingleLine" runat="server" Wrap="False" Text='<%#Eval("Price_Goods") %>'></asp:TextBox></td>
                                                                                <td style="border: 1px solid grey; width: 100px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <asp:TextBox ID="TextBox_Count_Product" Width="60" TextMode="Number" runat="server" Wrap="False" Text='<%#Eval("Count_Goods") %>'></asp:TextBox></td>
                                                                                <td style="border: 1px solid grey; width: 50px; text-align: center; padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                                    <asp:ImageButton ID="ImageButton_Dell_Goods" Width="30" BackColor="White" ImageUrl="../assets/images/icons/Del.png" runat="server" CommandName="Dell" />
                                                                                </td>
                                                                            </tr>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate></FooterTemplate>
                                                                    </asp:Repeater>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </asp:View>

                                    <%-- ------------------------- Баланс магазина ------------------------------------------ --%>
                                    <asp:View runat="server" ID="View_Balance">
                                        <h4 style="border-bottom: 1px solid #ddd; font-size: 18px; padding-bottom: 14px; text-align: center;">Баланс</h4>
                                        <asp:UpdatePanel ID="UpdatePanel_Balance" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                Ваш баланс составляет: <asp:Label ID="Label_Shop_Balance" runat="server" Font-Bold="true" Text=""></asp:Label> рублей.
                                                <hr/>
                                                <div class="form-group">
                                                    <div class="shopping-cart-btn" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                        <span class="">
                                                            <%--<style>
                                                                .tinkoffPayRow {
                                                                    display: block;
                                                                    margin: 1%;
                                                                    width: 160px;
                                                                }
                                                            </style>
                                                            <script src="https://securepay.tinkoff.ru/html/payForm/js/tinkoff_v2.js"></script>
                                                            <form name="TinkoffPayForm" onsubmit="pay(this); return false;">
                                                                <input class="tinkoffPayRow" type="hidden" name="terminalkey" value="TinkoffBankTest">
                                                                <input class="tinkoffPayRow" type="hidden" name="frame" value="false">
                                                                <input class="tinkoffPayRow" type="hidden" name="language" value="ru">
                                                                <input class="tinkoffPayRow" type="text" placeholder="Сумма заказа" name="amount" required>
                                                                <input class="tinkoffPayRow" type="text" placeholder="Номер заказа" name="order">
                                                                <input class="tinkoffPayRow" type="text" placeholder="Описание заказа" name="description">
                                                                <input class="tinkoffPayRow" type="text" placeholder="ФИО плательщика" name="name">
                                                                <input class="tinkoffPayRow" type="text" placeholder="E-mail" name="email">
                                                                <input class="tinkoffPayRow" type="text" placeholder="Контактный телефон" name="phone">
                                                                <input class="tinkoffPayRow" type="submit" value="Оплатить">
                                                            </form>--%>
                                                            <div class="form-group">
                                                                <asp:TextBox ID="TextBox_Payment_Amount" TextMode="Number" CssClass="form-control unicase-form-control text-input" runat="server" Placeholder="Сумма в рублях"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="TextBox_Payment_Amount_Required" runat="server" ControlToValidate="TextBox_Payment_Amount"
                                                                    ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="Payment">* Обязательное поле</asp:RequiredFieldValidator>
                                                                <asp:Label ID="Label_post" runat="server" Text="Label"></asp:Label>
                                                            
                                                                <asp:Button ID="Button_Balance_Add" class="btn btn-upper btn-primary outer-left-xs" runat="server" OnClick="Button_Balance_Add_Click" Text="Пополнить" />
                                                                <asp:Button ID="Button_Balance_History" class="btn btn-upper btn-primary pull-right outer-right-xs" runat="server" OnClick="Button_Balance_History_Click" Text="История" />
                                                            </div>
                                                        </span>
                                                    </div>
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </asp:View>

                                    <%-- ------------------------- Добавление нового товара --------------------------------- --%>
                                    <asp:View runat="server" ID="View_Add_Goods" OnActivate="View_Add_Goods_Activate">
                                        <h4 style="border-bottom: 1px solid #ddd; font-size: 18px; padding-bottom: 14px; text-align: center;">Добавление товара</h4>
                                        <asp:UpdatePanel ID="UpdatePanel_Add_Goods_Img" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <div class="form-group">
                                                    <hr />
                                                    <label class="info-title" for="Repeater_Img_Add_Goods">Фотографии</label><br/><br/>
                                                    <asp:Repeater ID="Repeater_Img_Add_Goods" runat="server">
                                                        <HeaderTemplate></HeaderTemplate>
                                                        <ItemTemplate>
                                                            <img src="../assets/images/products/<%#Eval("Img_Add_Goods") %>" style="width:100px;height:100px; border: 2px solid #2e6da4; border-radius: 5px;"/>
                                                        </ItemTemplate>
                                                        <FooterTemplate></FooterTemplate>
                                                    </asp:Repeater>
                                                    
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <br />
                                        <asp:FileUpload AllowMultiple="false" ID="FileUpload_Add_Goods" runat="server" /><br />
                                        <asp:Button ID="Upload_Image_Add_Goods_Button" CssClass="btn btn-primary start" Text="Загрузить" runat="server" OnClick="Upload_Image_Add_Goods_Button_Click"></asp:Button>
                                        <asp:Label ID="Label_Image_Add_Goods_Upload_Status" ForeColor="Red" runat="server" Text=""></asp:Label>
                                        <hr />

                                        <asp:UpdatePanel ID="UpdatePanel_Add_Goods" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                
                                                <div class="form-group">
                                                    <label class="info-title" for="TextBox_Add_Goods_Name">Название<span>*</span></label>
                                                    <asp:TextBox ID="TextBox_Add_Goods_Name" AutoPostBack="false" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Add_Goods_1"
                                                        runat="server"
                                                        ControlToValidate="TextBox_Add_Goods_Name"
                                                        ErrorMessage="* обязательное поле" ForeColor="Red"
                                                        ValidationGroup="MainGroup_Add_Goods" />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_Add_Goods_1"
                                                        runat="server"
                                                        ControlToValidate="TextBox_Add_Goods_Name"
                                                        ValidationExpression="([А-Яа-яA-Za-z0-9]\.*-*,* *){1,200}"
                                                        ErrorMessage="Некорректные символы в названии товара!" ForeColor="Red"
                                                        ValidationGroup="MainGroup_Add_Goods" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="info-title" for="TextBox_Add_Goods_Descript">Описание<span>*</span></label>
                                                    <asp:TextBox ID="TextBox_Add_Goods_Descript" TextMode="MultiLine" Height="200"  AutoPostBack="false" CssClass="form-control unicase-form-control text-input MultiText" runat="server" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Add_Goods_2"
                                                        runat="server"
                                                        ControlToValidate="TextBox_Add_Goods_Descript"
                                                        ErrorMessage="* обязательное поле" ForeColor="Red"
                                                        ValidationGroup="MainGroup_Add_Goods" />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_Add_Goods_2"
                                                        runat="server"
                                                        ControlToValidate="TextBox_Add_Goods_Descript"
                                                        ValidationExpression="([А-Яа-яA-Za-z0-9]\.*-*,*:*;*!*\?*№*\+* *){1,2000}"
                                                        ErrorMessage="Некорректные символы в описании товара!" ForeColor="Red"
                                                        ValidationGroup="MainGroup_Add_Goods" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="info-title" for="TextBox_Add_Goods_Price">Цена<span>*</span></label>
                                                    <asp:TextBox ID="TextBox_Add_Goods_Price" TextMode="SingleLine"  AutoPostBack="false" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Add_Goods_4"
                                                        runat="server"
                                                        ControlToValidate="TextBox_Add_Goods_Price"
                                                        ErrorMessage="* обязательное поле" ForeColor="Red"
                                                        ValidationGroup="MainGroup_Add_Goods" />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_Add_Goods_4"
                                                        runat="server"
                                                        ControlToValidate="TextBox_Add_Goods_Price"
                                                        ValidationExpression="[0-9]{1,8}\.{0,1}[0-9]{0,2}"
                                                        ErrorMessage="Некорректное значение цены товара!" ForeColor="Red"
                                                        ValidationGroup="MainGroup_Add_Goods" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="info-title" for="TextBox_Add_Goods_Count">Количество<span>*</span></label>
                                                    <asp:TextBox ID="TextBox_Add_Goods_Count" TextMode="Number"  AutoPostBack="false" CssClass="form-control unicase-form-control text-input" runat="server" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Add_Goods_5"
                                                        runat="server"
                                                        ControlToValidate="TextBox_Add_Goods_Price"
                                                        ErrorMessage="* обязательное поле" ForeColor="Red"
                                                        ValidationGroup="MainGroup_Add_Goods" />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_Add_Goods_5"
                                                        runat="server"
                                                        ControlToValidate="TextBox_Add_Goods_Price"
                                                        ValidationExpression="[0-9]{1,5}"
                                                        ErrorMessage="Некорректные символы!" ForeColor="Red"
                                                        ValidationGroup="MainGroup_Add_Goods" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="info-title" for="DropDownList_Add_Goods_Category_1">Категория<span>*</span></label><br/>
                                                    <asp:DropDownList ID="DropDownList_Add_Goods_Category_1" Width="250" runat="server" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="DropDownList_Add_Goods_Category_1_SelectedIndexChanged"></asp:DropDownList><br/><br/>
                                                    <asp:DropDownList ID="DropDownList_Add_Goods_Category_2" Width="250" runat="server" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="DropDownList_Add_Goods_Category_2_SelectedIndexChanged"></asp:DropDownList><br/><br/>
                                                    <asp:DropDownList ID="DropDownList_Add_Goods_Category_3" Width="250" runat="server" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="DropDownList_Add_Goods_Category_3_SelectedIndexChanged"></asp:DropDownList><br/>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Add_Goods_3"
                                                        runat="server"
                                                        ControlToValidate="DropDownList_Add_Goods_Category_3"
                                                        ErrorMessage="* обязательное поле" ForeColor="Red"
                                                        ValidationGroup="MainGroup_Add_Goods" />
                                                </div>
                                                <div class="form-group">
                                                    <asp:Button ID="Button_Add_Goods_Save" CssClass="btn btn-primary start" Text="Сохранить" runat="server" Visible="false" OnClick="Button_Add_Goods_Save_Click" ></asp:Button>
                                        
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                        

                                    </asp:View>

                                </asp:MultiView>
                            </ContentTemplate>
                            <Triggers>
                                <asp:PostBackTrigger ControlID="Upload_Shop_Avatar_Button" />
                                <asp:PostBackTrigger ControlID="Upload_Image_Add_Goods_Button" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <!-- ============================================== КОНТЕНТ : КОНЕЦ ================================================================== -->
            </div>
        </div>
    </div>


    <%---------------------- Модальное окно "Удаление товара" ------------------------------------------------------------%>
    <div class="modal fade bd-example-modal-lg" id="myModal_Dell_Goods" style="text-align: center; vertical-align: middle; position: center; left: 0%; top: 0%; transform: translate(0%, 0%);" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" style="vertical-align: middle; display: inline-block;">
            <asp:UpdatePanel ID="UpdatePanel_Dell_Goods" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="modal-content" style="width: 240px; height: 220px; padding: 0px 0px 0px 0px;">
                        <div class="modal-header" style="border-top-left-radius: 10px; color: #0033cc;">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <center><h4 class="modal-title"><asp:Label ID="Label_Header_Dell_Goods" runat="server" Text="Предупреждение" ForeColor="Red" Font-Bold="false"></asp:Label></h4></center>
                        </div>
                        <div class="modal-body" style="text-align: center;">
                            <asp:Label ID="Label_modal_Dell_1" runat="server" ForeColor="#157ed2" Text="Удалить данный товар?" Font-Bold="false"></asp:Label>
                            <br />

                            <asp:Label ID="Label_modal_Dell_2" runat="server" Font-Italic="true" ForeColor="#157ed2" Text="(Средства вернутся на баланс)" Font-Bold="false"></asp:Label>
                            <br />
                            <br />
                            <div class="row" style="white-space: nowrap;">
                                <div class="col-sm-6 col-md-6">
                                    <asp:Button ID="Button_Dell_Goods_Cancel" CssClass="btn btn-primary" Width="90" runat="server" OnClick="Button_Dell_Goods_Cancel_Click" Text="Отмена" /><br />
                                    <br />
                                </div>
                                <div class="col-sm-6 col-md-6">
                                    <asp:Button ID="Button_Dell_Goods_Dell" CssClass="btn btn-danger" Width="90" runat="server" OnClick="Button_Dell_Goods_Dell_Click" Text="Удалить" />
                                </div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>


    <%---------------------- Модальное окно "Сохранение изменений товара" ------------------------------------------------%>
    <div class="modal fade bd-example-modal-lg" id="myModal_Save_Goods" style="text-align: center; vertical-align: middle; position: center; left: 0%; top: 0%; transform: translate(0%, 0%);" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" style="vertical-align: middle; display: inline-block;">
            <asp:UpdatePanel ID="UpdatePanel_Save_Goods" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="modal-content" style="width: 240px; height: 220px; padding: 0px 0px 0px 0px;">
                        <div class="modal-header" style="border-top-left-radius: 10px; color: #0033cc;">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <center><h4 class="modal-title"><asp:Label ID="Label_Header_Save_Goods" runat="server" Text="Предупреждение" ForeColor="Red" Font-Bold="false"></asp:Label></h4></center>
                        </div>
                        <div class="modal-body" style="text-align: center;">
                            <asp:Label ID="Label_modal_Save_1" runat="server" ForeColor="#157ed2" Text="Сохранить изменения?" Font-Bold="false"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <div class="row" style="white-space: nowrap;">
                                <div class="col-sm-6 col-md-6">
                                    <asp:Button ID="Button_Save_Goods_Cancel" CssClass="btn btn-primary" Width="90" runat="server" OnClick="Button_Save_Goods_Cancel_Click" Text="Отмена" /><br />
                                    <br />
                                </div>
                                <div class="col-sm-6 col-md-6">
                                    <asp:Button ID="Button_Save_Goods_Save" CssClass="btn btn-danger" Width="90" runat="server" OnClick="Button_Save_Goods_Save_Click" Text="Сохранить" />
                                </div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            {% if (window.innerWidth > 480 || !o.options.loadImageFileTypes.test(file.type)) { %}
                <p class="name">{%=file.name%}</p>
            {% } %}
            <strong class="error text-danger"></strong>
        </td>
        <td>
            <p class="size">Processing...</p>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
        </td>
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start" disabled>
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Start</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>

<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
        </td>
        <td>
            {% if (window.innerWidth > 480 || !file.thumbnailUrl) { %}
                <p class="name">
                    {% if (file.url) { %}
                        <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                    {% } else { %}
                        <span>{%=file.name%}</span>
                    {% } %}
                </p>
            {% } %}
            {% if (file.error) { %}
                <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            {% if (file.deleteUrl) { %}
                <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>Delete</span>
                </button>
                <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" integrity="sha384-xBuQ/xzmlsLoJpyjoggmTEz8OWUFM0/RC5BsqQBDX2v5cMvDHcMakNTNrHIW2I5f" crossorigin="anonymous"></script> 
<script src="/assets/js/vendor/jquery.ui.widget.js"></script>
<script src="https://blueimp.github.io/JavaScript-Templates/js/tmpl.min.js"></script>
<script src="https://blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js"></script>
<script src="https://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
<script src="/assets/js/jquery.iframe-transport.js"></script>
<script src="/assets/js/jquery.fileupload.js"></script>
<script src="/assets/js/jquery.fileupload-process.js"></script>
<script src="/assets/js/jquery.fileupload-image.js"></script>
<script src="/assets/js/jquery.fileupload-ui.js"></script>
<script src="/assets/js/main.js"></script>
<!--[if (gte IE 8)&(lt IE 10)]>
<script src="js/cors/jquery.xdr-transport.js"></script>
<![endif]-->

</asp:Content>
