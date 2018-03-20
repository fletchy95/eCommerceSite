<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Team2FinalProject.Login" %>

<asp:Content ID="maincontent" ContentPlaceHolderID="mainPlaceholder" runat="server">
<style>
    .txtBoxStyle
    {
        border-style: solid;
        border-width: 1px;
        border-color: darkgray;
        border-top-left-radius: 5px;
        border-top-right-radius: 5px;
        border-bottom-left-radius: 5px;
        border-bottom-right-radius: 5px;
        margin-left: 10px;
        
    }
</style>       
    <table class="nav-justified">
        <tr>
            <td class="auto-style4" dir="rtl">:Username</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="txtBoxStyle"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" dir="rtl">:Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="txtBoxStyle" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="nav-justified">
        <tr>
            <td class="auto-style5">
                <asp:CheckBox ID="chkRemeber" runat="server" Text="Remember me next time." CssClass="auto-style6"/>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lblIncorrect" runat="server" Text="" CssClass="alert-danger"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" dir="rtl">
                <asp:Button ID="btnLogIn" runat="server" Text="Log In" CssClass="btn btn-default" OnClick="btnLogIn_Click"/>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

       
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="headPlaceholder">
    <style type="text/css">
        .auto-style2 {
            width: 102px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            width: 102px
        }
        .auto-style5 {
            width: 304px
        }
    </style>
</asp:Content>

