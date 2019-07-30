<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="VyazaninoCOM.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="/Default.aspx">Главная</a></li>
                    <li class='active'>Блог</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="body-content">
        <div class="container">
            <div class="row">
                <div class="blog-page">
                    <div class="col-md-9">
                        <%--<div class="blog-post  wow fadeInUp">
                            <a href="blog-details.html">
                                <img class="img-responsive" src="assets/images/blog-post/blog_big_01.jpg" alt=""></a>
                            <h1><a href="blog-details.html">Ярнбомбинг – уличное вязание</a></h1>
                            <span class="author">Нина Вязникова</span>
                            <span class="review">0 Комментариев</span>
                            <span class="date-time">19/06/2019 10.00AM</span>
                            <p>Американка Магда Сейг всегда любила вязать. Поэтому и жизнь свою связала с вязнием, шитьем и продажей результата своих трудов. Открыла свой небольшой магазинчик и стала наслаждаться жизнью. Однажды, решив привлечь внимание еще большего количества покупателей к своему магазину, Магда украсила вход в свой бутик вязаными элементами декора. Было это в 2005 году...</p>
                            <a href="#" class="btn btn-upper btn-primary read-more">Читать</a>
                        </div>--%>
                        <div class="blog-post wow fadeInUp">
                            <a href="Blog_Details.aspx">
                                <img class="img-responsive" src="assets/images/blog-post/blog_big_02.jpg" alt=""></a>
                            <h1><a href="Blog_Details.aspx">Вязаное сумасшествие Агаты Олек</a></h1>
                            <span class="author">Нина Вязникова</span>
                            <span class="review">0 Комментариев</span>
                            <span class="date-time">18/06/2019 11.00AM</span>
                            <p>Многие женщины увлекаются рукоделием, но, кажется, вязание крючком стало для Агаты Олек (Agata Olek) нечто большим, чем простое увлечение. Такое ощущение, что женщину охватило настоящее помешательство, жертвами которого становится все на ее пути: мебель, транспорт и даже люди...</p>
                            <a href="Blog_Details.aspx" class="btn btn-upper btn-primary read-more">Читать</a>
                        </div>
                        <div class="blog-post outer-top-bd  wow fadeInUp">
                            <a href="#">
                                <img class="img-responsive" src="assets/images/blog-post/blog_big_03.jpg" alt=""></a>
                            <h1><a href="#">Юбиами – вяжем руками</a></h1>
                            <span class="author">Нина Вязникова</span>
                            <span class="review">0 Комментариев</span>
                            <span class="date-time">17/06/2019 11.00AM</span>
                            <p>Вязание для не посвященных – дело трудное, требующее постоянно совершенствования. Те, кто умеет вязать подтвердят, что взяв в руки спицы или крючок уже невозможно остановиться. И каждый день приносит новые знания, умения, техники. В общем хлопотное и трудное дело это вязание...</p>
                            <a href="#" class="btn btn-upper btn-primary read-more">Читать</a>
                        </div>
                        <div class="blog-post outer-top-bd  wow fadeInUp">
                            <a href="#">
                                <img class="img-responsive" src="assets/images/blog-post/blog_big_04.jpg" alt=""></a>
                            <h1><a href="#">Арт-объекты Джоаны Васконселос</a></h1>
                            <span class="author">Нина Вязникова</span>
                            <span class="review">0 Комментариев</span>
                            <span class="date-time">16/06/2019 11.00AM</span>
                            <p>Если у человека есть хобби, которое ему по душе, это, бесспорно, хороший знак. И хорошим он остается вплоть до тех пор, пока затея не начинает выходить за грани разумного, - пока никто не пострадал от чрезмерной одержимости увлечением. А дизайнер Джоана Васконселос (Joana Vasconcelos) из Португалии преднамеренно выбирает себе "жертв" в собственной квартире, при этом угрожая очередной "избраннице" крючком и нитками...</p>
                            <a href="#" class="btn btn-upper btn-primary read-more">Читать</a>
                        </div>
                        <div class="clearfix blog-pagination filters-container  wow fadeInUp" style="padding: 0px; background: none; box-shadow: none; margin-top: 15px; border: none">
                            <div class="text-right">
                                <div class="pagination-container">
                                    <ul class="list-inline list-unstyled">
                                        <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 sidebar">
                        <div class="sidebar-module-container">
                            <div class="search-area outer-bottom-small">
                                <%--<form>
                                    <div class="control-group">
                                        <input placeholder="Поиск..." class="search-field">
                                        <a href="#" class="search-button"></a>
                                    </div>
                                </form>--%>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
