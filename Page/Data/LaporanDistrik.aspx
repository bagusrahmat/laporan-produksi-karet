<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Site.Master" AutoEventWireup="true" CodeBehind="LaporanDistrik.aspx.cs" Inherits="SILHP.Page.Data.LaporanDistrik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="float: right; padding-right: 0">
        <table>
            <tr>
                <td class="auto-style1"><asp:Label ID="distriktxt" runat="server" Text=""></asp:Label></td>
                <td><asp:Button ID="ButtonLogout" style="border: solid 1px #f21d1d; border-radius: 13px; background-color: #FFFFFF;" runat="server" Text="Logout" ForeColor="#F21D1D" Height="28px" Width="74px" OnClick="ButtonLogout_Click" /></td>
            </tr>
        </table>
    </div>

    <div class="isicontent">
        <br />
        <br />
        <br />
        <br />
        <asp:GridView CssClass="cssgridview" Gridlines="None" AlternatingRowStyle-CssClass="alt" ID  ="GridViewData" runat="server"></asp:GridView>
    </div>
</asp:Content>
