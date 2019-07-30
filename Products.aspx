<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="VyazaninoCOM.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
                            .wrapper3 {
                                max-width: 250px;
                                max-height: 250px;
                                min-height:250px;
                                min-width:250px;
                                background-color:lightgray;
                                border: 3px solid lightgrey;
                                border-radius: 2px;
                                overflow: hidden;
                            }

                            .exmp3 img {
                                object-fit: cover;
                                width: 100%;
                                height: 100%;
                            }
                        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="/Default.aspx">Главная</a></li>
                    <li class='active'>Товары</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="body-content outer-top-xs">
        <div class='container' style="padding:0px 15px 0px 15px; ">
            <div class='row'>
                <!-- ================================== БОКОВОЕ МЕНЮ ============================================================================= -->
                <div class='col-md-3 sidebar' style="margin:0px 0px 0px 0px;padding-right:15px;">
                    <div class="sidebar-module-container">
                        <div class="sidebar-filter">
                            <!-- ============================================== ОБЗОР КАТЕГОРИИ ===================================================== -->
                            <div class="sidebar-widget wow fadeInUp" style="margin-bottom:30px;">
                                <h3 class="section-title">Подкатегории</h3>
                                <%--<div class="widget-header">
                                    <h4 class="widget-title">Подкатегории</h4>
                                </div>--%>
                                <div class="sidebar-widget-body">
                                    <div class="accordion">
                                        <asp:UpdatePanel ID="UpdatePanel_Catalog" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <asp:Repeater ID="Repeater_Catalog" runat="server" OnItemCreated="Repeater_Catalog_ItemCreated">
                                                    <HeaderTemplate>
                                                        <div class="accordion-group">
                                                            <div class="accordion-heading">
                                                                <a href="#collapseOne" data-toggle="collapse" class="accordion-toggle collapsed">
                                                                    <asp:Label ID="Label_Category_Parent_Name" runat="server" Text=""></asp:Label>
                                                                </a>
                                                            </div>
                                                            <div class="accordion-body collapse" id="collapseOne" style="height: 0px;">
                                                                <div class="accordion-inner">
                                                                    <ul>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <li><a href="Products.aspx?category=<%#Eval("ID_Category") %>&parents=<%#Eval("Parents") %>"><%#Eval("Category_Name") %>&nbsp;(<span class="count" style="text-align: right"><%#Eval("Count") %>)</span></a></li>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </div>
                            </div>
                            <!-- ============================================== ОБЗОР КАТЕГОРИИ: КОНЕЦ ============================================== -->

                            <!-- ============================================== ПО ЦЕНЕ ============================================================= -->
                            <%--<div class="sidebar-widget wow fadeInUp" >
                                <div class="widget-header">
                                    <h4 class="widget-title">По цене</h4>
                                </div>
                                <div class="sidebar-widget-body m-t-10">
                                    <div class="price-range-holder">
                                        <span class="min-max">
                                            <span class="pull-left">1.00</span>
                                            <span class="pull-right">10000.00</span>
                                        </span>
                                        <input type="text" id="amount" style="border: 0; color: #666666; font-weight: bold; text-align: center;"/>

                                        <input type="text" class="price-slider" value=""/>
                                    </div>
                                    <!-- /.price-range-holder -->
                                    <a href="#" class="lnk btn btn-primary">Применить</a>
                                </div>
                            </div>--%>
                            <!-- ============================================== ПО ЦЕНЕ: КОНЕЦ ====================================================== -->
                                                      
                            <!-- ============================================== ТЕГИ ПРОДУКТОВ ====================================================== -->
                            <%--<div class="sidebar-widget product-tag wow fadeInUp outer-top-vs" style="margin-bottom:30px;">
                                <h3 class="section-title">Теги продуктов</h3>
                                <div class="sidebar-widget-body outer-top-xs">
                                    <div class="tag-list">
                                        <a class="item" title="Кофта" href="#">Кофта</a>
                                        <a class="item active" title="Джемпер" href="#">Джемпер</a>
                                        <a class="item" title="Носки" href="#">Носки</a>
                                        <a class="item" title="Сумка" href="#">Сумка</a>
                                        <a class="item" title="Брюки" href="#">Брюки</a>
                                        <a class="item" title="Рубашка" href="#">Рубашка</a>
                                        <a class="item" title="Аксессуары" href="#">Аксессуары</a>
                                        <a class="item" title="Игрушка" href="#">Игрушка</a>
                                        <a class="item" title="Шляпа" href="#">Шляпа</a>
                                    </div>
                                </div>
                            </div>--%>
                            <!-- ============================================== ТЕГИ ПРОДУКТОВ: КОНЕЦ =============================================== -->
                        </div>
                    </div>
                </div>
                <!-- ================================== БОКОВОЕ МЕНЮ : КОНЕЦ ===================================================================== -->

                <div class='col-md-9' style="padding: 0px 15px 15px 15px; margin: 0px 0px 0px 0px;">
                    
                    <div class="clearfix filters-container ">
                        <div class="row">
                            <div class="col col-sm-12 col-md-4">
                                <div class="filter-tabs">
                                    <ul id="filter-tabs" class="nav nav-tabs nav-tab-box nav-tab-fa-icon">
                                        <li class="active">
                                            <a data-toggle="tab" href="#grid-container"><i class="icon fa fa-th-large"></i>Таблица</a>
                                        </li>
                                        <li><a data-toggle="tab" href="#list-container"><i class="icon fa fa-th-list"></i>Список</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col col-sm-12 col-md-4">
                                <div class="col col-sm-12 col-md-12 no-padding">
                                    <div class="lbl-cnt">
                                        <%--<span class="lbl">Порядок</span>
                                        <div class="fld inline">
                                            <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                                                <button data-toggle="dropdown" type="button" class="btn dropdown-toggle">
                                                    Название: А-Я <span class="caret"></span>
                                                </button>

                                                <ul role="menu" class="dropdown-menu">
                                                    <li role="presentation"><a href="#">Цена: ↑</a></li>
                                                    <li role="presentation"><a href="#">Цена: ↓</a></li>
                                                    <li role="presentation"><a href="#">Название: А-Я</a></li>
                                                </ul>
                                            </div>
                                        </div>--%>
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

                  
                    <div class="search-result-container ">
                        <div id="myTabContent" class="tab-content category-list">
                            <div class="tab-pane active " id="grid-container">
                                <div class="category-product">
                                    <div class="row">
                                        <center><h5><asp:Label runat="server" ID="Label_Empty" Text=""></asp:Label></h5></center>
                                        <asp:Repeater ID="Repeater_Goods_Table" OnItemCommand="Repeater_Goods_Table_ItemCommand" runat="server">
                                            <HeaderTemplate></HeaderTemplate>
                                            <ItemTemplate>
                                                <div class="col-sm-6 col-md-4 wow fadeInUp">
                                                    <div class="products">
                                                        <div class="product">
                                                            <div class="product-image">
                                                                <div class="image wrapper3 exmp3">
                                                                    <a href="Product_Details.aspx?id_goods=<%#Eval("ID_Goods") %>">
                                                                        <img src="<%#Eval("Foto_Goods") %>" alt="product images">
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="product-info text-left">
                                                                <asp:HiddenField ID="HF_ID_Goods" runat="server" Value='<%#Eval("ID_Goods")%>' />
                                                                <h3 class="name"><a href="Product_Details.aspx?id_goods=<%#Eval("ID_Goods") %>"><%#Eval("Name_Goods") %></a></h3>
                                                                <%--<div class="rating rateit-small"></div>--%>
                                                                <div class="description"></div>
                                                                <div class="product-price">
                                                                    <span class="price"><%#Eval("Price_Goods") %></span>
                                                                </div>
                                                            </div>
                                                            <div class="cart clearfix animate-effect">
                                                                <div class="action">
                                                                    <ul class="list-unstyled">
                                                                        <li class="add-cart-button btn-group">
                                                                            <asp:ImageButton ID="ImageButton_To_Cart" ImageUrl="~/assets/images/icons/cart.png" data-toggle="tooltip" CssClass="btn btn-primary icon" CommandName="To_Cart" runat="server" ToolTip="В_корзину" />
                                                                        </li>
                                                                        <li class="lnk wishlist">
                                                                            <a class="add-to-cart" href="#" data-toggle="tooltip" title="Нравится">
                                                                                <i class="icon fa fa-heart"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li class="lnk">
                                                                            <a data-toggle="tooltip" class="add-to-cart" href="Product_Details.aspx?id_goods=<%#Eval("ID_Goods") %>" title="Смотреть">
                                                                                <i class="icon fa fa-eye"></i>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
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
                            <div class="tab-pane " id="list-container">
                                <div class="category-product">
                                    <asp:Repeater ID="Repeater_Goods_List" OnItemCommand="Repeater_Goods_List_ItemCommand" runat="server">
                                        <HeaderTemplate></HeaderTemplate>
                                        <ItemTemplate>
                                            <div class="category-product-inner wow fadeInUp">
                                                <div class="products">
                                                    <div class="product-list product">
                                                        <div class="row product-list-row">
                                                            <div class="col col-sm-4 col-lg-4">
                                                                <div class="product-image">
                                                                    <div class="image wrapper3 exmp3">
                                                                        <a href="Product_Details.aspx?id_goods=<%#Eval("ID_Goods") %>">
                                                                            <img src="<%#Eval("Foto_Goods") %>" alt="product images" />
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col col-sm-8 col-lg-8">
                                                                <div class="product-info">
                                                                    <asp:HiddenField ID="HF_ID_Goods" runat="server" Value='<%#Eval("ID_Goods")%>' />
                                                                    <h3 class="name"><a href="Product_Details.aspx?id_goods=<%#Eval("ID_Goods") %>"><%#Eval("Name_Goods") %></a></h3>
                                                                    <%--<div class="rating rateit-small"></div>--%>
                                                                    <div class="product-price">
                                                                        <span class="price"><%#Eval("Price_Goods") %></span>
                                                                    </div>
                                                                    <div class="description m-t-10"><%#Eval("Descript_Goods") %></div>
                                                                    <div class="cart clearfix animate-effect">
                                                                        <div class="action">
                                                                            <ul class="list-unstyled">
                                                                                <li class="add-cart-button btn-group">
                                                                                    <asp:ImageButton ID="ImageButton_To_Cart_List" ImageUrl="~/assets/images/icons/cart.png" data-toggle="tooltip" CssClass="btn btn-primary icon" CommandName="To_Cart" runat="server" ToolTip="В_корзину" />
                                                                                    <%--<button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                                                                                        <i class="fa fa-shopping-cart"></i>
                                                                                    </button>--%>
                                                                                    <%--<button class="btn btn-primary cart-btn" type="button">В корзину</button>--%>
                                                                                </li>
                                                                                <li class="lnk wishlist">
                                                                                    <a class="add-to-cart" href="#" data-toggle="tooltip" title="Нравится">
                                                                                        <i class="icon fa fa-heart"></i>
                                                                                    </a>
                                                                                </li>
                                                                                <li class="lnk">
                                                                            <a data-toggle="tooltip" class="add-to-cart" href="Product_Details.aspx?id_goods=<%#Eval("ID_Goods") %>" title="Смотреть">
                                                                                <i class="icon fa fa-eye"></i>
                                                                            </a>
                                                                        </li>
                                                                            </ul>
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
                        </div>
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
                    <br />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

