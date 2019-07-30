<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VyazaninoCOM.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                        <style>
                            .wrapper3 {
                                width: 200px;
                                height: 200px;
                                border: 3px solid lightgrey;/* #2e6da4;*/
                                border-radius: 2px;
                                overflow:hidden;
                            }
                            .wrapper4 {
                                
                                border: 3px solid lightgrey;/* #2e6da4;*/
                                border-radius: 2px;
                                overflow:hidden;
                            }
                            .exmp3 img {
                                object-fit: cover;
                                width: 100%;
                                height: 100%;
                            }
                        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body-content outer-top-xs" id="top-banner-and-menu">
        <div class="container">
            <div class="row">
                <!-- ============================================== БОКОВАЯ ПАНЕЛЬ =================================================================== -->
                <div class="col-xs-12 col-sm-12 col-md-3 sidebar" style="margin-bottom:20px;">

                    <!-- ================================== БОКОВОЕ МЕНЮ ============================================================================= -->
                    <div class="side-menu animate-dropdown outer-bottom-xs" style="margin:0px 0px 0px 0px;border-radius: 0px 0px 0px 0px;border:0px;">
                        <div class="yamm navbar navbar-default" role="navigation" style="border-radius: 0px 0px 0px 0px;margin-bottom:0px;">
                            
                            <div class=" head" style="padding:0px 0px 0px 0px;outline: none;box-sizing: border-box;display: block;">
                                <button data-target="#mc-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" style="margin:8px 0px 8px 0px;padding:9px 10px;" type="button">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <div class="" style="padding:15px 0px 13px 15px;"><%--<i class="icon fa fa-align-justify fa-fw"></i>--%>Категории</div>
                            </div>

                            <nav class="yamm megamenu-horizontal collapse navbar-collapse" style="padding-left:0px;padding-right:0px;" role="navigation" id="mc-menu-collapse">
                                            <ul class="nav">
                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check" aria-hidden="true"></i>
                                                        Домашний уют</a>
                                                    <ul class="dropdown-menu mega-menu">
                                                        <li class="yamm-content">
                                                            <div class="row">
                                                                <div class="col-sm-12 col-md-4">
                                                                    <ul class="links list-unstyled">
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;"><b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Предметы интерьера</b></li>
                                                                        <li><a href="Products.aspx?category=29&parents=26">Ковры</a></li>
                                                                        <li><a href="Products.aspx?category=30&parents=26">Придверные коврики</a></li>
                                                                        <li><a href="Products.aspx?category=31&parents=26">Сидушки на стулья/табуреты</a></li>
                                                                        <li><a href="Products.aspx?category=32&parents=26">Пледы</a></li>
                                                                        <li><a href="Products.aspx?category=33&parents=26">Накидки</a></li>
                                                                        <li><a href="Products.aspx?category=34&parents=26">Шторы</a></li>
                                                                        <li><a href="Products.aspx?category=35&parents=26">Занавески</a></li>
                                                                        <li><a href="Products.aspx?category=36&parents=26">Пуфы</a></li>
                                                                        <li><a href="Products.aspx?category=37&parents=26">Подушки</a></li>
                                                                        <li><a href="Products.aspx?category=38&parents=26">Прихватки для кухни</a></li>
                                                                        <li><a href="Products.aspx?category=39&parents=26">Кухонные подставки</a></li>
                                                                        <li><a href="Products.aspx?category=40&parents=26">Ёмкости для хранения</a></li>
                                                                        <li><a href="Products.aspx?category=41&parents=26">Чехлы на мебель</a></li>
                                                                        <li><a href="Products.aspx?category=42&parents=26">Интерьерные корзины</a></li>
                                                                        <li><a href="Products.aspx?category=43&parents=26">Скатерти</a></li>
                                                                        <li><a href="Products.aspx?category=44&parents=26">Салфетки</a></li>
                                                                        <li><a href="Products.aspx?category=45&parents=26">Картины</a></li>
                                                                        <li><a href="Products.aspx?category=46&parents=26">Ширмы</a></li>
                                                                        <li><a href="Products.aspx?category=47&parents=26">Панно</a></li>
                                                                        <li><a href="Products.aspx?category=48&parents=26">Напольные вазы</a></li>
                                                                        <li><a href="Products.aspx?category=49&parents=26">Настольные вазы</a></li>
                                                                        <li><a href="Products.aspx?category=50&parents=26">Подвесные карманы для хранения</a></li>
                                                                        <li><a href="Products.aspx?category=51&parents=26">Органайзеры</a></li>
                                                                        <li><a href="Products.aspx?category=52&parents=26">Вязанные цветы</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-sm-12 col-md-4">
                                                                    <ul class="links list-unstyled">
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;"><b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Электричество</b></li>
                                                                        <li><a href="Products.aspx?category=53&parents=27">Люстры</a></li>
                                                                        <li><a href="Products.aspx?category=54&parents=27">Торшеры</a></li>
                                                                        <li><a href="Products.aspx?category=55&parents=27">Напольные лампы</a></li>
                                                                        <li><a href="Products.aspx?category=56&parents=27">Настольные лампы</a></li>
                                                                        <li><a href="Products.aspx?category=57&parents=27">Светильники</a></li>
                                                                        <li><a href="Products.aspx?category=58&parents=27">Бра</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-sm-12 col-md-4">
                                                                    <ul class="links list-unstyled">
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;"><b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Товары для дачи</b></li>
                                                                        <li><a href="Products.aspx?category=59&parents=28">Гамаки</a></li>
                                                                        <li><a href="Products.aspx?category=60&parents=28">Лежаки</a></li>
                                                                        <li><a href="Products.aspx?category=61&parents=28">Качели</a></li>
                                                                        <li><a href="Products.aspx?category=62&parents=28">Кресла подвесные</a></li>
                                                                        <li><a href="Products.aspx?category=63&parents=28">Кресла напольные</a></li>
                                                                        <li><a href="Products.aspx?category=64&parents=28">Банные принадлежности</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check" aria-hidden="true"></i>
                                                        Одежда для женщин</a>
                                                    <ul class="dropdown-menu mega-menu">
                                                        <li class="yamm-content">
                                                            <div class="row">
                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Верхняя одежда</b></li>
                                                                        <li><a href="Products.aspx?category=70&parents=65">Пальто</a></li>
                                                                        <li><a href="Products.aspx?category=71&parents=65">Пончо</a></li>
                                                                        <li><a href="Products.aspx?category=72&parents=65">Плащи</a></li>
                                                                        <li><a href="Products.aspx?category=73&parents=65">Куртки</a></li>
                                                                        <li><a href="Products.aspx?category=74&parents=65">Теплые жакеты</a></li>
                                                                        <li><a href="Products.aspx?category=75&parents=65">Шубы</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Летняя одежда</b></li>
                                                                        <li><a href="Products.aspx?category=109&parents=67">Платья</a></li>
                                                                        <li><a href="Products.aspx?category=110&parents=67">Туники</a></li>
                                                                        <li><a href="Products.aspx?category=111&parents=67">Брюки</a></li>
                                                                        <li><a href="Products.aspx?category=112&parents=67">Шорты</a></li>
                                                                        <li><a href="Products.aspx?category=113&parents=67">Бриджи</a></li>
                                                                        <li><a href="Products.aspx?category=114&parents=67">Топы</a></li>
                                                                        <li><a href="Products.aspx?category=115&parents=67">Палантины</a></li>
                                                                        <li><a href="Products.aspx?category=116&parents=67">Болеро</a></li>
                                                                        <li><a href="Products.aspx?category=117&parents=67">Юбки</a></li>
                                                                        <li><a href="Products.aspx?category=118&parents=67">Блузки</a></li>
                                                                        <li><a href="Products.aspx?category=119&parents=67">Купальники</a></li>
                                                                        <li><a href="Products.aspx?category=120&parents=67">Парео</a></li>
                                                                        <li><a href="Products.aspx?category=121&parents=67">Сарафаны</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Вечерняя одежда</b></li>
                                                                        <li><a href="Products.aspx?category=122&parents=68">Вечерние платья</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Повседневная одежда</b></li>
                                                                        <li><a href="Products.aspx?category=76&parents=66">Платья</a></li>
                                                                        <li><a href="Products.aspx?category=77&parents=66">Сарафаны</a></li>
                                                                        <li><a href="Products.aspx?category=78&parents=66">Юбки</a></li>
                                                                        <li><a href="Products.aspx?category=79&parents=66">Футболки</a></li>
                                                                        <li><a href="Products.aspx?category=80&parents=66">Топы</a></li>
                                                                        <li><a href="Products.aspx?category=81&parents=66">Блузки</a></li>
                                                                        <li><a href="Products.aspx?category=82&parents=66">Джемперы</a></li>
                                                                        <li><a href="Products.aspx?category=83&parents=66">Кардиганы</a></li>
                                                                        <li><a href="Products.aspx?category=84&parents=66">Лонгсливы</a></li>
                                                                        <li><a href="Products.aspx?category=85&parents=66">Пиджаки</a></li>
                                                                        <li><a href="Products.aspx?category=86&parents=66">Жакеты</a></li>
                                                                        <li><a href="Products.aspx?category=87&parents=66">Одежда для дома</a></li>
                                                                        <li><a href="Products.aspx?category=88&parents=66">Туники</a></li>
                                                                        <li><a href="Products.aspx?category=89&parents=66">Комбинезоны</a></li>
                                                                        <li><a href="Products.aspx?category=90&parents=66">Костюмы</a></li>
                                                                        <li><a href="Products.aspx?category=91&parents=66">Жилеты</a></li>
                                                                        <li><a href="Products.aspx?category=92&parents=66">Шорты</a></li>
                                                                        <li><a href="Products.aspx?category=93&parents=66">Бриджы</a></li>
                                                                        <li><a href="Products.aspx?category=94&parents=66">Толстовки</a></li>
                                                                        <li><a href="Products.aspx?category=95&parents=66">Пончо</a></li>
                                                                        <li><a href="Products.aspx?category=96&parents=66">Свитеры</a></li>
                                                                        <li><a href="Products.aspx?category=97&parents=66">Кофты</a></li>
                                                                        <li><a href="Products.aspx?category=98&parents=66">Балахоны</a></li>
                                                                        <li><a href="Products.aspx?category=99&parents=66">Накидки</a></li>
                                                                        <li><a href="Products.aspx?category=100&parents=66">Шали</a></li>
                                                                        <li><a href="Products.aspx?category=101&parents=66">Костюмы брючные</a></li>
                                                                        <li><a href="Products.aspx?category=102&parents=66">Костюмы с юбкой</a></li>
                                                                        <li><a href="Products.aspx?category=103&parents=66">Костюмы тройки</a></li>
                                                                        <li><a href="Products.aspx?category=104&parents=66">Водолазки</a></li>
                                                                        <li><a href="Products.aspx?category=105&parents=66">Кафтаны</a></li>
                                                                        <li><a href="Products.aspx?category=106&parents=66">Джемперы</a></li>
                                                                        <li><a href="Products.aspx?category=107&parents=66">Жакеты</a></li>
                                                                        <li><a href="Products.aspx?category=108&parents=66">Безрукавки</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Аксессуары</b></li>
                                                                        <li><a href="Products.aspx?category=123&parents=69">Шапки</a></li>
                                                                        <li><a href="Products.aspx?category=124&parents=69">Шляпы</a></li>
                                                                        <li><a href="Products.aspx?category=125&parents=69">Панамы</a></li>
                                                                        <li><a href="Products.aspx?category=126&parents=69">Шарфы</a></li>
                                                                        <li><a href="Products.aspx?category=127&parents=69">Перчатки</a></li>
                                                                        <li><a href="Products.aspx?category=128&parents=69">Варежки</a></li>
                                                                        <li><a href="Products.aspx?category=129&parents=69">Скедки</a></li>
                                                                        <li><a href="Products.aspx?category=130&parents=69">Муфты</a></li>
                                                                        <li><a href="Products.aspx?category=131&parents=69">Снуды</a></li>
                                                                        <li><a href="Products.aspx?category=132&parents=69">Капюшоны</a></li>
                                                                        <li><a href="Products.aspx?category=133&parents=69">Хомуты</a></li>
                                                                        <li><a href="Products.aspx?category=134&parents=69">Наушники</a></li>
                                                                        <li><a href="Products.aspx?category=135&parents=69">Повязки на голову</a></li>
                                                                        <li><a href="Products.aspx?category=136&parents=69">Болеро</a></li>
                                                                        <li><a href="Products.aspx?category=137&parents=69">Горжетки</a></li>
                                                                        <li><a href="Products.aspx?category=138&parents=69">Пляжные коврики</a></li>
                                                                        <li><a href="Products.aspx?category=139&parents=69">Пляжные сумки</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check" aria-hidden="true"></i>
                                                        Одежда для мужчин</a>
                                                    <ul class="dropdown-menu mega-menu">
                                                        <li class="yamm-content">
                                                            <div class="row">
                                                                <div class="col-sm-12 col-md-3">
                                                                    <ul class="links list-unstyled">
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Верхняя одежда</b></li>
                                                                        <li><a href="Products.aspx?category=145&parents=140">Куртки</a></li>
                                                                        <li><a href="Products.aspx?category=146&parents=140">Плащи</a></li>
                                                                        <li><a href="Products.aspx?category=147&parents=140">Пальто</a></li>
                                                                        <li><a href="Products.aspx?category=148&parents=140">Полупальто</a></li>
                                                                        <li><a href="Products.aspx?category=149&parents=140">Теплые жакеты</a></li>
                                                                        <li><a href="Products.aspx?category=150&parents=140">Шубы</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-sm-12 col-md-3">
                                                                    <ul class="links list-unstyled">
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Повседневная одежда</b></li>
                                                                        <li><a href="Products.aspx?category=151&parents=66">Костюмы</a></li>
                                                                        <li><a href="Products.aspx?category=152&parents=66">Брюки</a></li>
                                                                        <li><a href="Products.aspx?category=153&parents=66">Лонгсливы</a></li>
                                                                        <li><a href="Products.aspx?category=154&parents=66">Безрукавки</a></li>
                                                                        <li><a href="Products.aspx?category=155&parents=66">Толстовки</a></li>
                                                                        <li><a href="Products.aspx?category=156&parents=66">Пиджаки</a></li>
                                                                        <li><a href="Products.aspx?category=157&parents=66">Пуловеры</a></li>
                                                                        <li><a href="Products.aspx?category=158&parents=66">Жилеты</a></li>
                                                                        <li><a href="Products.aspx?category=159&parents=66">Джемперы</a></li>
                                                                        <li><a href="Products.aspx?category=160&parents=66">Жакеты</a></li>
                                                                        <li><a href="Products.aspx?category=161&parents=66">Френчи</a></li>
                                                                        <li><a href="Products.aspx?category=162&parents=66">Рубашки</a></li>
                                                                        <li><a href="Products.aspx?category=163&parents=66">Водолазки</a></li>
                                                                        <li><a href="Products.aspx?category=164&parents=66">Кафтаны</a></li>
                                                                        <li><a href="Products.aspx?category=165&parents=66">Свитеры</a></li>
                                                                        <li><a href="Products.aspx?category=166&parents=66">Кофты</a></li>
                                                                        <li><a href="Products.aspx?category=167&parents=66">Балахоны</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-sm-12 col-md-3">
                                                                    <ul class="links list-unstyled">
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Летняя одежда</b></li>
                                                                        <li><a href="Products.aspx?category=168&parents=142">Майки</a></li>
                                                                        <li><a href="Products.aspx?category=169&parents=142">Шорты</a></li>
                                                                        <li><a href="Products.aspx?category=170&parents=142">Брюки</a></li>
                                                                        <li><a href="Products.aspx?category=171&parents=142">Бриджи</a></li>
                                                                        <li><a href="Products.aspx?category=172&parents=142">Пуловеры</a></li>
                                                                        <li><a href="Products.aspx?category=173&parents=142">Купальные плавки</a></li>
                                                                        <li><a href="Products.aspx?category=174&parents=142">Джемперы с коротким рукавом</a></li>
                                                                        <li><a href="Products.aspx?category=175&parents=142">Поло</a></li>
                                                                        <li><a href="Products.aspx?category=176&parents=142">Футболки</a></li>
                                                                        <li><a href="Products.aspx?category=177&parents=142">Рубашки</a></li>
                                                                        <li><a href="Products.aspx?category=178&parents=142">Кольчуги</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-sm-12 col-md-3">
                                                                    <ul class="links list-unstyled">
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Вечерняя одежда</b></li>
                                                                        <li><a href="Products.aspx?category=179&parents=143">Рубашки</a></li>
                                                                        <li><a href="Products.aspx?category=180&parents=143">Костюмы</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Аксессуары</b></li>
                                                                        <li><a href="Products.aspx?category=181&parents=144">Шапки</a></li>
                                                                        <li><a href="Products.aspx?category=182&parents=144">Шляпы</a></li>
                                                                        <li><a href="Products.aspx?category=183&parents=144">Кепки</a></li>
                                                                        <li><a href="Products.aspx?category=184&parents=144">Панамы</a></li>
                                                                        <li><a href="Products.aspx?category=185&parents=144">Шарфы</a></li>
                                                                        <li><a href="Products.aspx?category=186&parents=144">Перчатки</a></li>
                                                                        <li><a href="Products.aspx?category=187&parents=144">Варежки</a></li>
                                                                        <li><a href="Products.aspx?category=188&parents=144">Муфты</a></li>
                                                                        <li><a href="Products.aspx?category=189&parents=144">Снуды</a></li>
                                                                        <li><a href="Products.aspx?category=190&parents=144">Капюшоны</a></li>
                                                                        <li><a href="Products.aspx?category=191&parents=144">Хомуты</a></li>
                                                                        <li><a href="Products.aspx?category=192&parents=144">Пляжные сумки</a></li>
                                                                        <li><a href="Products.aspx?category=193&parents=144">Пляжные коврики</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                                
                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Одежда для девочек</a>
                                                    <ul class="dropdown-menu mega-menu">
                                                        <li class="yamm-content">
                                                            <div class="row">
                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Аксессуары</b></li>
                                                                        <li><a href="Products.aspx?category=235&parents=198">Шапки</a></li>
                                                                        <li><a href="Products.aspx?category=236&parents=198">Шляпы</a></li>
                                                                        <li><a href="Products.aspx?category=237&parents=198">Панамы</a></li>
                                                                        <li><a href="Products.aspx?category=238&parents=198">Шарфы</a></li>
                                                                        <li><a href="Products.aspx?category=239&parents=198">Перчатки</a></li>
                                                                        <li><a href="Products.aspx?category=240&parents=198">Варежки</a></li>
                                                                        <li><a href="Products.aspx?category=241&parents=198">Следки</a></li>
                                                                        <li><a href="Products.aspx?category=242&parents=198">Муфты</a></li>
                                                                        <li><a href="Products.aspx?category=243&parents=198">Снуды</a></li>
                                                                        <li><a href="Products.aspx?category=244&parents=198">Капюшоны</a></li>
                                                                        <li><a href="Products.aspx?category=245&parents=198">Хомуты</a></li>
                                                                        <li><a href="Products.aspx?category=246&parents=198">Наушники</a></li>
                                                                        <li><a href="Products.aspx?category=247&parents=198">Повязки на голову</a></li>
                                                                        <li><a href="Products.aspx?category=248&parents=198">Болеро</a></li>
                                                                        <li><a href="Products.aspx?category=249&parents=198">Пляжные сумки</a></li>
                                                                        <li><a href="Products.aspx?category=250&parents=198">Пляжные коврики</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Повседневная одежда</b></li>
                                                                        <li><a href="Products.aspx?category=206&parents=195">Свитеры</a></li>
                                                                        <li><a href="Products.aspx?category=207&parents=195">Кофточки</a></li>
                                                                        <li><a href="Products.aspx?category=208&parents=195">Костюмы</a></li>
                                                                        <li><a href="Products.aspx?category=209&parents=195">Шорты</a></li>
                                                                        <li><a href="Products.aspx?category=201&parents=195">Брюки</a></li>
                                                                        <li><a href="Products.aspx?category=211&parents=195">Бриджы</a></li>
                                                                        <li><a href="Products.aspx?category=212&parents=195">Болеро</a></li>
                                                                        <li><a href="Products.aspx?category=213&parents=195">Платья</a></li>
                                                                        <li><a href="Products.aspx?category=214&parents=195">Юбки</a></li>
                                                                        <li><a href="Products.aspx?category=215&parents=195">Жакеты</a></li>
                                                                        <li><a href="Products.aspx?category=216&parents=195">Кардиганы</a></li>
                                                                        <li><a href="Products.aspx?category=217&parents=195">Сарафаны</a></li>
                                                                        <li><a href="Products.aspx?category=218&parents=195">Накидки</a></li>
                                                                        <li><a href="Products.aspx?category=219&parents=195">Пелерины</a></li>
                                                                        <li><a href="Products.aspx?category=220&parents=195">Горжетки</a></li>
                                                                        <li><a href="Products.aspx?category=221&parents=195">Пончо</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Летняя одежда</b></li>
                                                                        <li><a href="Products.aspx?category=222&parents=196">Платья</a></li>
                                                                        <li><a href="Products.aspx?category=223&parents=196">Сарафаны</a></li>
                                                                        <li><a href="Products.aspx?category=224&parents=196">Купальники</a></li>
                                                                        <li><a href="Products.aspx?category=225&parents=196">Юбки</a></li>
                                                                        <li><a href="Products.aspx?category=226&parents=196">Топы</a></li>
                                                                        <li><a href="Products.aspx?category=227&parents=196">Пелерины</a></li>
                                                                        <li><a href="Products.aspx?category=228&parents=196">Палантины</a></li>
                                                                        <li><a href="Products.aspx?category=229&parents=196">Костюмы</a></li>
                                                                        <li><a href="Products.aspx?category=230&parents=196">Кофточки</a></li>
                                                                        <li><a href="Products.aspx?category=231&parents=196">Туники</a></li>
                                                                        <li><a href="Products.aspx?category=232&parents=196">Блузки</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Праздничная одежда</b></li>
                                                                        <li><a href="Products.aspx?category=233&parents=197">Тематические костюмы</a></li>
                                                                        <li><a href="Products.aspx?category=234&parents=197">Вечерние платья</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Верхняя одежда</b></li>
                                                                        <li><a href="Products.aspx?category=199&parents=194">Пальто</a></li>
                                                                        <li><a href="Products.aspx?category=200&parents=194">Полупальто</a></li>
                                                                        <li><a href="Products.aspx?category=201&parents=194">Платье-пальто</a></li>
                                                                        <li><a href="Products.aspx?category=202&parents=194">Куртки</a></li>
                                                                        <li><a href="Products.aspx?category=203&parents=194">Плащи</a></li>
                                                                        <li><a href="Products.aspx?category=204&parents=194">Жакеты</a></li>
                                                                        <li><a href="Products.aspx?category=205&parents=194">Шубы</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                                
                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Одежда для мальчиков</a>
                                                    <ul class="dropdown-menu mega-menu">
                                                        <li class="yamm-content">
                                                            <div class="row">
                                                                <div class="col-sm-12 col-md-4">
                                                                    <ul class="links list-unstyled">
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Верхняя одежда</b></li>
                                                                        <li><a href="Products.aspx?category=256&parents=251">Пальто</a></li>
                                                                        <li><a href="Products.aspx?category=257&parents=251">Полупальто</a></li>
                                                                        <li><a href="Products.aspx?category=258&parents=251">Куртки</a></li>
                                                                        <li><a href="Products.aspx?category=259&parents=251">Плащи</a></li>
                                                                        <li><a href="Products.aspx?category=260&parents=251">Жакеты</a></li>
                                                                        <li><a href="Products.aspx?category=261&parents=251">Шубы</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Праздничная одежда</b></li>
                                                                        <li><a href="Products.aspx?category=276&parents=254">Тематические костюмы</a></li>
                                                                        <li><a href="Products.aspx?category=277&parents=254">Вечерние костюмы</a></li>
                                                                        <li><a href="Products.aspx?category=278&parents=254">Рубашки</a></li>
                                                                    </ul>
                                                                </div>
                                                                <!-- /.col -->
                                                                <div class="col-sm-12 col-md-4">
                                                                    <ul class="links list-unstyled">
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Аксессуары</b></li>
                                                                        <li><a href="Products.aspx?category=279&parents=255">Шапки</a></li>
                                                                        <li><a href="Products.aspx?category=280&parents=255">Шляпы</a></li>
                                                                        <li><a href="Products.aspx?category=281&parents=255">Кепки</a></li>
                                                                        <li><a href="Products.aspx?category=282&parents=255">Панамы</a></li>
                                                                        <li><a href="Products.aspx?category=283&parents=255">Шарфы</a></li>
                                                                        <li><a href="Products.aspx?category=284&parents=255">Перчатки</a></li>
                                                                        <li><a href="Products.aspx?category=285&parents=255">Варежки</a></li>
                                                                        <li><a href="Products.aspx?category=286&parents=255">Муфты</a></li>
                                                                        <li><a href="Products.aspx?category=287&parents=255">Снуды</a></li>
                                                                        <li><a href="Products.aspx?category=288&parents=255">Капюшоны</a></li>
                                                                        <li><a href="Products.aspx?category=289&parents=255">Хомуты</a></li>
                                                                        
                                                                    </ul>
                                                                </div>
                                                                <!-- /.col -->
                                                                <div class="col-sm-12 col-md-4">
                                                                    <ul class="links list-unstyled">
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Летняя одежда</b></li>
                                                                        <li><a href="Products.aspx?category=270&parents=253">Майки</a></li>
                                                                        <li><a href="Products.aspx?category=271&parents=253">Футболки</a></li>
                                                                        <li><a href="Products.aspx?category=272&parents=253">Рубашки</a></li>
                                                                        <li><a href="Products.aspx?category=273&parents=253">Плавки</a></li>
                                                                        <li><a href="Products.aspx?category=274&parents=253">Шорты</a></li>
                                                                        <li><a href="Products.aspx?category=275&parents=253">Бриджи</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                        
                                                                         <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Верхняя одежда</b></li>
                                                                        <li><a href="Products.aspx?category=256&parents=251">Пальто</a></li>
                                                                        <li><a href="Products.aspx?category=257&parents=251">Полупальто</a></li>
                                                                        <li><a href="Products.aspx?category=258&parents=251">Куртки</a></li>
                                                                        <li><a href="Products.aspx?category=259&parents=251">Плащи</a></li>
                                                                        <li><a href="Products.aspx?category=260&parents=251">Жакеты</a></li>
                                                                        <li><a href="Products.aspx?category=261&parents=251">Шубы</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                                
                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Белье</a>
                                                    <ul class="dropdown-menu mega-menu">
                                                        <li class="yamm-content">
                                                            <div class="row">
                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Женское белье</b></li>
                                                                        <li><a href="Products.aspx?category=293&parents=290">Трусы</a></li>
                                                                        <li><a href="Products.aspx?category=294&parents=290">Бюстгалтеры</a></li>
                                                                        <li><a href="Products.aspx?category=295parents=290">Чулки</a></li>
                                                                        <li><a href="Products.aspx?category=296&parents=290">Пояса для чулок</a></li>
                                                                        <li><a href="Products.aspx?category=297&parents=290">Колготки</a></li>
                                                                        <li><a href="Products.aspx?category=298&parents=290">Комплекты</a></li>
                                                                        <li><a href="Products.aspx?category=299&parents=290">Комбинации</a></li>
                                                                        <li><a href="Products.aspx?category=300&parents=290">Комбидрессы</a></li>
                                                                        <li><a href="Products.aspx?category=301&parents=290">Майки</a></li>
                                                                        <li><a href="Products.aspx?category=302&parents=290">Носки</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Мужское белье</b></li>
                                                                        <li><a href="Products.aspx?category=303&parents=291">Трусы</a></li>
                                                                        <li><a href="Products.aspx?category=304&parents=291">Майки</a></li>
                                                                        <li><a href="Products.aspx?category=305&parents=291">Носки</a></li>
                                                                        <li><a href="Products.aspx?category=306&parents=291">Комплекты</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>&nbsp;Детское белье</b></li>
                                                                        <li><a href="Products.aspx?category=307&parents=292">Майки</a></li>
                                                                        <li><a href="Products.aspx?category=308&parents=292">Боди</a></li>
                                                                        <li><a href="Products.aspx?category=309&parents=292">Трусы</a></li>
                                                                        <li><a href="Products.aspx?category=310&parents=292">Носки</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                                
                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Товары для детей</a>
                                                    <ul class="dropdown-menu mega-menu">
                                                        <li class="yamm-content">
                                                            <div class="row">
                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>
                                                                                &nbsp;Детская комната</b></li>
                                                                        <li><a href="Products.aspx?category=314&parents=311">Пуфы</a></li>
                                                                        <li><a href="Products.aspx?category=315&parents=311">Ковры</a></li>
                                                                        <li><a href="Products.aspx?category=316&parents=311">Пледы</a></li>
                                                                        <li><a href="Products.aspx?category=317&parents=311">Покрывала</a></li>
                                                                        <li><a href="Products.aspx?category=318&parents=311">Подстилки</a></li>
                                                                        <li><a href="Products.aspx?category=319&parents=311">Шторы</a></li>
                                                                        <li><a href="Products.aspx?category=320&parents=311">Занавески</a></li>
                                                                        <li><a href="Products.aspx?category=321&parents=311">Ширмы</a></li>
                                                                        <li><a href="Products.aspx?category=322&parents=311">Стульчики</a></li>
                                                                        <li><a href="Products.aspx?category=323&parents=311">Кресла</a></li>
                                                                        <li><a href="Products.aspx?category=324&parents=311">Обучающие коврики</a></li>
                                                                        <li><a href="Products.aspx?category=325&parents=311">Панно</a></li>
                                                                        <li><a href="Products.aspx?category=326&parents=311">Корзины для игрушек</a></li>
                                                                        <li><a href="Products.aspx?category=327&parents=311">Мелкие корзины для заколок/украшений</a></li>
                                                                        <li><a href="Products.aspx?category=328&parents=311">Органайзеры</a></li>
                                                                        <li><a href="Products.aspx?category=329&parents=311">Подвесные карманы для хранения</a></li>
                                                                        <li><a href="Products.aspx?category=330&parents=311">Сетки для игрушек</a></li>
                                                                        <li><a href="Products.aspx?category=331&parents=311">Лабиринты</a></li>
                                                                        <li><a href="Products.aspx?category=332&parents=311">Вязанные городки</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>
                                                                                &nbsp;Игрушки</b></li>
                                                                        <li><a href="Products.aspx?category=333&parents=312">Игрушки амигуруми</a></li>
                                                                        <li><a href="Products.aspx?category=334&parents=312">Игрушки спицами</a></li>
                                                                        <li><a href="Products.aspx?category=335&parents=312">Плетеные игрушки</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>
                                                                                &nbsp;Для кукол</b></li>
                                                                        <li><a href="Products.aspx?category=336&parents=313">Майки</a></li>
                                                                        <li><a href="Products.aspx?category=337&parents=313">Боди</a></li>
                                                                        <li><a href="Products.aspx?category=338&parents=313">Трусы</a></li>
                                                                        <li><a href="Products.aspx?category=339&parents=313">Носки</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                                
                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Товары для новорожденных</a>
                                                    <ul class="dropdown-menu mega-menu">
                                                        <li class="yamm-content">
                                                            <div class="row">
                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>
                                                                                &nbsp;Одежда для новорожденных</b></li>
                                                                        <li><a href="Products.aspx?category=343&parents=340">Конверты</a></li>
                                                                        <li><a href="Products.aspx?category=344&parents=340">Комбинезоны</a></li>
                                                                        <li><a href="Products.aspx?category=345&parents=340">Пальто</a></li>
                                                                        <li><a href="Products.aspx?category=346&parents=340">Штаны</a></li>
                                                                        <li><a href="Products.aspx?category=347&parents=340">Куртки</a></li>
                                                                        <li><a href="Products.aspx?category=348&parents=340">Майки</a></li>
                                                                        <li><a href="Products.aspx?category=349&parents=340">Футболки</a></li>
                                                                        <li><a href="Products.aspx?category=350&parents=340">Платья</a></li>
                                                                        <li><a href="Products.aspx?category=351&parents=340">Сарафаны</a></li>
                                                                        <li><a href="Products.aspx?category=352&parents=340">Юбки</a></li>
                                                                        <li><a href="Products.aspx?category=353&parents=340">Брюки</a></li>
                                                                        <li><a href="Products.aspx?category=354&parents=340">Штанишки</a></li>
                                                                        <li><a href="Products.aspx?category=355&parents=340">Бриджи</a></li>
                                                                        <li><a href="Products.aspx?category=356&parents=340">Шорты</a></li>
                                                                        <li><a href="Products.aspx?category=357&parents=340">Рубашки</a></li>
                                                                        <li><a href="Products.aspx?category=358&parents=340">Распашонки</a></li>
                                                                        <li><a href="Products.aspx?category=359&parents=340">Ползунки</a></li>
                                                                        <li><a href="Products.aspx?category=360&parents=340">Боди</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>
                                                                                &nbsp;Постельные принадлежности</b></li>
                                                                        <li><a href="Products.aspx?category=361&parents=341">Комплекты постельного белья</a></li>
                                                                        <li><a href="Products.aspx?category=362&parents=341">Бортики</a></li>
                                                                        <li><a href="Products.aspx?category=363&parents=341">Подушки</a></li>
                                                                        <li><a href="Products.aspx?category=364&parents=341">Одеяла</a></li>
                                                                        <li><a href="Products.aspx?category=365&parents=341">Покрывала</a></li>
                                                                        <li><a href="Products.aspx?category=366&parents=341">Пледы</a></li>
                                                                        <li><a href="Products.aspx?category=367&parents=341">Балдахины</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>
                                                                                &nbsp;Прочее</b></li>
                                                                        <li><a href="Products.aspx?category=368&parents=342">Люльки</a></li>
                                                                        <li><a href="Products.aspx?category=369&parents=342">Переноски</a></li>
                                                                        <li><a href="Products.aspx?category=370&parents=342">Корзины</a></li>
                                                                        <li><a href="Products.aspx?category=371&parents=342">Конверты</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                                
                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Свадебная мода</a>
                                                    <ul class="dropdown-menu mega-menu">
                                                        <li class="yamm-content">
                                                            <div class="row">
                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>
                                                                                &nbsp;Для женщин</b></li>
                                                                        <li><a href="Products.aspx?category=377&parents=372">Свадебные платья</a></li>
                                                                        <li><a href="Products.aspx?category=378&parents=372">Свадебные платья-пальто</a></li>
                                                                        <li><a href="Products.aspx?category=379&parents=372">Шубки</a></li>
                                                                        <li><a href="Products.aspx?category=380&parents=372">Болеро</a></li>
                                                                        <li><a href="Products.aspx?category=381&parents=372">Жакеты</a></li>
                                                                        <li><a href="Products.aspx?category=382&parents=372">Горжетки</a></li>
                                                                        <li><a href="Products.aspx?category=383&parents=372">Пелерины</a></li>
                                                                        <li><a href="Products.aspx?category=384&parents=372">Накидки</a></li>
                                                                        <li><a href="Products.aspx?category=385&parents=372">Обувь</a></li>
                                                                        <li><a href="Products.aspx?category=386&parents=372">Чулки</a></li>
                                                                        <li><a href="Products.aspx?category=387&parents=372">Колготки</a></li>
                                                                        <li><a href="Products.aspx?category=388&parents=372">Пояса для чулок</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>
                                                                                &nbsp;Для детей</b></li>
                                                                        <li><a href="Products.aspx?category=396&parents=374">Свадебные платья для девочек</a></li>
                                                                        <li><a href="Products.aspx?category=397&parents=374">Свадебные наряды для мальчиков</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>
                                                                                &nbsp;Для мужчин</b></li>
                                                                        <li><a href="Products.aspx?category=389&parents=373">Свадебные костюмы</a></li>
                                                                        <li><a href="Products.aspx?category=390&parents=373">Рубашки</a></li>
                                                                        <li><a href="Products.aspx?category=391&parents=373">Брюки</a></li>
                                                                        <li><a href="Products.aspx?category=392&parents=373">Галстуки</a></li>
                                                                        <li><a href="Products.aspx?category=393&parents=373">Бабочки</a></li>
                                                                        <li><a href="Products.aspx?category=394&parents=373">Жилеты</a></li>
                                                                        <li><a href="Products.aspx?category=395&parents=373">Пиджаки</a></li>
                                                                        <li>
                                                                            <br />
                                                                        </li>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>
                                                                                &nbsp;Декор</b></li>
                                                                        <li><a href="Products.aspx?category=411&parents=376">Свадебные арки</a></li>
                                                                        <li><a href="Products.aspx?category=412&parents=376">Одежда на бутылки/стаканы/свечи</a></li>
                                                                        <li><a href="Products.aspx?category=413&parents=376">Подушечки для колец</a></li>
                                                                        <li><a href="Products.aspx?category=414&parents=376">Цветочные букеты</a></li>
                                                                        <li><a href="Products.aspx?category=415&parents=376">Ленты</a></li>
                                                                        <li><a href="Products.aspx?category=415&parents=376">Голуби</a></li>
                                                                        <li><a href="Products.aspx?category=417&parents=376">Кольца на машину</a></li>
                                                                    </ul>
                                                                </div>

                                                                <div class="col-xs-12 col-sm-12 col-lg-4">
                                                                    <ul>
                                                                        <li style="border-bottom: 1px solid lightgrey; text-align: left; padding-bottom: 10px;">
                                                                            <b><i class="icon fa fa-ellipsis-v" aria-hidden="true"></i>
                                                                                &nbsp;Аксессуары</b></li>
                                                                        <li><a href="Products.aspx?category=398&parents=375">Зонты</a></li>
                                                                        <li><a href="Products.aspx?category=399&parents=375">Сумочки</a></li>
                                                                        <li><a href="Products.aspx?category=400&parents=375">Клатчи</a></li>
                                                                        <li><a href="Products.aspx?category=401&parents=375">Подвязки для невесты</a></li>
                                                                        <li><a href="Products.aspx?category=402&parents=375">Кружевные воротнички</a></li>
                                                                        <li><a href="Products.aspx?category=403&parents=375">Кружевные манжеты</a></li>
                                                                        <li><a href="Products.aspx?category=404&parents=375">Митенки</a></li>
                                                                        <li><a href="Products.aspx?category=405&parents=375">Перчатки</a></li>
                                                                        <li><a href="Products.aspx?category=406&parents=375">Браслеты</a></li>
                                                                        <li><a href="Products.aspx?category=407&parents=375">Колье</a></li>
                                                                        <li><a href="Products.aspx?category=408&parents=375">Серьги</a></li>
                                                                        <li><a href="Products.aspx?category=409&parents=375">Броши</a></li>
                                                                        <li><a href="Products.aspx?category=410&parents=375">Платочки</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                                
                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Сумки и рюкзаки</a>
                                                </li>
                                                
                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Украшения и аксессуары</a>
                                                </li>
                                                
                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Оренбургский платок </a>
                                                    
                                                </li>
                                                

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Домашняя мода</a>
                                                    
                                                </li>
                                                

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Спортивные товары </a>
                                                    
                                                </li>
                                                

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Обувь</a>
                                                    
                                                </li>
                                                

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Одежда для будущих мам</a>
                                                    
                                                </li>
                                                

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Одежда больших размеров</a>
                                                    
                                                </li>
                                                

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Товары для животных</a>
                                                    
                                                </li>
                                                

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Макраме</a>
                                                    
                                                </li>
                                                

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Герои мультфильмов</a>
                                                    
                                                </li>
                                                

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Подарки к празднику</a>
                                                    
                                                </li>
                                                

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Балаковкие мочалки</a>
                                                    
                                                </li>
                                                

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        Обучение по вязанию</a>
                                                    
                                                </li>
                                                

                                                <li class="dropdown menu-item">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon fa fa-check"></i>
                                                        VIP</a>
                                                    
                                                </li>
                                            </ul>
                                        </nav>
                        </div>
                    </div>
                    <!-- ================================== БОКОВОЕ МЕНЮ : КОНЕЦ ===================================================================== -->

                </div>
                <!-- ============================================== БОКОВАЯ ПАНЕЛЬ : КОНЕЦ =========================================================== -->

                <!-- ============================================== КОНТЕНТ ========================================================================== -->
                <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">

                    <!-- ========================================== СЛАЙДЕР ========================================================================== -->
                    <div id="hero" style="margin-bottom:0px;">
                        <div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
                            <div class="item" style="background-image: url(assets/images/sliders/01.jpg);">
                                <div class="container-fluid">
                                    <div class="caption bg-color vertical-center text-left">
                                        <div class="slider-header fadeInDown-1">&nbsp;</div><br /><br /><br /><br /><br />
                                        <div class="big-text fadeInDown-1">
                                            <span class="highlight">Гипер</span>маркет
                                        </div>
                                        <div class="excerpt fadeInDown-2 hidden-xs">
                                            <span>Вязаных вещей</span>
                                        </div>
                                        <div class="button-holder fadeInDown-3">
                                            <a href="Catalog.aspx" class="btn-lg btn btn-uppercase btn-primary shop-now-button">За покупками</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.item -->
                            <div class="item" style="background-image: url(assets/images/sliders/02.jpg);">
                                <div class="container-fluid">
                                    <div class="caption bg-color vertical-center text-left">
                                        <div class="slider-header fadeInDown-1">&nbsp;</div><br /><br /><br /><br /><br />
                                        <div class="big-text fadeInDown-1">
                                            Товары <span class="highlight">для Вас</span>
                                        </div>
                                        <div class="excerpt fadeInDown-2 hidden-xs">
                                            <span>Пусть в доме и на душе всегда будет тепло и уютно</span>
                                        </div>
                                        <div class="button-holder fadeInDown-3">
                                            <a href="Catalog.aspx" class="btn-lg btn btn-uppercase btn-primary shop-now-button">За покупками</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.item -->
                        </div>
                        <!-- /.owl-carousel -->
                    </div>
                    <!-- ========================================== СЛАЙДЕР : КОНЕЦ ================================================================== -->

                    <!-- ========================================== ИНФОРМАЦИЯ ПОД СЛАЙДЕРОМ ========================================================= -->
                    <div class="info-boxes wow fadeInUp">
                        <div class="info-boxes-inner">
                            <div class="row">
                                <div class="col-md-6 col-sm-4 col-lg-4">
                                    <div class="info-box">
                                        <div class="row">

                                            <div class="col-xs-12">
                                                <h4 class="info-box-heading green">Большой выбор</h4>
                                            </div>
                                        </div>
                                        <h6 class="text" style="color:#fff;">Огромный выбор продукции</h6>
                                    </div>
                                </div>
                                <!-- .col -->

                                <div class="hidden-md col-sm-4 col-lg-4">
                                    <div class="info-box">
                                        <div class="row">

                                            <div class="col-xs-12">
                                                <h4 class="info-box-heading green">Доступность</h4>
                                            </div>
                                        </div>
                                        <h6 class="text" style="color:#fff;">Любой может стать продавцом</h6>
                                    </div>
                                </div>
                                <!-- .col -->

                                <div class="col-md-6 col-sm-4 col-lg-4">
                                    <div class="info-box">
                                        <div class="row">

                                            <div class="col-xs-12">
                                                <h4 class="info-box-heading green">Обучение</h4>
                                            </div>
                                        </div>
                                        <h6 class="text" style="color:#fff;">Мастер классы по вязанию</h6>
                                    </div>
                                </div>
                                <!-- .col -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.info-boxes-inner -->

                    </div>
                    <!-- ========================================== ИНФОРМАЦИЯ ПОД СЛАЙДЕРОМ : КОНЕЦ ================================================= -->
                    
                    <!-- ============================================== НОВЫЕ ТОВАРЫ ================================================================= -->
                    <div id="product-tabs-slider" class="scroll-tabs outer-top-vs wow fadeInUp">
                        <div class="more-info-tab clearfix ">
                            <h3 class="new-product-title pull-left">Новые товары</h3>
                            <%--<ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
                                <li class="active"><a data-transition-type="backSlide" href="#all" data-toggle="tab">Все</a></li>
                                <li><a data-transition-type="backSlide" href="#smartphone" data-toggle="tab">Одежда</a></li>
                                <li><a data-transition-type="backSlide" href="#laptop" data-toggle="tab">Обувь</a></li>
                                <li><a data-transition-type="backSlide" href="#apple" data-toggle="tab">Остальное</a></li>
                            </ul>--%>
                        </div>
                        <div class="tab-content outer-top-xs">
                            <div class="tab-pane in active" id="all">
                                <div class="product-slider">
                                    <div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
                                        <asp:Repeater ID="Repeater_Last_Goods" runat="server" OnItemCommand="Repeater_Last_Goods_ItemCommand">
                                            <HeaderTemplate></HeaderTemplate>
                                            <ItemTemplate>
                                                <div class="item item-carousel">
                                                    <div class="products">
                                                        <div class="product">
                                                            <div class="product-image">
                                                                
                                                                <div class="image wrapper3 exmp3" >
                                                                    <a href="Product_Details.aspx?id_goods=<%#Eval("ID_Goods") %>">
                                                                        <img src="/assets/images/products/<%#Eval("Foto_Goods") %>" alt="">
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="product-info text-left">
                                                                <asp:HiddenField ID="HF_ID_Goods" runat="server" Value='<%#Eval("ID_Goods")%>' />
                                                                <h3 class="name"><a href="#"><%#Eval("Name_Goods") %></a></h3>
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
                                                                            <%--<button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="В_корзину">
                                                                                <i class="fa fa-shopping-cart"></i>
                                                                            </button>--%>
                                                                            <asp:ImageButton ID="ImageButton_Default_To_Cart" ImageUrl="~/assets/images/icons/cart.png" data-toggle="tooltip" CssClass="btn btn-primary icon" CommandName="To_Cart" runat="server" ToolTip="В_корзину" />
                                                                            <%--<button class="btn btn-primary cart-btn" type="button">В корзину</button>--%>
                                                                        </li>
                                                                        <li class="lnk wishlist">
                                                                            <a data-toggle="tooltip" class="add-to-cart" href="#" title="Нравится">
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
                        </div>
                    </div>
                    <!-- ============================================== НОВЫЕ ТОВАРЫ : КОНЕЦ ========================================================= -->
                                      
                    <%--<!-- ============================================== РЕКЛАМА ============================================== -->
                    <section class="section featured-product wow fadeInUp">
                        <h3 class="section-title">Реклама</h3>
                        <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">

                            <div class="item item-carousel">
                                <div class="products">
                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="detail.html">
                                                    <img src="assets/images/products/p5.jpg" alt=""></a>
                                            </div>
                                            <!-- /.image -->

                                            <div class="tag hot"><span>hot</span></div>
                                        </div>
                                        <!-- /.product-image -->


                                        <div class="product-info text-left">
                                            <h3 class="name"><a href="detail.html">Товар</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="description"></div>

                                            <div class="product-price">
                                                <span class="price">$450.99				</span>
                                                <span class="price-before-discount">$ 800</span>

                                            </div>
                                            <!-- /.product-price -->

                                        </div>
                                        <!-- /.product-info -->
                                        <div class="cart clearfix animate-effect">
                                            <div class="action">
                                                <ul class="list-unstyled">
                                                    <li class="add-cart-button btn-group">
                                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button" title="Add Cart">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </button>
                                                        <button class="btn btn-primary cart-btn" type="button">В корзину</button>

                                                    </li>

                                                    <li class="lnk wishlist">
                                                        <a class="add-to-cart" href="detail.html" title="Wishlist">
                                                            <i class="icon fa fa-heart"></i>
                                                        </a>
                                                    </li>

                                                    <li class="lnk">
                                                        <a class="add-to-cart" href="detail.html" title="Compare">
                                                            <i class="fa fa-signal" aria-hidden="true"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- /.action -->
                                        </div>
                                        <!-- /.cart -->
                                    </div>
                                </div>
                                
                            </div>
                            
                            <div class="item item-carousel">
                                <div class="products">

                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="detail.html">
                                                    <img src="assets/images/products/p6.jpg" alt=""></a>
                                            </div>
                                            <!-- /.image -->

                                            <div class="tag new"><span>new</span></div>
                                        </div>
                                        <!-- /.product-image -->


                                        <div class="product-info text-left">
                                            <h3 class="name"><a href="detail.html">Товар</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="description"></div>

                                            <div class="product-price">
                                                <span class="price">$450.99				</span>
                                                <span class="price-before-discount">$ 800</span>

                                            </div>
                                            <!-- /.product-price -->

                                        </div>
                                        <!-- /.product-info -->
                                        <div class="cart clearfix animate-effect">
                                            <div class="action">
                                                <ul class="list-unstyled">
                                                    <li class="add-cart-button btn-group">
                                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button" title="Add Cart">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </button>
                                                        <button class="btn btn-primary cart-btn" type="button">В корзину</button>

                                                    </li>

                                                    <li class="lnk wishlist">
                                                        <a class="add-to-cart" href="detail.html" title="Wishlist">
                                                            <i class="icon fa fa-heart"></i>
                                                        </a>
                                                    </li>

                                                    <li class="lnk">
                                                        <a class="add-to-cart" href="detail.html" title="Compare">
                                                            <i class="fa fa-signal" aria-hidden="true"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- /.action -->
                                        </div>
                                        <!-- /.cart -->
                                    </div>
                                    <!-- /.product -->

                                </div>
                                <!-- /.products -->
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                                <div class="products">

                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="detail.html">
                                                    <img src="assets/images/blank.gif" data-echo="assets/images/products/p7.jpg" alt=""></a>
                                            </div>
                                            <!-- /.image -->

                                            <div class="tag sale"><span>sale</span></div>
                                        </div>
                                        <!-- /.product-image -->


                                        <div class="product-info text-left">
                                            <h3 class="name"><a href="detail.html">Товар</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="description"></div>

                                            <div class="product-price">
                                                <span class="price">$450.99				</span>
                                                <span class="price-before-discount">$ 800</span>

                                            </div>
                                            <!-- /.product-price -->

                                        </div>
                                        <!-- /.product-info -->
                                        <div class="cart clearfix animate-effect">
                                            <div class="action">
                                                <ul class="list-unstyled">
                                                    <li class="add-cart-button btn-group">
                                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button" title="Add Cart">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </button>
                                                        <button class="btn btn-primary cart-btn" type="button">В корзину</button>

                                                    </li>

                                                    <li class="lnk wishlist">
                                                        <a class="add-to-cart" href="detail.html" title="Wishlist">
                                                            <i class="icon fa fa-heart"></i>
                                                        </a>
                                                    </li>

                                                    <li class="lnk">
                                                        <a class="add-to-cart" href="detail.html" title="Compare">
                                                            <i class="fa fa-signal" aria-hidden="true"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- /.action -->
                                        </div>
                                        <!-- /.cart -->
                                    </div>
                                    <!-- /.product -->

                                </div>
                                <!-- /.products -->
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                                <div class="products">

                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="detail.html">
                                                    <img src="assets/images/products/p8.jpg" alt=""></a>
                                            </div>
                                            <!-- /.image -->

                                            <div class="tag hot"><span>hot</span></div>
                                        </div>
                                        <!-- /.product-image -->


                                        <div class="product-info text-left">
                                            <h3 class="name"><a href="detail.html">Товар</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="description"></div>

                                            <div class="product-price">
                                                <span class="price">$450.99				</span>
                                                <span class="price-before-discount">$ 800</span>

                                            </div>
                                            <!-- /.product-price -->

                                        </div>
                                        <!-- /.product-info -->
                                        <div class="cart clearfix animate-effect">
                                            <div class="action">
                                                <ul class="list-unstyled">
                                                    <li class="add-cart-button btn-group">
                                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button" title="Add Cart">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </button>
                                                        <button class="btn btn-primary cart-btn" type="button">В корзину</button>

                                                    </li>

                                                    <li class="lnk wishlist">
                                                        <a class="add-to-cart" href="detail.html" title="Wishlist">
                                                            <i class="icon fa fa-heart"></i>
                                                        </a>
                                                    </li>

                                                    <li class="lnk">
                                                        <a class="add-to-cart" href="detail.html" title="Compare">
                                                            <i class="fa fa-signal" aria-hidden="true"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- /.action -->
                                        </div>
                                        <!-- /.cart -->
                                    </div>
                                    <!-- /.product -->

                                </div>
                                <!-- /.products -->
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                                <div class="products">

                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="detail.html">
                                                    <img src="assets/images/products/p9.jpg" alt=""></a>
                                            </div>
                                            <!-- /.image -->

                                            <div class="tag new"><span>new</span></div>
                                        </div>
                                        <!-- /.product-image -->


                                        <div class="product-info text-left">
                                            <h3 class="name"><a href="detail.html">Товар</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="description"></div>

                                            <div class="product-price">
                                                <span class="price">$450.99				</span>
                                                <span class="price-before-discount">$ 800</span>

                                            </div>
                                            <!-- /.product-price -->

                                        </div>
                                        <!-- /.product-info -->
                                        <div class="cart clearfix animate-effect">
                                            <div class="action">
                                                <ul class="list-unstyled">
                                                    <li class="add-cart-button btn-group">
                                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button" title="Add Cart">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </button>
                                                        <button class="btn btn-primary cart-btn" type="button">В корзину</button>

                                                    </li>

                                                    <li class="lnk wishlist">
                                                        <a class="add-to-cart" href="detail.html" title="Wishlist">
                                                            <i class="icon fa fa-heart"></i>
                                                        </a>
                                                    </li>

                                                    <li class="lnk">
                                                        <a class="add-to-cart" href="detail.html" title="Compare">
                                                            <i class="fa fa-signal" aria-hidden="true"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- /.action -->
                                        </div>
                                        <!-- /.cart -->
                                    </div>
                                    <!-- /.product -->

                                </div>
                                <!-- /.products -->
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                                <div class="products">

                                    <div class="product">
                                        <div class="product-image">
                                            <div class="image">
                                                <a href="detail.html">
                                                    <img src="assets/images/products/p10.jpg" alt=""></a>
                                            </div>
                                            <!-- /.image -->

                                            <div class="tag sale"><span>sale</span></div>
                                        </div>
                                        <!-- /.product-image -->


                                        <div class="product-info text-left">
                                            <h3 class="name"><a href="detail.html">Товар</a></h3>
                                            <div class="rating rateit-small"></div>
                                            <div class="description"></div>

                                            <div class="product-price">
                                                <span class="price">$450.99				</span>
                                                <span class="price-before-discount">$ 800</span>

                                            </div>
                                            <!-- /.product-price -->

                                        </div>
                                        <!-- /.product-info -->
                                        <div class="cart clearfix animate-effect">
                                            <div class="action">
                                                <ul class="list-unstyled">
                                                    <li class="add-cart-button btn-group">
                                                        <button class="btn btn-primary icon" data-toggle="dropdown" type="button" title="Add Cart">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </button>
                                                        <button class="btn btn-primary cart-btn" type="button">В корзину</button>

                                                    </li>

                                                    <li class="lnk wishlist">
                                                        <a class="add-to-cart" href="detail.html" title="Wishlist">
                                                            <i class="icon fa fa-heart"></i>
                                                        </a>
                                                    </li>

                                                    <li class="lnk">
                                                        <a class="add-to-cart" href="detail.html" title="Compare">
                                                            <i class="fa fa-signal" aria-hidden="true"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- /.action -->
                                        </div>
                                        <!-- /.cart -->
                                    </div>
                                    <!-- /.product -->

                                </div>
                                <!-- /.products -->
                            </div>
                            <!-- /.item -->
                        </div>
                        <!-- /.home-owl-carousel -->
                    </section>
                    <!-- ============================================== РЕКЛАМА : КОНЕЦ ============================================== -->
                    --%>

                    <!-- ============================================== БЛОГ ============================================== -->
                    <section class="section latest-blog outer-bottom-vs wow fadeInUp">
                        <h3 class="section-title">Новости блога</h3>
                        <div class="blog-slider-container outer-top-xs">
                            <div class="owl-carousel blog-slider custom-carousel">

                                <div class="item">
                                    <div class="blog-post">
                                        <div class="blog-post-image">
                                            <div class="image wrapper4 exmp3">
                                                <a href="Blog.aspx">
                                                    <img src="assets/images/blog-post/blog_big_02.jpg" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="blog-post-info text-left">
                                            <h3 class="name"><a href="Blog.aspx">Вязаное сумасшествие Агаты Олек</a></h3>
                                            <span class="info">Нина Вязникова &nbsp;|&nbsp; 18.06.2019 </span>
                                            <p class="text">Многие женщины увлекаются рукоделием, но, кажется, вязание крючком стало для Агаты Олек (Agata Olek) нечто большим, чем...</p>
                                            <a href="Blog.aspx" class="lnk btn btn-primary">Читать</a>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="item">
                                    <div class="blog-post">
                                        <div class="blog-post-image">
                                            <div class="image wrapper4 exmp3">
                                                <a href="Blog.aspx">
                                                    <img src="assets/images/blog-post/blog_big_03.jpg" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="blog-post-info text-left">
                                            <h3 class="name"><a href="Blog.aspx">Юбиами – вяжем руками</a></h3>
                                            <span class="info">Нина Вязникова &nbsp;|&nbsp; 17.06.2019 </span>
                                            <p class="text">Вязание для не посвященных – дело трудное, требующее постоянно совершенствования. Те, кто умеет вязать подтвердят...</p>
                                            <a href="Blog.aspx" class="lnk btn btn-primary">Читать</a>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="item">
                                    <div class="blog-post">
                                        <div class="blog-post-image">
                                            <div class="image wrapper4 exmp3">
                                                <a href="Blog.aspx">
                                                    <img src="assets/images/blog-post/blog_big_04.jpg" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="blog-post-info text-left">
                                            <h3 class="name"><a href="Blog.aspx">Арт-объекты Джоаны Васконселос</a></h3>
                                            <span class="info">Нина Вязникова &nbsp;|&nbsp; 16.06.2019 </span>
                                            <p class="text">Если у человека есть хобби, которое ему по душе, это, бесспорно, хороший знак. И хорошим он остается вплоть до тех пор...</p>
                                            <a href="Blog.aspx" class="lnk btn btn-primary">Читать</a>
                                        </div>
                                    </div>
                                </div>
                                
                                <%--                                <div class="item">
                                    <div class="blog-post">
                                        <div class="blog-post-image">
                                            <div class="image">
                                                <a href="blog.html">
                                                    <img src="assets/images/blog-post/post2.jpg" alt=""></a>
                                            </div>
                                        </div>
                                        <!-- /.blog-post-image -->


                                        <div class="blog-post-info text-left">
                                            <h3 class="name"><a href="#">Четветая новость блога по вязанию</a></h3>
                                            <span class="info">Блогер 4 &nbsp;|&nbsp; 28.04.2019 </span>
                                            <p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
                                            <a href="#" class="lnk btn btn-primary">Читать</a>
                                        </div>
                                        <!-- /.blog-post-info -->


                                    </div>
                                    <!-- /.blog-post -->
                                </div>
                                <!-- /.item -->


                                <div class="item">
                                    <div class="blog-post">
                                        <div class="blog-post-image">
                                            <div class="image">
                                                <a href="blog.html">
                                                    <img src="assets/images/blog-post/post1.jpg" alt=""></a>
                                            </div>
                                        </div>
                                        <!-- /.blog-post-image -->


                                        <div class="blog-post-info text-left">
                                            <h3 class="name"><a href="#">Пятая новость блога по вязанию</a></h3>
                                            <span class="info">Блогер 5 &nbsp;|&nbsp; 26.04.2019 </span>
                                            <p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
                                            <a href="#" class="lnk btn btn-primary">Читать</a>
                                        </div>
                                        <!-- /.blog-post-info -->


                                    </div>
                                    <!-- /.blog-post -->
                                </div>
                                <!-- /.item -->--%>


                            </div>
                            <!-- /.owl-carousel -->
                        </div>
                        <!-- /.blog-slider-container -->
                    </section>
                    <!-- ============================================== БЛОГ : КОНЕЦ ============================================== -->

                </div>
                <!-- ============================================== КОНТЕНТ : КОНЕЦ ================================================================== -->
            </div>
            
        </div>
    </div>
 
</asp:Content>
