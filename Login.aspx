<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SILHP.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="App_Themes/Default/StyleSheet.css" />
    
    <style type="text/css">
        .auto-style1 {
            color: #333333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="post">
    <div class="formlogin">
        <div class="isiformlogin">
            <div style="text-align: center">
                <br />
                <asp:Image ID="Image1" CssClass="img1" runat="server" ImageUrl="~/img/img1ptpn120x50.jpg" />
                <br />
                <span class="auto-style1">
                <br />
                Sistem Informasi<br />
                Laporan Hasil Produksi</span><br />
                <br />
                <br />
                <asp:DropDownList ID="DropDownListdistrik" CssClass="dropdowncss" runat="server" DataSourceID="distrik_nama" DataTextField="distrik_nama" DataValueField="distrik_nama" Height="32px" style="color: #666666; background-color: #FFFFFF; " Width="223px" BackColor="#1DA1F2" ForeColor="#CCCCCC">
                </asp:DropDownList>
                
                <asp:SqlDataSource ID="distrik_nama" runat="server" ConnectionString="Data Source=bgsr\bgsrserver;Initial Catalog=SIHP;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [distrik_nama] FROM [distrik] ORDER BY [distrik_ID]"></asp:SqlDataSource>
                
                <br /><br />
                
                <asp:TextBox ID="password" placeholder="Password" runat="server" TextMode="Password" style="color: #666666; padding-left: 12px; border-radius: 3px; background-color: #FFFFFF; " BackColor="DimGray" BorderColor="#1DA1F2" BorderStyle="Solid" BorderWidth="1px" ForeColor="#CCCCCC" Width="210px" Height="32px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="LoginFailed" runat="server" ForeColor="#F21D1D"></asp:Label>
            </div>
            <div style="text-align: center">
                <br />
                <asp:Button ID="ButtonLogin" runat="server" Text="Login" Height="32px" OnClick="ButtonLogin_Click" style="text-align: center; border-radius: 16px; " Width="106px" BackColor="#1DA1F2" BorderStyle="None" ForeColor="White" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
