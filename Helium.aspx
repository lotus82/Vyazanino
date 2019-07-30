<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Helium.aspx.cs" Inherits="VyazaninoCOM.Helium" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.min.css"/>
    <script src="Scripts/botstrap.min.js"></script>
    <script src="Scripts/jquery-1.9.0.min.js"></script>
    <style>
        .login-block
{
background-color:#fff;
padding:60px;
-webkit-box-shadow:0 3px 50px 0 rgba(0,0,0,.1);
box-shadow:0 3px 50px 0 rgba(0,0,0,.1);
text-align:center;
border-radius:5px
}
.login-block h1,.login-block h6
{
font-family:Open Sans,sans-serif;
color:#96a2b2;
letter-spacing:1px
}
.login-block h1
{
font-size:22px;
margin-bottom:60px;
margin-top:40px
}
.login-block .input-group-addon
{
color:#29aafe;
font-size:19px;
opacity:.5
}
.login-block .btn-block
{
margin-top:30px;
padding:15px;
background:#29aafe;
border-color:#29aafe;
}
.login-block .hr-xs
{
margin-top:5px;
margin-bottom:5px
}
    </style>
</head>
<body>
    <form id="Helium_Validation" runat="server">
    <div>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="login-block" style="padding-top:10px;">
            <h1 style="font-size:30px;color:#333;">Расход гелия МРТ Балаково</h1>
			<div class="row">
				<div class="col-sm-12 col-md-6 col-xs-6">
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-user ti-user"></i></span>
                    <asp:TextBox ID="TextBox_Helium" CssClass="form-control" placeholder="Введите целое значение" runat="server" TextMode="Number"></asp:TextBox>
                    </div>

                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-user ti-user"></i></span>
                <asp:DropDownList ID="DropDownList_Address"  CssClass="form-control" runat="server">
                <asp:ListItem Text="Роза Люксембург" Value="Роза Люксембург">
                </asp:ListItem>
                <asp:ListItem Text="Трнавская" Value="Трнавская">
                </asp:ListItem>
            </asp:DropDownList>
                    </div>
            </div>
                    <hr class="hr-xs" />
                    <asp:Label ID="Label_Validator" runat="server" ForeColor="Red" Text="" Font-Size="14"></asp:Label>
                    <asp:Label ID="Label_Critical" runat="server" ForeColor="Red" Text="" Font-Size="14"></asp:Label>
                    <asp:Button ID="Button_Helium" CssClass="btn btn-primary btn-block" runat="server" Text="Добавить" OnClick="Button_Helium_Click" />
                    <hr class="hr-xs" />
                    <div style="text-align: left">
                        <asp:CheckBox ID="CheckBox_Rosa" runat="server" OnCheckedChanged="CheckBox_Rosa_CheckedChanged" AutoPostBack="true" /><span style="margin-left:10px;">Роза</span><br />
                        <asp:CheckBox ID="CheckBox_Trn" runat="server" OnCheckedChanged="CheckBox_Trn_CheckedChanged" AutoPostBack="true" /><span style="margin-left:10px;">Трнавская</span><br /><br />
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel_Helium" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>

                            <asp:Repeater ID="Repeater_Helium" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-bordered">
                                        <thead>
                        <tr>
                            <th style="text-align:center;">Дата</th>
                            <th style="text-align:center;">Расход гелия, в %</th>
                            <th style="text-align:center;">Адрес МРТ</th>
                        </tr>
                    </thead>
                     <tbody>
             </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td style="width:80;">
                        <%#Eval("Date_Helium") %>
                    </td>
                    <td tyle="width:70%;">
                        <%#Eval("Flow_Helium") %>
                    </td>
                    <td tyle="width:70%;">
                        <%#Eval("Address") %>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                    </tbody>
                </table>
            </FooterTemplate>
        </asp:Repeater>

            </ContentTemplate>
        </asp:UpdatePanel>
          </div>
		<div class="col-sm-12 col-md-6 col-xs-6">

      <div >
          <asp:Chart ID="Chart1" runat="server" ImageStorageMode="UseImageLocation" ViewStateContent="All">
              <Series>
                  <asp:Series Name="Series_Helium"></asp:Series>
                  <asp:Series Name="Series_Line" ChartType="Column" Color="Red"></asp:Series>
              </Series>

              <ChartAreas>
                  <asp:ChartArea Name="ChartArea_Helium"></asp:ChartArea>
              </ChartAreas>
          </asp:Chart>


            <asp:Chart ID="Chart2" runat="server" ImageStorageMode="UseImageLocation">
                <Series>
                    <asp:Series Name="Series_Helium"></asp:Series>
                    <asp:Series Name="Series_Line" ChartType="Column" Color="Red"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea_Helium"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
          </div>
		</div>
		</div>
		
        </div>
        
    </div>
    </form>
</body>
</html>
