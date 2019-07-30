<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="VyazaninoCOM.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .image-blurred-edge {
    background-image: url("/assets/images/Nina.JPG");
    width: 200px;
    
    /* you need to match the shadow color to your background or image border for the desired effect*/
    box-shadow: 0 0 8px 8px white inset;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="/Default.aspx">Главная</a></li>
                    <li class='active'>О компании</li>
                </ul>
            </div>
        </div>
    </div>
   
    <div class="body-content">
        <div class="container">
            <div class="terms-conditions-page" style="padding:20px;">
                <div class="row">
                    <div class="col-md-12 terms-conditions">
                        <h2 class="heading-title">ЗДРАВСТВУЙТЕ!</h2>
                        <div class="">
                            <style type="text/css">
                                .image-blurred-edge {
                                background-image: url("/assets/images/Nina.JPG");
                                width: 200px;
                                height: 300px;
                                box-shadow: 0 0 8px 8px white inset;
                                float:left;
                                margin:0px 10px 0px 0px;
                                }
                            </style>
                            <div class="image-blurred-edge"></div>
                            <p>
                                В Древней Индии считали, что человек рождается дважды. Первый раз   физически, когда приходит в этот мир. Второй раз   духовно, когда он обретает мировоззрение. И я считаю, что с этого момента у нас с вами все только начинается.
                            </p>
                            <p>
                                Меня зовут Нина, кто-то называет НинО. Родилась и выросла в маленьком сибирском городке Иркутской области, а потом вышла замуж и переехала в Саратовскую область. Теперь я живу в Балаково и ношу говорящую фамилию Вязникова. Мне 37 лет, воспитываю троих детей. 
                            </p>
                            <p>
                                На протяжении нескольких лет на рынках и вокзалах я видела людей, которые по разным причинам вынуждены продавать вязаные вещи собственного производства. Наверняка и вы не раз встречали пенсионерок, предлагающих всем желающим теплые носочки и пушистые шарфы, самодельные мочалки и варежки. И все мы понимаем, что не от хорошей жизни люди идут на это. И мне пришла идея: вязание можно и нужно превратить не только в любимое хобби с детства, но и в источник заработка. Причем не только для себя. Поэтому пусть «Вязанино» свяжет всех нас во имя добра!
                            </p>
                            <p>
                                Почему вязание – это добро? Да потому, что вещи несут в себе теплую душевную энергетику, они создаются с любовью и согревают не только в прямом смысле этого слова. Компания «ВязАнино» создана для того, чтобы объединить всех людей, которые любят и ценят вязание, чтобы помочь зарабатывать тем, кому это жизненно необходимо.
                            </p>
                            <p>
                                Объединившись, мы покажем всем, как много вязаных вещей существует. А приобретая изделия у нас, потенциальные покупатели помогут людям зарабатывать на любимом вязании. 
                            </p>
                            <p>
                                Добро пожаловать!
                            </p>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br /><br />
</asp:Content>
