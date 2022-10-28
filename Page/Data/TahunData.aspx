<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Site.Master" AutoEventWireup="true" CodeBehind="TahunData.aspx.cs" Inherits="SILHP.Page.Data.TahunData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 94px;
            color: #666666;
        }
        .auto-style2 {
            width: 10px;
            color: #666666;
        }
        .auto-style3 {
            width: 190px;
        }
        .auto-style4 {
            width: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="float: right; padding-right: 0">
        <table>
            <tr>
                <td class="auto-style4"><asp:Label ID="distriknamatxt" runat="server" Text=""></asp:Label></td>
                <td><asp:Button ID="ButtonLogout" style="border: solid 1px #f21d1d; border-radius: 13px; background-color: #FFFFFF;" runat="server" Text="Logout" ForeColor="#F21D1D" Height="28px" Width="74px" OnClick="ButtonLogout_Click" /></td>
            </tr>
        </table>
    </div>
<br />
    <div class="isicontent">
        <table>
            <tr>
                <td class="auto-style1">Tahun Laporan</td>
                <td class="auto-style2">:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" CssClass="dropdowncss" runat="server" Height="28px" Width="126px">
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                    </asp:DropDownList>
                </td>

                <td><asp:Button ID="ButtonOK" runat="server" Text="Tampilkan" OnClick="ButtonOK_Click" Height="28px" BorderColor="#CCCCCC" BorderStyle="Solid" style="background-color: #1da1f2; border: solid 1px #1da1f2; border-radius: 13px;" ForeColor="White" Width="104px" /></td>
            </tr>
        </table>
    
        <br />
        <asp:Label ID="PilihData" runat="server" Text="Pilih Data yang akan Ditampilkan!" ForeColor="#F21D1D"></asp:Label>
    
        <asp:GridView
        ID="GridViewData"
        Gridlines="None"
        AlternatingRowStyle-CssClass="alt"
        CssClass="cssgridview"
        runat="server"></asp:GridView>
    </div>

</asp:Content>
