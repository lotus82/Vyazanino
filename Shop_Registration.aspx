<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="Shop_Registration.aspx.cs" Inherits="VyazaninoCOM.Shop_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="/assets/js/json2.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.0/css/ion.rangeSlider.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.0/js/ion.rangeSlider.min.js"></script>
    <script type="text/javascript">
        function GetAddress(Textik) {
            var Strana = document.getElementById('Country1');
            var City1 = document.getElementById('City1');
            var address = { 'Textik': Textik, 'Strana': Strana.value, 'City1': City1.value };
            $.ajax({
                type: "POST",
                url: "Shop_Registration.aspx/GetAddress",
                data: JSON.stringify(address),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var dataList = document.getElementById('td1');
                    //var Strana = document.getElementById('Country1');
                    //var City1 = document.getElementById('City1');
                    var op;
                    var i = dataList.children.length - 1;
                    while (dataList.children.length > 0) {
                        dataList.removeChild(dataList.children[i]);
                        i--;
                    }
                    for (var i = 0; i < response.d[0].length; i++) {
                        op = document.createElement("option");
                        op.value = response.d[i];
                        dataList.appendChild(op);
                        Strana.value = response.d[i, 1];
                        City1.value = response.d[i, 2];
                    }
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert(xhr.responseText);
                }
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="/Default.aspx">Главная</a></li>
                    <li class='active'>Регистрация магазина</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="body-content" style="text-align: center;">
        <div class="container" style="text-align: center;">
            <div class="sign-in-page" style="text-align: center;">
                <div class="row col-lg-12" style="display: inline-block; text-align: center;">
                    <div class="col-sm-1 col-md-1 col-lg-3"></div>
                    <div class="col-md-12 col-sm-12 col-lg-6 sign-in" style="text-align: left; border: 2px solid #12CCA7;padding-bottom:15px;color:#333;">
                        <h4 style="text-align: center;">Регистрация магазина</h4>

                       <asp:CreateUserWizard ID="RegisterShop" runat="server" RequireEmail="false" 
                              CreateUserButtonText="Зарегистрироваться" DuplicateUserNameErrorMessage="Такой Email уже зарегистрирован"
                             CreateUserButtonStyle-CssClass="btn-upper btn btn-primary checkout-page-button"
                            OnCreatedUser="RegisterShop_CreatedUser" Width="100%" Ali ="Center"
                             ErrorMessageStyle-ForeColor="Red"
                             ContinueDestinationPageUrl="~/Default.aspx" NavigationStyle-HorizontalAlign="Center" NavigationStyle-VerticalAlign="Middle">

                            <WizardSteps>

                                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                                    <ContentTemplate>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="Label_Name_Shop" runat="server">Название магазина <span>*</span></asp:Label><br />
                                            <asp:TextBox ID="TextBox_Name_Shop" CssClass="form-control unicase-form-control text-input" runat="server" />
                                            <asp:RequiredFieldValidator ID="Name_Shop_Required" runat="server" ControlToValidate="TextBox_Name_Shop"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterShop">* Обязательное поле</asp:RequiredFieldValidator>

                                        </div>
                                        <div class="form-group" >
                                            <asp:Label class="info-title" ID="UserNameLabel" runat="server">Email <span>*</span></asp:Label>
                                            <asp:TextBox ID="UserName" CssClass="form-control unicase-form-control text-input" runat="server" />
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterShop">* Обязательное поле</asp:RequiredFieldValidator>
                                            
                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="PasswordLabel" runat="server">Пароль <span>*</span></asp:Label><br />
                                            <asp:TextBox ID="Password" CssClass="form-control unicase-form-control text-input" runat="server" TextMode="Password" />
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterShop">* Обязательное поле</asp:RequiredFieldValidator>
                                            
                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="ConfirmPasswordLabel" runat="server">Подтвердите пароль <span>*</span></asp:Label><br />
                                            <asp:TextBox ID="ConfirmPassword" CssClass="form-control unicase-form-control text-input" runat="server" TextMode="Password" />
                                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterShop">* Обязательное поле</asp:RequiredFieldValidator>
                                            
                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="QuestionLabel" runat="server">Секретный вопрос <span>*</span></asp:Label><br />
                                            <asp:TextBox ID="Question" CssClass="form-control unicase-form-control text-input" runat="server" />
                                            <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterShop">* Обязательное поле</asp:RequiredFieldValidator>

                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="AnswerLabel" runat="server">Ответ <span>*</span></asp:Label><br />
                                            <asp:TextBox ID="Answer" CssClass="form-control unicase-form-control text-input" runat="server" />
                                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterShop">* Обязательное поле</asp:RequiredFieldValidator>

                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="Label_Address" runat="server" >Адрес <span>*</span></asp:Label><br />
                                            <%--<asp:TextBox ID="TextBox_Address" CssClass="form-control unicase-form-control text-input" runat="server" />--%>
                                            <input id="Address" list="td1" runat="server" type="text" autocomplete="on" class="form-control unicase-form-control text-input" onkeyup="GetAddress(this.value);" />
                                            <datalist id="td1" style="width:100%;">
                                            </datalist>
                                            <asp:RequiredFieldValidator ID="Address_Required" runat="server" ControlToValidate="Address"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterShop">* Обязательное поле</asp:RequiredFieldValidator>

                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="Label_City" runat="server">Город <span>*</span></asp:Label><br />
                                            <%--<asp:TextBox ID="TextBox_City" Enabled="false" CssClass="form-control unicase-form-control text-input" runat="server" />--%>
                                            <input id="City1" type="text" class="form-control unicase-form-control text-input"  readonly="true" />
                                            <%--<asp:RequiredFieldValidator ID="City_Required" runat="server" ControlToValidate="City"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterShop">* Обязательное поле</asp:RequiredFieldValidator>--%>

                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="Label_Country" runat="server">Страна <span>*</span></asp:Label><br />
                                            <%--<asp:TextBox ID="TextBox_Country" CssClass="form-control unicase-form-control text-input" runat="server" />--%>
                                            <input id="Country1" type="text" class="form-control unicase-form-control text-input" readonly="true" />
                                            <%--<asp:RequiredFieldValidator ID="Country_Required" runat="server" ControlToValidate="Country"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterShop">* Обязательное поле</asp:RequiredFieldValidator>--%>

                                        </div>
                                        

                                        <div class="form-group" style="margin-bottom: 0px">
                                            <asp:CheckBox ID="CheckBox_License" runat="server" />&nbsp;&nbsp;Я принимаю условия<br />
                                            <a href="oferta-uslugi.pdf" target="_blank" class="forgot-password pull-left" style="margin: 0px 0px 0px 18px;font-size:12px;">Лицензионного договора</a>
                                        </div>

                                        <div class="form-group" style="color: red; font-weight: bold; text-align: center; padding: 10px 10px 10px 10px; margin: 10px 0px 10px 0px;">
                                            <br/><asp:RegularExpressionValidator ID="UsernameValidator" runat="server" ControlToValidate="UserName"
                                                ValidationExpression="^(\w*){1}(\w*\.*-*){0,20}@{1}(\w*\.*-*){0,20}(\w+)$" ErrorMessage="Некорректный Email" ForeColor="Red" ValidationGroup="RegisterShop" />
                                            <br/><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Password"
                                                ValidationExpression="(?=.*[0-9])(?=.*[!@#$%^&*_+-])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*_+-]{7,20}" ErrorMessage="Неверный формат пароля" ForeColor="Red" ValidationGroup="RegisterShop" />
                                            <br/><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ConfirmPassword"
                                                ValidationExpression="(?=.*[0-9])(?=.*[!@#$%^&*_+-])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*_+-]{7,20}" ErrorMessage="Неверный формат подтв. пароля" ForeColor="Red" ValidationGroup="RegisterShop" />
                                            <br/><asp:Literal ID="ErrorMessage" runat="server" EnableViewState="true" />
                                        </div>
                                        <br />
                                    </ContentTemplate>
                                </asp:CreateUserWizardStep>

                                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                                    <ContentTemplate>
                                        <div class="form-group" style="text-align:center;">
                                            Ваш аккаунт был успешно создан!
		                                <br/>
                                            <asp:Button ID="ContinueButton" CssClass="btn-upper btn btn-primary checkout-page-button"  OnClick="ContinueButton_Click" runat="server" Text="Продолжить" />
                                        <br/>
                                        </div>
                                    </ContentTemplate>
                                </asp:CompleteWizardStep>
                            </WizardSteps>
                        </asp:CreateUserWizard>
                        
                    </div>
                    <div class="col-sm-1 col-md-1 col-lg-3"></div>
                </div>
            </div>
        </div>
    </div>
    <br />


</asp:Content>
