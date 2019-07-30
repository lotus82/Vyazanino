<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="Shops.aspx.cs" Inherits="VyazaninoCOM.Shops" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body-content outer-top-xs">
        <div class='container'>
            <div class='row'>
                <div class='col-md-12'>

                    <div class="breadcrumb">
                        <div class="container">
                            <div class="breadcrumb-inner">
                                <ul class="list-inline list-unstyled">
                                    <li><a href="/Default.aspx">Главная</a></li>
                                    <li class='active'>Магазины</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- ============================================== ЗАГОЛОВОК ========================================================================== -->
                    <div class="clearfix filters-container m-t-10">
                        <div class="row">
                            <div class="col col-sm-6 col-md-2">
                                <div class="filter-tabs">
                                    <ul id="filter-tabs" class="nav nav-tabs nav-tab-box nav-tab-fa-icon">
                                        <li class="active">
                                            <a data-toggle="tab" href="#grid-container"><i class="icon fa fa-th-large"></i>Таблица</a>
                                        </li>
                                        <li><a data-toggle="tab" href="#list-container"><i class="icon fa fa-th-list"></i>Список</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col col-sm-12 col-md-6">
                                <div class="col col-sm-3 col-md-6 no-padding">
                                    <div class="lbl-cnt">
                                        <span class="lbl">Сортировка</span>
                                        <div class="fld inline">
                                            <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                                                <button data-toggle="dropdown" type="button" class="btn dropdown-toggle">
                                                    Название <span class="caret"></span>
                                                </button>
                                                <ul role="menu" class="dropdown-menu">
                                                    <li role="presentation"><a href="#">Местоположение</a></li>
                                                    <li role="presentation"><a href="#">Название</a></li>
                                                    <li role="presentation"><a href="#">Рейтинг</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col col-sm-3 col-md-6 no-padding">
                                    <div class="lbl-cnt">
                                        <span class="lbl">Фильтр</span>
                                        <div class="fld inline">
                                            <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                                                <button data-toggle="dropdown" type="button" class="btn dropdown-toggle">
                                                    1 <span class="caret"></span>
                                                </button>
                                                <ul role="menu" class="dropdown-menu">
                                                    <li role="presentation"><a href="#">1</a></li>
                                                    <li role="presentation"><a href="#">2</a></li>
                                                    <li role="presentation"><a href="#">3</a></li>
                                                    <li role="presentation"><a href="#">4</a></li>
                                                    <li role="presentation"><a href="#">5</a></li>
                                                    <li role="presentation"><a href="#">6</a></li>
                                                    <li role="presentation"><a href="#">7</a></li>
                                                    <li role="presentation"><a href="#">8</a></li>
                                                    <li role="presentation"><a href="#">9</a></li>
                                                    <li role="presentation"><a href="#">10</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col col-sm-6 col-md-4 text-right">
                                <div class="pagination-container">
                                    <ul class="list-inline list-unstyled">
                                        <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                        <li><a href="#">1</a></li>
                                        <li class="active"><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================== ЗАГОЛОВОК: КОНЕЦ =================================================================== -->

                    <!-- ============================================== СПИСОК МАГАЗИНОВ =================================================================== -->
                    <div class="search-result-container ">
                        <div id="myTabContent" class="tab-content category-list">

                            <!-- ====================================== ВИД ТАБЛИЦА ======================================================================== -->
                            <div class="tab-pane active " id="grid-container">
                                <div class="category-product">
                                    <div class="row">
                                        <asp:Repeater ID="Repeater_Shops" runat="server">
                                            <HeaderTemplate></HeaderTemplate>
                                            <ItemTemplate>
                                                <div class="col-sm-6 col-md-4 wow fadeInUp">
                                                    <div class="products">
                                                        <div class="product">
                                                            <div class="product-image">
                                                                <div class="image">
                                                                    <a href="Shop_Details.aspx?GUID_Shop=<%#Eval("Login_Shop") %>">
                                                                        <img src="assets/images/shops/shop_<%#Eval("Login_Shop") %>.jpg" style="width:300px;border:2px solid #2e6da4;border-radius:10px;"  alt="магазин">
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="product-info text-left">
                                                                <h3 class="name"><a href="Shop_Details.aspx?GUID_Shop=<%#Eval("Login_Shop") %>"><b><%#Eval("Name_Company") %></b></a></h3>
                                                                <%--<div class="rating rateit-small"></div>--%>
                                                                <div class="description">
                                                                    <%--<p><%#Eval("Description") %></p>--%>
                                                                    <p><b>Адрес:&nbsp;</b><%#Eval("Address_Shop") %>.</p>
                                                                    <p>Зарегистрирован:&nbsp;<%#Eval("Date_Registration") %></p>
                                                                    <br />
                                                                </div>
                                                                <div class="action">
                                                                    <a href="Shop_Products.aspx?GUID_Shop=<%#Eval("Login_Shop") %>" class="btn btn-primary ">
                                                                        <i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;<span>За покупками</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                            <FooterTemplate></FooterTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                            <!-- ====================================== ВИД ТАБЛИЦА: КОНЕЦ ================================================================= -->
                            
                            <!-- ====================================== ВИД СПИСОК ========================================================================= -->
                            <div class="tab-pane " id="list-container">
                                <div class="category-product">
                                    <asp:Repeater ID="Repeater_Shops_List" runat="server">
                                        <HeaderTemplate></HeaderTemplate>
                                        <ItemTemplate>
                                            <div class="category-product-inner wow fadeInUp">
                                                <div class="products">
                                                    <div class="product-list product">
                                                        <div class="row product-list-row">
                                                            <div class="col col-sm-4 col-lg-4">
                                                                <div class="product-image">
                                                                    <div class="image">
                                                                        <a href="Shop_Details.aspx?GUID_Shop=<%#Eval("Login_Shop") %>">
                                                                            <img src="assets/images/shops/shop_<%#Eval("Login_Shop") %>.jpg" style="width:300px;border:2px solid #2e6da4;" alt="магазин">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col col-sm-8 col-lg-8">
                                                                <div class="product-info">
                                                                    <h3 class="name"><a href="Shop_Details.aspx?GUID_Shop=<%#Eval("Login_Shop") %>"><b><%#Eval("Name_Company") %></b></a></h3>
                                                                    <%--<div class="rating rateit-small"></div>--%>
                                                                    
                                                                    <div class="description m-t-10">
                                                                        <%--<p><%#Eval("Description") %></p>--%>
                                                                        <p><b>Адрес:&nbsp;</b><%#Eval("Address_Shop") %>.</p>
                                                                        <p>Зарегистрирован:&nbsp;<%#Eval("Date_Registration") %></p>
                                                                    </div>
                                                                    <div class="cart clearfix animate-effect">
                                                                        <div class="action">
                                                                            <a href="Shop_Products.aspx?GUID_Shop=<%#Eval("Login_Shop") %>" class="btn btn-primary ">
                                                                                <i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;<span>За покупками</span>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                        <FooterTemplate></FooterTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                            <!-- ====================================== ВИД СПИСОК: КОНЕЦ ================================================================== -->
                        
                        </div>

                        <div class="clearfix filters-container">
                            <div class="text-right">
                                <div class="pagination-container">
                                    <ul class="list-inline list-unstyled">
                                        <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                        <li><a href="#">1</a></li>
                                        <li class="active"><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- ============================================== СПИСОК МАГАЗИНОВ: КОНЕЦ ============================================================ -->
                
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
</asp:Content>
