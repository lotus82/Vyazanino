<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="Cart_Unreg.aspx.cs" Inherits="VyazaninoCOM.Cart_Unreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="/Default.aspx">Главная</a></li>
                    <li class='active'>Корзина</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="body-content" >
        <div class="container" >
            <div class="terms-conditions-page" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
                <div class="row " style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
                    <asp:UpdatePanel ID="UpdatePanel_Cart" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="shopping-cart" style="padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
                                <div class="shopping-cart-table " style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                    <div class="table-responsive" style="padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">

                                        <table class="table" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                            <thead>
                                                <tr>
                                                    <th class="cart-romove item"></th>
                                                    <th class="cart-description item">Фото</th>
                                                    <th class="cart-product-name item">Товар</th>
                                                    <th class="cart-sub-total item">Цена</th>
                                                </tr>
                                            </thead>

                                            <tfoot>
                                                <tr style="border-top: 2px solid grey;padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                    <td colspan="6" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                        <div class="shopping-cart-btn" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                            <span class="">
                                                               <asp:Button ID="Button_Cart_Clear" class="btn btn-upper btn-primary pull-right outer-right-xs"  runat="server" OnClick="Button_Cart_Clear_Click"  Text="Очистить" />
                                                            </span>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tfoot>

                                            <tbody style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                <asp:Repeater ID="Repeater_Cart" runat="server" OnItemCommand="Repeater_Cart_ItemCommand" DataMember="">
                                                    <HeaderTemplate></HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px; border-bottom: 1px solid grey;">
                                                            <td class="romove-item" style="border:1px solid grey;width:50px;text-align:center;padding: 0px 10px 0px 10px; margin: 0px 0px 0px 0px;">
                                                                <asp:ImageButton ID="ImageButton_Dell_Goods" Width="30" BackColor="White" ImageUrl="../assets/images/icons/shopping-cart-remove.png" runat="server" CommandName="Dell" />
                                                                <asp:HiddenField ID="HF_ID_Goods_Cart" runat="server" Value='<%#Eval("ID_Goods")%>' />
                                                            </td>
                                                            <td class="cart-image" style="border:1px solid grey; text-align:center;width:100px;padding-bottom:5px;padding-top:5px;">
                                                                <a href="../Product_Details.aspx?id_goods=<%#Eval("ID_Goods") %>">
                                                                    <img id="img_ID_Goods_Cart"  src="/assets/images/products/<%#Eval("Foto_Goods")%>" alt="Товар" style="width:80px;border:2px solid lightgrey" />
                                                                </a>
                                                            </td>
                                                            <td class="cart-product-name-info" style="border:1px solid grey;padding: 0px 10px 0px 10px;">
                                                                <h4 class='cart-product-description'><a href="../Product_Details.aspx?id_goods=<%#Eval("ID_Goods") %>"><%#Eval("Name_Goods") %></a></h4>
                                                            </td>
                                                            <td class="cart-product-sub-total" style="border:1px solid grey;text-align:center;width:150px;padding: 0px 10px 0px 10px;"><span class="cart-sub-total-price"><%#Eval("Price_Goods") %></span></td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate></FooterTemplate>
                                                </asp:Repeater>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>

                                <div class="col-md-12 col-sm-12 cart-shopping-total" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">

                                    <table class=""  style="width:100%;padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;border-spacing:0px 0px;">
                                        <thead style="border:0px;">
                                            <tr style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;border:0px;b">
                                                <th style="padding: 10px 0px 0px 10px; margin: 0px 0px 0px 0px;">
                                                    <div class="cart-sub-total pull-right" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                        Кол-во:
                                                    </div>
                                                </th>
                                                <th style="padding: 10px 10px 0px 10px; margin: 0px 0px 0px 0px;width:90px;">
                                                    <div class="cart-sub-total pull-right" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;width:70px;">
                                                    
                                                            <asp:Label ID="Label_Count_Total" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </th>
                                            </tr>
                                            <tr style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;border-bottom:2px solid lightgrey;">
                                                <th style="padding: 0px 0px 10px 10px; margin: 0px 0px 0px 0px;">
                                                    <div class="cart-grand-total pull-right" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                        Итого:
                                                    </div>
                                                </th>
                                                <th style="padding: 0px 10px 10px 10px; margin: 0px 0px 0px 0px;width:90px;">
                                                    <div class="cart-grand-total pull-right" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;width:70px;">
                                                        <asp:Label ID="Label_Summ_Total" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </th>
                                            </tr>
                                        </thead>

                                        <tbody style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                            <tr style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px;">
                                                <td colspan="2" style="padding: 10px 10px 10px 10px; margin: 0px 0px 0px 0px;">
                                                    <div class="cart-checkout-btn pull-right">
                                                        <button type="submit" class="btn btn-primary checkout-btn">ОФОРМИТЬ</button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>
    <br/>


                    <%---------------------- Модальное окно "Очистка корзины" ------------------------------------------------%>
                    <div class="modal fade bd-example-modal-lg" id="myModal_Clear_Cart" style="text-align:center; vertical-align:middle;position: center;left: 0%;top: 0%;transform: translate(0%, 0%);" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" style="vertical-align:middle;display: inline-block;">
                            <asp:UpdatePanel ID="UpdatePanel_Clear_Cart" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div class="modal-content" style="width: 240px; height: 220px;padding:0px 0px 0px 0px;">
                                        <div class="modal-header" style="border-top-left-radius: 10px; color: #0033cc;">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <center><h4 class="modal-title"><asp:Label ID="Label_Header_Clear_Cart" runat="server" Text="Предупреждение" ForeColor="Red" Font-Bold="false"></asp:Label></h4></center>
                                        </div>
                                        <div class="modal-body" style="text-align:center;">
                                                   <asp:Label ID="Label_Clear_Cart" runat="server" ForeColor="#157ed2" Text="Очистить корзину?" Font-Bold="false"></asp:Label>
                                            <br /><br />
                                            <div class="row" style="white-space:nowrap;">
                                                <div class="col-sm-6 col-md-6">
                                                    <asp:Button ID="Button_Clear_Cart_Cancel" CssClass="btn btn-primary" Width="90" runat="server" OnClick="Button_Clear_Cart_Cancel_Click" Text="Отмена" /><br /><br />
                                                </div>
                                                <div class="col-sm-6 col-md-6">
                                                    <asp:Button ID="Button_Clear_Cart_Dell" CssClass="btn btn-danger" Width="90" runat="server" OnClick="Button_Clear_Cart_Dell_Click" Text="Очистить" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>

                    <%---------------------- Модальное окно "Удаление товара из корзины" ------------------------------------------------%>
                    <div class="modal fade bd-example-modal-lg" id="myModal_Cart_Dell_Goods" style="text-align:center; vertical-align:middle;position: center;left: 0%;top: 0%;transform: translate(0%, 0%);" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" style="vertical-align:middle;display: inline-block;">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div class="modal-content" style="width: 240px; height: 220px;padding:0px 0px 0px 0px;">
                                        <div class="modal-header" style="border-top-left-radius: 10px; color: #0033cc;">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <center><h4 class="modal-title"><asp:Label ID="Label2" runat="server" Text="Предупреждение" ForeColor="Red" Font-Bold="false"></asp:Label></h4></center>
                                        </div>
                                        <div class="modal-body" style="text-align:center;">
                                                   <asp:Label ID="Label3" runat="server" ForeColor="#157ed2" Text="Удалить товар из корзины?" Font-Bold="false"></asp:Label>
                                            <br /><br />
                                            <div class="row" style="white-space:nowrap;">
                                                <div class="col-sm-6 col-md-6">
                                                    <asp:Button ID="Button_Dell_Goods_Cancel" CssClass="btn btn-primary" Width="90" runat="server" OnClick="Button_Dell_Goods_Cancel_Click" Text="Отмена" /><br /><br />
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
</asp:Content>
