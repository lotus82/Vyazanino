<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VyazaninoCOM.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="/Default.aspx">Главная</a></li>
                    <li class='active'>Авторизация</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="body-content" style="text-align: center;">
        <div class="container" style="text-align: center;">
            <div class="sign-in-page" style="text-align: center;">
                <div class="row" style="display: inline-block; text-align: center;">
                    <div class="col-md-12 col-sm-12 sign-in" style="text-align: left; border: 2px solid #ff0000;">
                        <h4 style="text-align: center;">Авторизация</h4>

                        <asp:Login ID="Login1" runat="server"
                            PasswordRecoveryUrl="~/Password_Recovery.aspx"
                            OnLoginError="Login1_LoginError"
                            OnAuthenticate="Login1_Authenticate">
                            <LayoutTemplate>
                                <div class="form-group">
                                    <label class="info-title" for="UserName">Email<span>*</span></label>
                                    <asp:TextBox ID="UserName" CssClass="form-control unicase-form-control text-input" runat="server" />
                                    <asp:RequiredFieldValidator ID="UserNameRequired"
                                        runat="server"
                                        ControlToValidate="UserName"
                                        ErrorMessage="* обязательное поле" ForeColor="Red"
                                        ValidationGroup="LoginGroup1" />
                                    <asp:RegularExpressionValidator ID="UsernameValidator"
                                        runat="server"
                                        ControlToValidate="UserName"
                                        ValidationExpression="^(\w*){1}(\w*\.*-*){0,20}@{1}(\w*\.*-*){0,20}(\w+)$"
                                        ErrorMessage="Некорректное имя пользователя"
                                        ValidationGroup="LoginGroup1" />
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="Password">Пароль <span>*</span></label>
                                    <asp:TextBox ID="Password" CssClass="form-control unicase-form-control text-input" runat="server" TextMode="Password" />
                                    <asp:RequiredFieldValidator ID="PasswordRequired"
                                        runat="server"
                                        ControlToValidate="Password"
                                        ErrorMessage="* обязательное поле" ForeColor="Red"
                                        ValidationGroup="LoginGroup1" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                        runat="server"
                                        ControlToValidate="Password"
                                        ValidationExpression='(?=.*[0-9])(?=.*[!@#$%^&*_+-])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*_+-]{7,20}'
                                        ErrorMessage="Некорректный пароль"
                                        ValidationGroup="LoginGroup1" />
                                </div>

                                <div class="form-group">
                                    <asp:Button ID="Button_Login" CommandName="Login" OnClick="Button_Login_Click" CssClass="btn-upper btn btn-primary checkout-page-button" runat="server" Text="Войти" ValidationGroup="LoginGroup1" />
                                    <a href="User_Registration.aspx" class="pull-right" style="margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;line-height:5px">Зарегистрироваться</a><br/>
                                    <a href="Password_Recovery.aspx" class="pull-right" style="margin: -10px 0px 0px 0px;padding: 0px 0px 0px 0px;line-height:5px">Забыли пароль?</a>
                                    <asp:Literal ID="FailureText" runat="server" /><br />
                                </div>
                            </LayoutTemplate>
                        </asp:Login>

                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
