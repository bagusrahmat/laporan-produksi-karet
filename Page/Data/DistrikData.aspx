<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Site.Master" AutoEventWireup="true" CodeBehind="DistrikData.aspx.cs" Inherits="SILHP.Page.Data.DistrikData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 94px;
        }
        .auto-style4 {
            width: 10px;
        }
        .auto-style5 {
            width: 190px;
        }
        .auto-style6 {
            width: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="float: right; padding-right: 0">
        <table>
            <tr>
                <td class="auto-style6"><asp:Label ID="distriknamatxt" runat="server" Text=""></asp:Label></td>
                <td><asp:Button ID="ButtonLogout" style="border: solid 1px #f21d1d; border-radius: 13px; background-color: #FFFFFF;" runat="server" Text="Logout" ForeColor="#F21D1D" Height="28px" Width="74px" OnClick="ButtonLogout_Click" /></td>
            </tr>
        </table>
    </div>
    
    <div class="isicontent">
        <br />
        <table>
            <tr>
                <td class="auto-style3">Distrik</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5"><asp:DropDownList ID="DropDownList1" CssClass="dropdowncss" runat="server" DataSourceID="distrik_nama" DataTextField="distrik_nama" DataValueField="distrik_nama" Height="28px" Width="170px"></asp:DropDownList>
                    <asp:SqlDataSource ID="distrik_nama" runat="server" ConnectionString="Data Source=bgsr\bgsrserver;Initial Catalog=SIHP;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [distrik_nama] FROM [distrik] ORDER BY [distrik_ID]"></asp:SqlDataSource>
                </td>
            </tr>

            <tr>
                <td>Komoditi</td>
                <td>:</td>
                <td><asp:DropDownList  ID="DropDownListKomoditi" CssClass="dropdowncss" runat="server" Height="28px" Width="170px">
                    <asp:ListItem>Kelapa Sawit</asp:ListItem>
                    <asp:ListItem>Karet</asp:ListItem>
                    <asp:ListItem>Tebu</asp:ListItem>
                    <asp:ListItem>Teh</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>

            <tr>
                <td></td>
                <td></td>
                <td>
                    <br />
                    <asp:Button ID="ButtonOK" runat="server" Text="Tampilkan" OnClick="ButtonOK_Click" Height="28px" BorderColor="#CCCCCC" BorderStyle="Solid" style="background-color: #1da1f2; border: solid 1px #1da1f2; border-radius: 13px;" ForeColor="White" Width="104px" />
                </td>
            </tr>
        </table>

        <br />
        <asp:Label ID="PilihData" runat="server" ForeColor="#F21D1D" Text="Pilih Data yang akan Ditampilkan!"></asp:Label>

        <asp:GridView
        ID="GridViewData"
        runat="server"
        Gridlines="None"
        AlternatingRowStyle-CssClass="alt"
        CssClass="cssgridview">

        </asp:GridView>
    </div>
    <br />
</asp:Content>
