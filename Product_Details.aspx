<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="Product_Details.aspx.cs" Inherits="VyazaninoCOM.Product_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/lightbox.css" rel="stylesheet">
    <style>
        .wrapper3 {
            max-width: 7670px;
            max-height: 7670px;
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
                    <li class='active'>Карточка товара</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="body-content outer-top-xs">
        <div class='container'>
            <div class='row single-product'>
                <div class='col-md-12'>
                    <div class="detail-block">
                        <div class="row  wow fadeInUp">
                            <center><h5><asp:Label runat="server" ID="Label_Empty" Text=""></asp:Label></h5></center>
                            <div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
                                <div class="product-item-holder size-big single-product-gallery small-gallery">
                                    <div id="owl-single-product">
                                        
                                        <asp:Repeater ID="Repeater_Foto_Goods_1" runat="server">
                                            <HeaderTemplate></HeaderTemplate>
                                            <ItemTemplate>
                                                <div class=" wrapper3 exmp3" id="slide<%#Eval("N_Goods") %>">
                                                    <a data-lightbox="image-1" data-title="<%# Name_Goods %>" href="/assets/images/products/<%#Eval("Foto_Goods") %>">
                                                        <img class="img-responsive" alt="" src="/assets/images/blank.gif" data-echo="/assets/images/products/<%#Eval("Foto_Goods") %>" />
                                                    </a>
                                                </div>
                                            </ItemTemplate>
                                            <FooterTemplate></FooterTemplate>
                                        </asp:Repeater>
                                    </div>
                                    <div class="single-product-gallery-thumbs gallery-thumbs">
                                        <div id="owl-single-product-thumbnails">

                                            
                                            <asp:Repeater ID="Repeater_Foto_Goods_2" runat="server">
                                                <HeaderTemplate></HeaderTemplate>
                                                <ItemTemplate>
                                                    <div class="item">
                                                        <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="<%#Eval("N_Goods") %>" href="#slide<%#Eval("N_Goods") %>">
                                                            <img class="img-responsive" width="85" alt="" src="/assets/images/blank.gif" data-echo="/assets/images/products/<%#Eval("Foto_Goods") %>" />
                                                        </a>
                                                    </div>
                                                </ItemTemplate>
                                                <FooterTemplate></FooterTemplate>
                                            </asp:Repeater>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class='col-sm-6 col-md-7 product-info-block'>
                                <div class="product-info">
                                    <h1 class="name">
                                        <asp:Label ID="Label_Name_Goods" runat="server" Text=""></asp:Label></h1>
                                    <div class="rating-reviews m-t-20">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <%--<div class="rating rateit-small"></div>--%>
                                            </div>
                                            <div class="col-sm-8">
                                                <div class="reviews">
                                                    <%--<a href="#" class="lnk">(13 отзывов)</a>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%--<div class="stock-container info-container m-t-10">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                <div class="stock-box">
                                                    <span class="label">Availability :</span>
                                                </div>
                                            </div>
                                            <div class="col-sm-9">
                                                <div class="stock-box">
                                                    <span class="value">In Stock</span>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.row -->
                                    </div>--%>
                                    
                                    <div class="description-container m-t-20">
                                        <asp:Label ID="Label_Descript_Goods" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="price-container info-container m-t-20">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="price-box">
                                                    <span class="price">
                                                        <asp:Label ID="Label_Price_Goods" runat="server" Text=""></asp:Label></span>
                                                    <%--<span class="price-strike">$900.00</span>--%>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <%--<div class="favorite-button m-t-10">
                                                    <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Нравится" href="#">
                                                        <i class="fa fa-heart"></i>
                                                    </a>
                                                    <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Add to Compare" href="#">
                                                        <i class="fa fa-signal"></i>
                                                    </a>
                                                    <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="E-mail" href="#">
                                                        <i class="fa fa-envelope"></i>
                                                    </a>
                                                </div>--%>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="quantity-container info-container">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                <span class="label">В наличии :</span>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="cart-quantity">
                                                    <div class="quant-input">
                                                        <div class="arrows">
                                                            <div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
                                                            <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
                                                        </div>
                                                        <input type="text" id="Input_Count_Goods" runat="server" value="" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-7">
                                                <asp:ImageButton ID="ImageButton_To_Cart" ImageUrl="~/assets/images/icons/cart.png" data-toggle="tooltip" CssClass="btn btn-primary icon" OnClick="ImageButton_To_Cart_Click" runat="server" ToolTip="В корзину" />
                                            </div>
                                            <%--<div class="lnk wishlist col-sm-1">
                                                <a data-toggle="tooltip" class="add-to-cart" href="#" title="Нравится">
                                                    <i class="icon fa fa-heart"></i>
                                                </a>
                                            </div>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-tabs inner-bottom-xs  wow fadeInUp">
                        <div class="row">
                            <div class="col-sm-3">
                                <ul id="product-tabs" class="nav nav-tabs nav-tab-cell">
                                    <li class="active"><a data-toggle="tab" href="#description">Продавец</a></li>
                                    <li><a data-toggle="tab" href="#review">Отзывы</a></li>
                                    <%--<li><a data-toggle="tab" href="#tags">TAGS</a></li>--%>
                                </ul>
                            </div>
                            <div class="col-sm-9">
                                <div class="tab-content">
                                    <div id="description" class="tab-pane in active">
                                        <div class="product-tab">
                                            <p class="text">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br>
                                                <br>
                                                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                            </p>
                                        </div>
                                    </div>
                                    <div id="review" class="tab-pane">
                                        <div class="product-tab">
                                            <div class="product-reviews">
                                                <h4 class="title">Пользовательский отзыв</h4>
                                                <div class="reviews">
                                                    <div class="review">
                                                        <div class="review-title"><span class="summary">Александр.</span><span class="date"><i class="fa fa-calendar"></i><span>09.06.2019</span></span></div>
                                                        <div class="text">"Очень нравятся товары этого продавца. Буду его рекомендовать другим покупателям."</div>
                                                    </div>
                                                    <div class="review">
                                                        <div class="review-title"><span class="summary">Иван.</span><span class="date"><i class="fa fa-calendar"></i><span>07.06.2019</span></span></div>
                                                        <div class="text">"Хороший товар. Мне очень понравился."</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-add-review">
                                                <h4 class="title">Напишите свой отзыв</h4>
                                                <div class="review-table">
                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <thead>
                                                                <tr>
                                                                    <th class="cell-label">&nbsp;</th>
                                                                    <th>1 звезда</th>
                                                                    <th>2 звезды</th>
                                                                    <th>3 звезды</th>
                                                                    <th>4 звезды</th>
                                                                    <th>5 звезд</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td class="cell-label">Оценка</td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="1"></td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="2"></td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="3"></td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="4"></td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="5"></td>
                                                                </tr>
                                                                <%--<tr>
                                                                    <td class="cell-label">Цена</td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="1"></td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="2"></td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="3"></td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="4"></td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="5"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="cell-label">Value</td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="1"></td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="2"></td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="3"></td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="4"></td>
                                                                    <td>
                                                                        <input type="radio" name="quality" class="radio" value="5"></td>
                                                                </tr>--%>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="review-form">
                                                    <div class="form-container">
                                                        <form role="form" class="cnt-form">
                                                            <div class="row">
                                                                
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="exampleInputReview">Отзыв <span class="astk">*</span></label>
                                                                        <textarea class="form-control txt txt-review" id="exampleInputReview" rows="4" placeholder=""></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="action text-right">
                                                                <button class="btn btn-primary btn-upper">Опубликовать</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--<div id="tags" class="tab-pane">
                                        <div class="product-tag">
                                            <h4 class="title">Product Tags</h4>
                                            <form role="form" class="form-inline form-cnt">
                                                <div class="form-container">
                                                    <div class="form-group">
                                                        <label for="exampleInputTag">Add Your Tags: </label>
                                                        <input type="email" id="exampleInputTag" class="form-control txt">
                                                    </div>
                                                    <button class="btn btn-upper btn-primary" type="submit">ADD TAGS</button>
                                                </div>
                                            </form>
                                            <form role="form" class="form-inline form-cnt">
                                                <div class="form-group">
                                                    <label>&nbsp;</label>
                                                    <span class="text col-md-offset-3">Use spaces to separate tags. Use single quotes (') for phrases.</span>
                                                </div>
                                            </form>
                                        </div>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
</div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</asp:Content>
