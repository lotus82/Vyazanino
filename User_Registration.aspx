<%@ Page Title="" Language="C#" MasterPageFile="~/VyazaninoCOM.Master" AutoEventWireup="true" CodeBehind="User_Registration.aspx.cs" Inherits="VyazaninoCOM.User_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="/Default.aspx">Главная</a></li>
                    <li class='active'>Регистрация пользователя</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="body-content" style="text-align: center;">
        <div class="container" style="text-align: center;">
            <div class="sign-in-page" style="text-align: center;">
                <div class="row  col-lg-12" style="display: inline-block; text-align: center;">
                    <div class="col-sm-1 col-md-1 col-lg-3"></div>
                    <div class="col-md-12 col-sm-12 col-lg-6 sign-in" style="text-align: left; border: 2px solid #FF9900; color:#333;">
                        <h4 style="text-align: center;">&nbsp;Регистрация пользователя&nbsp;</h4>
                        
                        <asp:CreateUserWizard ID="RegisterUser" runat="server" RequireEmail="false" Width="100%" 
                              CreateUserButtonText="Зарегистрироваться" DuplicateUserNameErrorMessage="Такой Email уже зарегистрирован"
                             CreateUserButtonStyle-CssClass="btn-upper btn btn-primary checkout-page-button"
                            OnCreatedUser="RegisterUser_CreatedUser"
                             ErrorMessageStyle-ForeColor="Red"
                             ContinueDestinationPageUrl="~/Default.aspx" NavigationStyle-HorizontalAlign="Center" NavigationStyle-VerticalAlign="Middle">

                            <WizardSteps>

                                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                                    <ContentTemplate>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Email <span>*</span></asp:Label>
                                            <asp:TextBox ID="UserName" CssClass="form-control unicase-form-control text-input" runat="server" />
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterUser">* Обязательное поле</asp:RequiredFieldValidator>
                                            
                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="PasswordLabel" runat="server" AssociatedControlID="Password">Пароль <span>*</span></asp:Label><br />
                                            <asp:TextBox ID="Password" CssClass="form-control unicase-form-control text-input" runat="server" TextMode="Password" />
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterUser">* Обязательное поле</asp:RequiredFieldValidator>
                                            
                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Подтвердите пароль <span>*</span></asp:Label><br />
                                            <asp:TextBox ID="ConfirmPassword" CssClass="form-control unicase-form-control text-input" runat="server" TextMode="Password" />
                                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterUser">* Обязательное поле</asp:RequiredFieldValidator>
                                            
                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="QuestionLabel" runat="server" AssociatedControlID="Question">Секретный вопрос <span>*</span></asp:Label><br />
                                            <asp:TextBox ID="Question" CssClass="form-control unicase-form-control text-input" runat="server" />
                                            <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterUser">* Обязательное поле</asp:RequiredFieldValidator>

                                        </div>
                                        <div class="form-group">
                                            <asp:Label class="info-title" ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Ответ <span>*</span></asp:Label><br />
                                            <asp:TextBox ID="Answer" CssClass="form-control unicase-form-control text-input" runat="server" />
                                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                                                ErrorMessage="Обязательное поле." ToolTip="Обязательное поле." ForeColor="Red" ValidationGroup="RegisterUser">* Обязательное поле</asp:RequiredFieldValidator>

                                        </div>
                                        <div class="form-group" style="margin-bottom: 0px">
                                            <a href="Login.aspx" class="forgot-password pull-right" style="margin-top: 3px;">Есть аккаунт?</a>
                                            <asp:CheckBox ID="CheckBox_License" runat="server" />&nbsp;&nbsp;Я принимаю условия<br />
                                            <a href="oferta-uslugi.pdf" target="_blank" class="forgot-password pull-left" style="margin: 0px 0px 0px 18px;font-size:12px;">Лицензионного договора</a>
                                            
                                        </div>
                                        <div class="form-group" style="color: red; font-weight: bold; text-align: center; padding: 10px 10px 10px 10px; margin: 10px 0px 10px 0px;">
                                            <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                                ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="Пароли не совпадают!" ForeColor="Red"
                                                ValidationGroup="RegisterUser"></asp:CompareValidator>
                                            <br/><asp:RegularExpressionValidator ID="UsernameValidator" runat="server" ControlToValidate="UserName"
                                                ValidationExpression="^(\w*){1}(\w*\.*-*){0,20}@{1}(\w*\.*-*){0,20}(\w+)$" ErrorMessage="Некорректный Email" ForeColor="Red" ValidationGroup="RegisterUser" />
                                            <br/><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Password"
                                                ValidationExpression="(?=.*[0-9])(?=.*[!@#$%^&*_+-])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*_+-]{7,20}" ErrorMessage="Неверный формат пароля" ForeColor="Red" ValidationGroup="RegisterUser" />
                                            <br/><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ConfirmPassword"
                                                ValidationExpression="(?=.*[0-9])(?=.*[!@#$%^&*_+-])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*_+-]{7,20}" ErrorMessage="Неверный формат подтв. пароля" ForeColor="Red" ValidationGroup="RegisterUser" />
                                            <br/><asp:Literal ID="ErrorMessage" runat="server" EnableViewState="true" />
                                        </div>
                                        <br />
                                    </ContentTemplate>
                                </asp:CreateUserWizardStep>

                                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                                    <ContentTemplate>
                                        <div class="form-group" style="text-align:center;">
                                            Вы успешно зарегистрированы!
		                                <br/>
                                            <asp:Button ID="ContinueButton" CssClass="btn-upper btn btn-primary checkout-page-button"  OnClick="ContinueButton_Click" runat="server" Text="Продолжить" />
                                        <br/>
                                        </div>
                                    </ContentTemplate>
                                </asp:CompleteWizardStep>
                            </WizardSteps>
                        </asp:CreateUserWizard>
                       
                        <br/>
                    </div>
                    <div class="col-sm-1 col-md-1 col-lg-3"></div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
