<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="VyazaninoCOM.Catalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="/Default.aspx">Главная</a></li>
                    <li class='active'>Каталог</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="body-content">
        <div class="container">
            <div class="checkout-box faq-page" style="padding:20px;">
                <div class="row">
                    <h2 class="heading-title" style="margin: 0px 15px 15px 15px;">КАТАЛОГ ТОВАРОВ</h2>

                    <style type="text/css">
                        .checkout-box .checkout-steps .panel .panel-heading .unicase-checkout-title a span {
                            background-color: #333333;  /*fdd922*/
                            color: #fff !important;  /*0f6cb2*/
                            font-weight: normal;
                            font-size: 20px;
                            margin: 0px 15px 0px 0px;
                            padding: 5px 0px 5px 13px;
                            text-align: left;
                            border-top-left-radius: 3px;
                            border-bottom-left-radius: 3px;
                        }

                        .checkout-box .checkout-steps .panel .panel-heading .unicase-checkout-title a:not(.collapsed) span {
                            background-color: #ff0000;
                            color: #ffffff !important;
                            font-weight: normal;
                            font-size: 20px;
                            margin: 0px 15px 0px 0px;
                            padding: 5px 0px 5px 13px;
                            text-align: left;
                            border-top-left-radius: 3px;
                            border-bottom-left-radius: 3px;
                        }

                        .checkout-box .checkout-steps .panel .panel-collapse .panel-body .unicase-checkout-title a span {
                            background-color: #333333;
                            color: #fff !important;
                            font-weight: normal;
                            font-size: 20px;
                            margin: 0px 15px 0px 0px;
                            padding: 5px 15px 5px 13px;
                            text-align: left;
                            border-top-left-radius: 3px;
                            border-bottom-left-radius: 3px;
                        }

                        .checkout-box .checkout-steps .panel .panel-collapse .panel-body .unicase-checkout-title a:not(.collapsed) span {
                            background-color: #ff0000;
                            color: #ffffff !important;
                            font-weight: normal;
                            font-size: 20px;
                            margin: 0px 15px 0px 0px;
                            padding: 5px 15px 5px 13px;
                            text-align: left;
                            border-top-left-radius: 3px;
                            border-bottom-left-radius: 3px;
                        }
                    </style>

                    <div class="col-md-4">
                        <div class="panel-group checkout-steps" id="accordion1">

                            <!-- ########### 01 ДОМАШНИЙ УЮТ ###################### -->
                            <div class="panel panel-default checkout-step-01">
                                <div class="panel-heading" style="">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion1" href="#collapseOne">
                                            <span style="width: 45px;"><i class="icon fa fa-check" aria-hidden="true"></i></span>Домашний уют
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="panel-group checkout-steps" id="accordion11">

                                            <div class="panel panel-default checkout-step-1_1">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion11" href="#collapse1_1">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Предметы интерьера
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse1_1" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=29&parents=26">Ковры</a></li>
                                                            <li>- <a href="Products.aspx?category=30&parents=26">Придверные коврики</a></li>
                                                            <li>- <a href="Products.aspx?category=31&parents=26">Сидушки на стулья/табуреты</a></li>
                                                            <li>- <a href="Products.aspx?category=32&parents=26">Пледы</a></li>
                                                            <li>- <a href="Products.aspx?category=33&parents=26">Накидки</a></li>
                                                            <li>- <a href="Products.aspx?category=34&parents=26">Шторы</a></li>
                                                            <li>- <a href="Products.aspx?category=35&parents=26">Занавески</a></li>
                                                            <li>- <a href="Products.aspx?category=36&parents=26">Пуфы</a></li>
                                                            <li>- <a href="Products.aspx?category=37&parents=26">Подушки</a></li>
                                                            <li>- <a href="Products.aspx?category=38&parents=26">Прихватки для кухни</a></li>
                                                            <li>- <a href="Products.aspx?category=39&parents=26">Кухонные подставки</a></li>
                                                            <li>- <a href="Products.aspx?category=40&parents=26">Ёмкости для хранения</a></li>
                                                            <li>- <a href="Products.aspx?category=41&parents=26">Чехлы на мебель</a></li>
                                                            <li>- <a href="Products.aspx?category=42&parents=26">Интерьерные корзины</a></li>
                                                            <li>- <a href="Products.aspx?category=43&parents=26">Скатерти</a></li>
                                                            <li>- <a href="Products.aspx?category=44&parents=26">Салфетки</a></li>
                                                            <li>- <a href="Products.aspx?category=45&parents=26">Картины</a></li>
                                                            <li>- <a href="Products.aspx?category=46&parents=26">Ширмы</a></li>
                                                            <li>- <a href="Products.aspx?category=47&parents=26">Панно</a></li>
                                                            <li>- <a href="Products.aspx?category=48&parents=26">Напольные вазы</a></li>
                                                            <li>- <a href="Products.aspx?category=49&parents=26">Настольные вазы</a></li>
                                                            <li>- <a href="Products.aspx?category=50&parents=26">Подвесные карманы для хранения</a></li>
                                                            <li>- <a href="Products.aspx?category=51&parents=26">Органайзеры</a></li>
                                                            <li>- <a href="Products.aspx?category=52&parents=26">Вязанные цветы</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-1_2">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion11" href="#collapse1_2">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Электричество
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse1_2" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=53&parents=27">Люстры</a></li>
                                                            <li>- <a href="Products.aspx?category=54&parents=27">Торшеры</a></li>
                                                            <li>- <a href="Products.aspx?category=55&parents=27">Напольные лампы</a></li>
                                                            <li>- <a href="Products.aspx?category=56&parents=27">Настольные лампы</a></li>
                                                            <li>- <a href="Products.aspx?category=57&parents=27">Светильники</a></li>
                                                            <li>- <a href="Products.aspx?category=58&parents=27">Бра</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-1_3">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion11" href="#collapse1_3">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Товары для дачи
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse1_3" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=59&parents=28">Гамаки</a></li>
                                                            <li>- <a href="Products.aspx?category=60&parents=28">Лежаки</a></li>
                                                            <li>- <a href="Products.aspx?category=61&parents=28">Качели</a></li>
                                                            <li>- <a href="Products.aspx?category=62&parents=28">Кресла подвесные</a></li>
                                                            <li>- <a href="Products.aspx?category=63&parents=28">Кресла напольные</a></li>
                                                            <li>- <a href="Products.aspx?category=64&parents=28">Банные принадлежности</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### 01 ДОМАШНИЙ УЮТ: КОНЕЦ ############### -->

                            <!-- ########### 02 ОДЕЖДА ДЛЯ ЖЕНЩИН ################# -->
                            <div class="panel panel-default checkout-step-02">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion1" href="#collapseTwo">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Одежда для женщин	
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="panel-group checkout-steps" id="accordion12">

                                            <div class="panel panel-default checkout-step-2_1">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion12" href="#collapse2_1">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Верхняя одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse2_1" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=70&parents=65">Пальто</a></li>
                                                            <li>- <a href="Products.aspx?category=71&parents=65">Пончо</a></li>
                                                            <li>- <a href="Products.aspx?category=72&parents=65">Плащи</a></li>
                                                            <li>- <a href="Products.aspx?category=73&parents=65">Куртки</a></li>
                                                            <li>- <a href="Products.aspx?category=74&parents=65">Теплые жакеты</a></li>
                                                            <li>- <a href="Products.aspx?category=75&parents=65">Шубы</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-2_2">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion12" href="#collapse2_2">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Повседневная одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse2_2" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=76&parents=66">Платья</a></li>
                                                            <li>- <a href="Products.aspx?category=77&parents=66">Сарафаны</a></li>
                                                            <li>- <a href="Products.aspx?category=78&parents=66">Юбки</a></li>
                                                            <li>- <a href="Products.aspx?category=79&parents=66">Футболки</a></li>
                                                            <li>- <a href="Products.aspx?category=80&parents=66">Топы</a></li>
                                                            <li>- <a href="Products.aspx?category=81&parents=66">Блузки</a></li>
                                                            <li>- <a href="Products.aspx?category=82&parents=66">Джемперы</a></li>
                                                            <li>- <a href="Products.aspx?category=83&parents=66">Кардиганы</a></li>
                                                            <li>- <a href="Products.aspx?category=84&parents=66">Лонгсливы</a></li>
                                                            <li>- <a href="Products.aspx?category=85&parents=66">Пиджаки</a></li>
                                                            <li>- <a href="Products.aspx?category=86&parents=66">Жакеты</a></li>
                                                            <li>- <a href="Products.aspx?category=87&parents=66">Одежда для дома</a></li>
                                                            <li>- <a href="Products.aspx?category=88&parents=66">Туники</a></li>
                                                            <li>- <a href="Products.aspx?category=89&parents=66">Комбинезоны</a></li>
                                                            <li>- <a href="Products.aspx?category=90&parents=66">Костюмы</a></li>
                                                            <li>- <a href="Products.aspx?category=91&parents=66">Жилеты</a></li>
                                                            <li>- <a href="Products.aspx?category=92&parents=66">Шорты</a></li>
                                                            <li>- <a href="Products.aspx?category=93&parents=66">Бриджы</a></li>
                                                            <li>- <a href="Products.aspx?category=94&parents=66">Толстовки</a></li>
                                                            <li>- <a href="Products.aspx?category=95&parents=66">Пончо</a></li>
                                                            <li>- <a href="Products.aspx?category=96&parents=66">Свитеры</a></li>
                                                            <li>- <a href="Products.aspx?category=97&parents=66">Кофты</a></li>
                                                            <li>- <a href="Products.aspx?category=98&parents=66">Балахоны</a></li>
                                                            <li>- <a href="Products.aspx?category=99&parents=66">Накидки</a></li>
                                                            <li>- <a href="Products.aspx?category=100&parents=66">Шали</a></li>
                                                            <li>- <a href="Products.aspx?category=101&parents=66">Костюмы брючные</a></li>
                                                            <li>- <a href="Products.aspx?category=102&parents=66">Костюмы с юбкой</a></li>
                                                            <li>- <a href="Products.aspx?category=103&parents=66">Костюмы тройки</a></li>
                                                            <li>- <a href="Products.aspx?category=104&parents=66">Водолазки</a></li>
                                                            <li>- <a href="Products.aspx?category=105&parents=66">Кафтаны</a></li>
                                                            <li>- <a href="Products.aspx?category=106&parents=66">Джемперы</a></li>
                                                            <li>- <a href="Products.aspx?category=107&parents=66">Жакеты</a></li>
                                                            <li>- <a href="Products.aspx?category=108&parents=66">Безрукавки</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-2_3">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion12" href="#collapse2_3">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Летняя одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse2_3" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=109&parents=67">Платья</a></li>
                                                            <li>- <a href="Products.aspx?category=110&parents=67">Туники</a></li>
                                                            <li>- <a href="Products.aspx?category=111&parents=67">Брюки</a></li>
                                                            <li>- <a href="Products.aspx?category=112&parents=67">Шорты</a></li>
                                                            <li>- <a href="Products.aspx?category=113&parents=67">Бриджи</a></li>
                                                            <li>- <a href="Products.aspx?category=114&parents=67">Топы</a></li>
                                                            <li>- <a href="Products.aspx?category=115&parents=67">Палантины</a></li>
                                                            <li>- <a href="Products.aspx?category=116&parents=67">Болеро</a></li>
                                                            <li>- <a href="Products.aspx?category=117&parents=67">Юбки</a></li>
                                                            <li>- <a href="Products.aspx?category=118&parents=67">Блузки</a></li>
                                                            <li>- <a href="Products.aspx?category=119&parents=67">Купальники</a></li>
                                                            <li>- <a href="Products.aspx?category=120&parents=67">Парео</a></li>
                                                            <li>- <a href="Products.aspx?category=121&parents=67">Сарафаны</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-2_4">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion12" href="#collapse2_4">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Вечерняя одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse2_4" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=122&parents=68">Вечерние платья</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-2_5">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion12" href="#collapse2_5">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Аксессуары
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse2_5" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=123&parents=69">Шапки</a></li>
                                                            <li>- <a href="Products.aspx?category=124&parents=69">Шляпы</a></li>
                                                            <li>- <a href="Products.aspx?category=125&parents=69">Панамы</a></li>
                                                            <li>- <a href="Products.aspx?category=126&parents=69">Шарфы</a></li>
                                                            <li>- <a href="Products.aspx?category=127&parents=69">Перчатки</a></li>
                                                            <li>- <a href="Products.aspx?category=128&parents=69">Варежки</a></li>
                                                            <li>- <a href="Products.aspx?category=129&parents=69">Скедки</a></li>
                                                            <li>- <a href="Products.aspx?category=130&parents=69">Муфты</a></li>
                                                            <li>- <a href="Products.aspx?category=131&parents=69">Снуды</a></li>
                                                            <li>- <a href="Products.aspx?category=132&parents=69">Капюшоны</a></li>
                                                            <li>- <a href="Products.aspx?category=133&parents=69">Хомуты</a></li>
                                                            <li>- <a href="Products.aspx?category=134&parents=69">Наушники</a></li>
                                                            <li>- <a href="Products.aspx?category=135&parents=69">Повязки на голову</a></li>
                                                            <li>- <a href="Products.aspx?category=136&parents=69">Болеро</a></li>
                                                            <li>- <a href="Products.aspx?category=137&parents=69">Горжетки</a></li>
                                                            <li>- <a href="Products.aspx?category=138&parents=69">Пляжные коврики</a></li>
                                                            <li>- <a href="Products.aspx?category=139&parents=69">Пляжные сумки</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### 02 ОДЕЖДА ДЛЯ ЖЕНЩИН: КОНЕЦ ########## -->

                            <!-- ########### 03 ОДЕЖДА ДЛЯ МУЖЧИН ################# -->
                            <div class="panel panel-default checkout-step-03">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion1" href="#collapseThree">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Одежда для мужчин
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="panel-group checkout-steps" id="accordion13">

                                            <div class="panel panel-default checkout-step-3_1">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion13" href="#collapse3_1">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Верхняя одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse3_1" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=145&parents=140">Куртки</a></li>
                                                            <li>- <a href="Products.aspx?category=146&parents=140">Плащи</a></li>
                                                            <li>- <a href="Products.aspx?category=147&parents=140">Пальто</a></li>
                                                            <li>- <a href="Products.aspx?category=148&parents=140">Полупальто</a></li>
                                                            <li>- <a href="Products.aspx?category=149&parents=140">Теплые жакеты</a></li>
                                                            <li>- <a href="Products.aspx?category=150&parents=140">Шубы</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-3_2">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion13" href="#collapse3_2">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Повседневная одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse3_2" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=151&parents=141">Костюмы</a></li>
                                                            <li>- <a href="Products.aspx?category=152&parents=141">Брюки</a></li>
                                                            <li>- <a href="Products.aspx?category=153&parents=141">Лонгсливы</a></li>
                                                            <li>- <a href="Products.aspx?category=154&parents=141">Безрукавки</a></li>
                                                            <li>- <a href="Products.aspx?category=155&parents=141">Толстовки</a></li>
                                                            <li>- <a href="Products.aspx?category=156&parents=141">Пиджаки</a></li>
                                                            <li>- <a href="Products.aspx?category=157&parents=141">Пуловеры</a></li>
                                                            <li>- <a href="Products.aspx?category=158&parents=141">Жилеты</a></li>
                                                            <li>- <a href="Products.aspx?category=159&parents=141">Джемперы</a></li>
                                                            <li>- <a href="Products.aspx?category=160&parents=141">Жакеты</a></li>
                                                            <li>- <a href="Products.aspx?category=161&parents=141">Френчи</a></li>
                                                            <li>- <a href="Products.aspx?category=162&parents=141">Рубашки</a></li>
                                                            <li>- <a href="Products.aspx?category=163&parents=141">Водолазки</a></li>
                                                            <li>- <a href="Products.aspx?category=164&parents=141">Кафтаны</a></li>
                                                            <li>- <a href="Products.aspx?category=165&parents=141">Свитеры</a></li>
                                                            <li>- <a href="Products.aspx?category=166&parents=141">Кофты</a></li>
                                                            <li>- <a href="Products.aspx?category=167&parents=141">Балахоны</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-3_3">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion13" href="#collapse3_3">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Летняя одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse3_3" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=168&parents=142">Майки</a></li>
                                                            <li>- <a href="Products.aspx?category=169&parents=142">Шорты</a></li>
                                                            <li>- <a href="Products.aspx?category=170&parents=142">Брюки</a></li>
                                                            <li>- <a href="Products.aspx?category=171&parents=142">Бриджи</a></li>
                                                            <li>- <a href="Products.aspx?category=172&parents=142">Пуловеры</a></li>
                                                            <li>- <a href="Products.aspx?category=173&parents=142">Купальные плавки</a></li>
                                                            <li>- <a href="Products.aspx?category=174&parents=142">Джемперы с коротким рукавом</a></li>
                                                            <li>- <a href="Products.aspx?category=175&parents=142">Поло</a></li>
                                                            <li>- <a href="Products.aspx?category=176&parents=67">Футболки</a></li>
                                                            <li>- <a href="Products.aspx?category=177&parents=67">Рубашки</a></li>
                                                            <li>- <a href="Products.aspx?category=178&parents=67">Кольчуги</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-3_4">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion13" href="#collapse3_4">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Вечерняя одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse3_4" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=179&parents=143">Рубашки</a></li>
                                                            <li>- <a href="Products.aspx?category=180&parents=143">Костюмы</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-3_5">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion13" href="#collapse3_5">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Аксессуары
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse3_5" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=181&parents=144">Шапки</a></li>
                                                            <li>- <a href="Products.aspx?category=182&parents=144">Шляпы</a></li>
                                                            <li>- <a href="Products.aspx?category=183&parents=144">Кепки</a></li>
                                                            <li>- <a href="Products.aspx?category=184&parents=144">Панамы</a></li>
                                                            <li>- <a href="Products.aspx?category=185&parents=144">Шарфы</a></li>
                                                            <li>- <a href="Products.aspx?category=186&parents=144">Перчатки</a></li>
                                                            <li>- <a href="Products.aspx?category=187&parents=144">Варежки</a></li>
                                                            <li>- <a href="Products.aspx?category=188&parents=144">Муфты</a></li>
                                                            <li>- <a href="Products.aspx?category=189&parents=144">Снуды</a></li>
                                                            <li>- <a href="Products.aspx?category=190&parents=144">Капюшоны</a></li>
                                                            <li>- <a href="Products.aspx?category=191&parents=144">Хомуты</a></li>
                                                            <li>- <a href="Products.aspx?category=192&parents=144">Пляжные сумки</a></li>
                                                            <li>- <a href="Products.aspx?category=193&parents=144">Пляжные коврики</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### 03 ОДЕЖДА ДЛЯ МУЖЧИН: КОНЕЦ ########## -->

                            <!-- ########### 04 ОДЕЖДА ДЛЯ ДЕВОЧЕК ################ -->
                            <div class="panel panel-default checkout-step-04">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion1" href="#collapseFour">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Одежда для девочек
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFour" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="panel-group checkout-steps" id="accordion14">

                                            <div class="panel panel-default checkout-step-4_1">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion14" href="#collapse4_1">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Верхняя одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse4_1" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=199&parents=194">Пальто</a></li>
                                                            <li>- <a href="Products.aspx?category=200&parents=194">Полупальто</a></li>
                                                            <li>- <a href="Products.aspx?category=201&parents=194">Платья-пальто</a></li>
                                                            <li>- <a href="Products.aspx?category=202&parents=194">Куртки</a></li>
                                                            <li>- <a href="Products.aspx?category=203&parents=194">Плащи</a></li>
                                                            <li>- <a href="Products.aspx?category=204&parents=194">Жакеты</a></li>
                                                            <li>- <a href="Products.aspx?category=205&parents=194">Шубы</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-4_2">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion14" href="#collapse4_2">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Повседневная одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse4_2" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=206&parents=195">Свитеры</a></li>
                                                            <li>- <a href="Products.aspx?category=207&parents=195">Кофточки</a></li>
                                                            <li>- <a href="Products.aspx?category=208&parents=195">Костюмы</a></li>
                                                            <li>- <a href="Products.aspx?category=209&parents=195">Шорты</a></li>
                                                            <li>- <a href="Products.aspx?category=210&parents=195">Брюки</a></li>
                                                            <li>- <a href="Products.aspx?category=211&parents=195">Бриджы</a></li>
                                                            <li>- <a href="Products.aspx?category=212&parents=195">Болеро</a></li>
                                                            <li>- <a href="Products.aspx?category=213&parents=195">Платья</a></li>
                                                            <li>- <a href="Products.aspx?category=214&parents=195">Юбки</a></li>
                                                            <li>- <a href="Products.aspx?category=215&parents=195">Жакеты</a></li>
                                                            <li>- <a href="Products.aspx?category=216&parents=195">Кардиганы</a></li>
                                                            <li>- <a href="Products.aspx?category=217&parents=195">Сарафаны</a></li>
                                                            <li>- <a href="Products.aspx?category=218&parents=195">Накидки</a></li>
                                                            <li>- <a href="Products.aspx?category=219&parents=195">Пелерины</a></li>
                                                            <li>- <a href="Products.aspx?category=220&parents=195">Горжетки</a></li>
                                                            <li>- <a href="Products.aspx?category=221&parents=195">Пончо</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-4_3">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion14" href="#collapse4_3">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Летняя одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse4_3" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=222&parents=196">Платя</a></li>
                                                            <li>- <a href="Products.aspx?category=223&parents=196">Сарафаны</a></li>
                                                            <li>- <a href="Products.aspx?category=224&parents=196">Купальники</a></li>
                                                            <li>- <a href="Products.aspx?category=225&parents=196">Юбки</a></li>
                                                            <li>- <a href="Products.aspx?category=226&parents=196">Топы</a></li>
                                                            <li>- <a href="Products.aspx?category=227&parents=196">Пелерины</a></li>
                                                            <li>- <a href="Products.aspx?category=228&parents=196">Палантины</a></li>
                                                            <li>- <a href="Products.aspx?category=229&parents=196">Костюмы</a></li>
                                                            <li>- <a href="Products.aspx?category=230&parents=196">Кофточки</a></li>
                                                            <li>- <a href="Products.aspx?category=231&parents=196">Туники</a></li>
                                                            <li>- <a href="Products.aspx?category=232&parents=196">Блузки</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-4_4">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion14" href="#collapse4_4">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Праздничная одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse4_4" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=233&parents=197">Тематические костюмы</a></li>
                                                            <li>- <a href="Products.aspx?category=234&parents=197">Вечерние платья</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-4_5">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion14" href="#collapse4_5">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Аксессуары
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse4_5" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=235&parents=198">Шапки</a></li>
                                                            <li>- <a href="Products.aspx?category=236&parents=198">Шляпы</a></li>
                                                            <li>- <a href="Products.aspx?category=237&parents=198">Панамы</a></li>
                                                            <li>- <a href="Products.aspx?category=238&parents=198">Шарфы</a></li>
                                                            <li>- <a href="Products.aspx?category=239&parents=198">Перчатки</a></li>
                                                            <li>- <a href="Products.aspx?category=240&parents=198">Варежки</a></li>
                                                            <li>- <a href="Products.aspx?category=241&parents=198">Следки</a></li>
                                                            <li>- <a href="Products.aspx?category=242&parents=198">Муфты</a></li>
                                                            <li>- <a href="Products.aspx?category=243&parents=198">Снуды</a></li>
                                                            <li>- <a href="Products.aspx?category=244&parents=198">Капюшоны</a></li>
                                                            <li>- <a href="Products.aspx?category=245&parents=198">Хомуты</a></li>
                                                            <li>- <a href="Products.aspx?category=246&parents=198">Наушники</a></li>
                                                            <li>- <a href="Products.aspx?category=247&parents=198">Повязки на голову</a></li>
                                                            <li>- <a href="Products.aspx?category=248&parents=198">Болеро</a></li>
                                                            <li>- <a href="Products.aspx?category=249&parents=198">Пляжные сумки</a></li>
                                                            <li>- <a href="Products.aspx?category=250&parents=198">Пляжные коврики</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### 04 ОДЕЖДА ДЛЯ ДЕВОЧЕК: КОНЕЦ ######### -->

                            <!-- ########### 05 ОДЕЖДА ДЛЯ МАЛЬЧИКОВ ############## -->
                            <div class="panel panel-default checkout-step-05">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion1" href="#collapseFive">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Одежда для мальчиков
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFive" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="panel-group checkout-steps" id="accordion15">

                                            <div class="panel panel-default checkout-step-5_1">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion15" href="#collapse5_1">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Верхняя одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse5_1" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=256&parents=251">Пальто</a></li>
                                                            <li>- <a href="Products.aspx?category=257&parents=251">Полупальто</a></li>
                                                            <li>- <a href="Products.aspx?category=258&parents=251">Куртки</a></li>
                                                            <li>- <a href="Products.aspx?category=529&parents=251">Плащи</a></li>
                                                            <li>- <a href="Products.aspx?category=260&parents=251">Жакеты</a></li>
                                                            <li>- <a href="Products.aspx?category=261&parents=251">Шубы</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-5_2">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion15" href="#collapse5_2">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Повседневная одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse5_2" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=262&parents=252">Свитеры</a></li>
                                                            <li>- <a href="Products.aspx?category=263&parents=252">Кофты</a></li>
                                                            <li>- <a href="Products.aspx?category=264&parents=252">Костюмы</a></li>
                                                            <li>- <a href="Products.aspx?category=265&parents=252">Шорты</a></li>
                                                            <li>- <a href="Products.aspx?category=266&parents=252">Брюки</a></li>
                                                            <li>- <a href="Products.aspx?category=267&parents=252">Бриджы</a></li>
                                                            <li>- <a href="Products.aspx?category=268&parents=252">Жакеты</a></li>
                                                            <li>- <a href="Products.aspx?category=269&parents=252">Жилеты</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-5_3">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion15" href="#collapse5_3">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Летняя одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse5_3" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=270&parents=253">Майки</a></li>
                                                            <li>- <a href="Products.aspx?category=271&parents=253">Футболки</a></li>
                                                            <li>- <a href="Products.aspx?category=272&parents=253">Рубашки</a></li>
                                                            <li>- <a href="Products.aspx?category=273&parents=253">Плавки</a></li>
                                                            <li>- <a href="Products.aspx?category=274&parents=253">Шорты</a></li>
                                                            <li>- <a href="Products.aspx?category=275&parents=253">Бриджи</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-5_4">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion15" href="#collapse5_4">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Праздничная одежда
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse5_4" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=276&parents=254">Тематические костюмы</a></li>
                                                            <li>- <a href="Products.aspx?category=277&parents=254">Вечерние костюмы</a></li>
                                                            <li>- <a href="Products.aspx?category=278&parents=254">Рубашки</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### 05 ОДЕЖДА ДЛЯ МАЛЬЧИКОВ: КОНЕЦ ####### -->

                            <!-- ########### 06 БЕЛЬЕ ############################  -->
                            <div class="panel panel-default checkout-step-06">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion1" href="#collapseSix">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Белье
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseSix" class="panel-collapse collapse">
                                     <div class="panel-body">
                                        <div class="panel-group checkout-steps" id="accordion16">

                                            <div class="panel panel-default checkout-step-6_1">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion16" href="#collapse6_1">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Женское белье
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse6_1" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=293&parents=290">Трусы</a></li>
                                                            <li>- <a href="Products.aspx?category=294&parents=290">Бюстгалтеры</a></li>
                                                            <li>- <a href="Products.aspx?category=295parents=290">Чулки</a></li>
                                                            <li>- <a href="Products.aspx?category=296&parents=290">Пояса для чулок</a></li>
                                                            <li>- <a href="Products.aspx?category=297&parents=290">Колготки</a></li>
                                                            <li>- <a href="Products.aspx?category=298&parents=290">Комплекты</a></li>
                                                            <li>- <a href="Products.aspx?category=299&parents=290">Комбинации</a></li>
                                                            <li>- <a href="Products.aspx?category=300&parents=290">Комбидрессы</a></li>
                                                            <li>- <a href="Products.aspx?category=301&parents=290">Майки</a></li>
                                                            <li>- <a href="Products.aspx?category=302&parents=290">Носки</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-6_2">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion16" href="#collapse6_2">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Мужское белье
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse6_2" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=303&parents=291">Трусы</a></li>
                                                            <li>- <a href="Products.aspx?category=304&parents=291">Майки</a></li>
                                                            <li>- <a href="Products.aspx?category=305&parents=291">Носки</a></li>
                                                            <li>- <a href="Products.aspx?category=306&parents=291">Комплекты</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default checkout-step-6_3">
                                                <div class="panel-heading">
                                                    <h4 class="unicase-checkout-title">
                                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion16" href="#collapse6_3">
                                                            <span><i class="icon fa fa-check-circle" aria-hidden="true"></i></span>Детское белье
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse6_3" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>- <a href="Products.aspx?category=307&parents=292">Майки</a></li>
                                                            <li>- <a href="Products.aspx?category=308&parents=292">Боди</a></li>
                                                            <li>- <a href="Products.aspx?category=309&parents=292">Трусы</a></li>
                                                            <li>- <a href="Products.aspx?category=310&parents=292">Носки</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- ########### 06 БЕЛЬЕ: КОНЕЦ ###################### -->

                            <!-- ########### 07 Товары для детей  -->
                            <div class="panel panel-default checkout-step-07">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion1" href="#collapseSeven">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Товары для детей
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseSeven" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### 07 Товары для детей: КОНЕЦ  -->

                            <!-- ########### 08 Товары для новорожденных  -->
                            <div class="panel panel-default checkout-step-08">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion1" href="#collapseEight">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Товары для новорожденных
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseEight" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### 08 Товары для новорожденных: КОНЕЦ  -->

                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="panel-group checkout-steps" id="accordion2">

                            <!-- ########### checkout-step-09  -->
                            <div class="panel panel-default checkout-step-09">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion2" href="#collapseNine">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Свадебная мода
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseNine" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### checkout-step-09: КОНЕЦ  -->

                            <!-- ########### checkout-step-10  -->
                            <div class="panel panel-default checkout-step-10">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion2" href="#collapseTen">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Сумки и рюкзаки
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTen" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### checkout-step-10: КОНЕЦ  -->

                            <!-- ########### checkout-step-11  -->
                            <div class="panel panel-default checkout-step-11">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion2" href="#collapseEleven">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Украшения и аксессуары
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseEleven" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### checkout-step-11: КОНЕЦ  -->

                            <!-- ########### checkout-step-12  -->
                            <div class="panel panel-default checkout-step-12">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion2" href="#collapseTwelve">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Оренбургский платок
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwelve" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### checkout-step-12: КОНЕЦ  -->

                            <!-- ########### checkout-step-13  -->
                            <div class="panel panel-default checkout-step-13">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion2" href="#collapseThirteen">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Домашняя мода
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThirteen" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### checkout-step-13: КОНЕЦ  -->

                            <!-- ########### checkout-step-14  -->
                            <div class="panel panel-default checkout-step-14">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion2" href="#collapseFourteen">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Спортивные товары
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFourteen" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### checkout-step-14: КОНЕЦ  -->

                            <!-- ########### checkout-step-15  -->
                            <div class="panel panel-default checkout-step-15">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion2" href="#collapse">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Обувь
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### checkout-step-15: КОНЕЦ  -->

                            <!-- ########### checkout-step-16  -->
                            <div class="panel panel-default checkout-step-16">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion2" href="#collapseSixteen">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Одежда для будущих мам
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseSixteen" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- ########### checkout-step-16: КОНЕЦ  -->

                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="panel-group checkout-steps" id="accordion3">


                            <!-- checkout-step-17  -->
                            <div class="panel panel-default checkout-step-17">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion3" href="#collapseSeventeen">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Одежда больших размеров
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseSeventeen" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- checkout-step-17: КОНЕЦ  -->

                            <!-- checkout-step-18  -->
                            <div class="panel panel-default checkout-step-18">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion3" href="#collapseEighteen">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Товары для животных
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseEighteen" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- checkout-step-18: КОНЕЦ  -->

                            <!-- checkout-step-19  -->
                            <div class="panel panel-default checkout-step-19">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion3" href="#collapseNineteen">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Макраме
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseNineteen" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- checkout-step-19: КОНЕЦ  -->

                            <!-- checkout-step-20  -->
                            <div class="panel panel-default checkout-step-20">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion3" href="#collapseTwenty">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Герои мультфильмов
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwenty" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- checkout-step-20: КОНЕЦ  -->

                            <!-- checkout-step-21  -->
                            <div class="panel panel-default checkout-step-21">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion3" href="#collapseTwentyOne">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Подарки к празднику
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwentyOne" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- checkout-step-21: КОНЕЦ  -->

                            <!-- checkout-step-22  -->
                            <div class="panel panel-default checkout-step-18">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion3" href="#collapseTwentyTwo">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Балаковские мочалки
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwentyTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- checkout-step-22: КОНЕЦ  -->

                            <!-- checkout-step-23  -->
                            <div class="panel panel-default checkout-step-23">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion3" href="#collapseTwentyThree">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>Обучение по вязанию
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwentyThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- checkout-step-23: КОНЕЦ  -->

                            <!-- checkout-step-24  -->
                            <div class="panel panel-default checkout-step-24">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="collapsed" data-parent="#accordion3" href="#collapseTwentyFour">
                                            <span style="width: 45px"><i class="icon fa fa-check" aria-hidden="true"></i></span>VIP
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwentyFour" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <br/><br/>
                                    </div>
                                </div>
                            </div>
                            <!-- checkout-step-24: КОНЕЦ  -->

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <br />
    <br />

</asp:Content>
