<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="Blog_Details.aspx.cs" Inherits="VyazaninoCOM.Blog_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="/Default.aspx">Главная</a></li>
                    <li class='active'>Вязаное сумасшествие Агаты Олек</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="body-content">
        <div class="container">
            <div class="row">
                <div class="blog-page">
                    <div class="col-md-12">
                        <div class="blog-post wow fadeInUp">
                            <img class="img-responsive" src="assets/images/blog-post/blog_big_02.jpg" alt="">
                            <h1>Вязаное сумасшествие Агаты Олек</h1>
                            <span class="author">Нина Вязникова</span>
                            <span class="review">0 Комментариев</span>
                            <span class="date-time">18/06/2019 11.30AM</span>
                            <p>Многие женщины увлекаются рукоделием, но, кажется, вязание крючком стало для Агаты Олек (Agata Olek) нечто большим, чем простое увлечение. Такое ощущение, что женщину охватило настоящее помешательство, жертвами которого становится все на ее пути: мебель, транспорт и даже люди!</p>
                            <p>Для своей недавней персональной выставки «Knitting is for Pus****», проходящей в нью-йоркской «Christopher Henry Gallery», Агата Олек покрыла практически каждый квадратный сантиметр поверхности разноцветным вязанием. Но результаты деятельности мастерицы можно увидеть не только в галерее. По улицам города расхаживают люди, с ног до головы одетые в вязаные костюмы и напоминающие грабителей, которые в силу неведомых обстоятельств предпочли черным нарядам цветные. Удивляют прохожих и автомобили в связанных чехлах, и обвязанные мосты… Каждому посетителю галереи даже выдается карта, на которой обозначено местоположение всех работ Олек в городском пространстве.</p>
                            <p>Агата Олек увлеклась вязанием еще в детстве, а после окончания колледжа, где она изучала культуру, интерес к этому занятию только возрос. Агата решила, что ей просто необходимо занять чем-то руки во время просмотра сериалов, и вязание крючком подошло для этого идеально. Теперь автор вяжет даже на собственных выставках - на глазах у многочисленной публики, сидя среди самодельных интерьеров и облачившись в вязаные костюм и маску.</p>
                            <p>«Петля за петлей, час за часом вязание крючком становилось моим сумасшествием, - рассказывает Агата Олек. – Жизнь и искусство неразделимы. Фильмы, которые я смотрю во время вязания, влияют на мою работу, а работа, в свою очередь, диктует, какие фильмы мне выбирать. Что я хочу сказать своими произведениями? А вы потяните за конец нити и распутайте историю, спрятанную за вязаным полотном».</p>
                            <%--<p>Источник cтатьи: <a href="http://kulturologia.ru" target="_blank">kulturologia.ru</a></p>--%>
                            <div class="social-media">
                                <span>Поделиться:</span>
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>

                            </div>
                        </div>
                        <%--<div class="blog-post-author-details wow fadeInUp">
                            <div class="row">
                                <div class="col-md-2">
                                    <img src="assets/images/testimonials/member3.png" alt="Responsive image" class="img-circle img-responsive">
                                </div>
                                <div class="col-md-10">
                                    <h4>John Doe</h4>
                                    <div class="btn-group author-social-network pull-right">
                                        <span>Follow me on</span>
                                        <button type="button" class="dropdown-toggle" data-toggle="dropdown">
                                            <i class="twitter-icon fa fa-twitter"></i>
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#"><i class="icon fa fa-facebook"></i>Facebook</a></li>
                                            <li><a href="#"><i class="icon fa fa-linkedin"></i>Linkedin</a></li>
                                            <li><a href=""><i class="icon fa fa-pinterest"></i>Pinterst</a></li>
                                            <li><a href=""><i class="icon fa fa-rss"></i>RSS</a></li>
                                        </ul>
                                    </div>
                                    </div>
                            </div>
                        </div>
                        <div class="blog-review wow fadeInUp">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="title-review-comments">16 comments</h3>
                                </div>
                                <div class="col-md-2 col-sm-2">
                                    <img src="assets/images/testimonials/member1.png" alt="Responsive image" class="img-rounded img-responsive">
                                </div>
                                <div class="col-md-10 col-sm-10 blog-comments outer-bottom-xs">
                                    <div class="blog-comments inner-bottom-xs">
                                        <h4>Jone doe</h4>
                                        <span class="review-action pull-right">03 Day ago &sol;   
					<a href="">Repost</a> &sol;
					<a href="">Reply</a>
                                        </span>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
                                    </div>
                                    <div class="blog-comments-responce outer-top-xs ">
                                        <div class="row">
                                            <div class="col-md-2 col-sm-2">
                                                <img src="assets/images/testimonials/member2.png" alt="Responsive image" class="img-rounded img-responsive">
                                            </div>
                                            <div class="col-md-10 col-sm-10 outer-bottom-xs">
                                                <div class="blog-sub-comments inner-bottom-xs">
                                                    <h4>Sarah Smith</h4>
                                                    <span class="review-action pull-right">03 Day ago &sol;   
								<a href="">Repost</a> &sol;
								<a href="">Reply</a>
                                                    </span>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
                                                </div>
                                            </div>
                                            <div class="col-md-2 col-sm-2">
                                                <img src="assets/images/testimonials/member3.png" alt="Responsive image" class="img-rounded img-responsive">
                                            </div>
                                            <div class="col-md-10 col-sm-10">
                                                <div class=" inner-bottom-xs">
                                                    <h4>Stephen</h4>
                                                    <span class="review-action pull-right">03 Day ago &sol;   
								<a href="">Repost</a> &sol;
								<a href="">Reply</a>
                                                    </span>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-2">
                                    <img src="assets/images/testimonials/member4.png" alt="Responsive image" class="img-rounded img-responsive">
                                </div>
                                <div class="col-md-10 col-sm-10">
                                    <div class="blog-comments inner-bottom-xs outer-bottom-xs">
                                        <h4>Saraha Smith</h4>
                                        <span class="review-action pull-right">03 Day ago &sol;   
					<a href="">Repost</a> &sol;
					<a href="">Reply</a>
                                        </span>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-2">
                                    <img src="assets/images/testimonials/member1.png" alt="Responsive image" class="img-rounded img-responsive">
                                </div>
                                <div class="col-md-10 col-sm-10">
                                    <div class="blog-comment inner-bottom-xs">
                                        <h4>Mark Doe</h4>
                                        <span class="review-action pull-right">03 Day ago &sol;   
					<a href="">Repost</a> &sol;
					<a href="">Reply</a>
                                        </span>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
                                    </div>
                                </div>
                                <div class="post-load-more col-md-12"><a class="btn btn-upper btn-primary" href="#">Load more</a></div>
                            </div>
                        </div>--%>
                        <div class="blog-write-comment outer-bottom-xs outer-top-xs">
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>Оставить комментарий</h4>
                                </div>
                                <div class="col-md-12">
                                    <form class="register-form" role="form">
                                        <div class="form-group">
                                            <label class="info-title" for="exampleInputComments">Ваш комментарий <span>*</span></label>
                                            <textarea class="form-control unicase-form-control" id="exampleInputComments"></textarea>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-12 outer-bottom-small m-t-20">
                                    <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Подтвердить</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
