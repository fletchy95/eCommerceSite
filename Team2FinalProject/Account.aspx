<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Team2FinalProject.AboutUs" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
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
        .auto-style4 {
            height: 28px;
        }
        .auto-style5 {
            height: 33px;
        }
        </style>
    <h3>
        Welcome, your Information is below:
    </h3>
    <h6>
        No information is required but it will improve customer experience.  
    </h6>
    <br />
    <table class="nav-justified">
        <tr>
            <td class="auto-style2" dir="rtl">:First Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtFirstName" runat="server" Width="210px" ReadOnly="true" CssClass="txtBoxStyle">

                </asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" CssClass="text-danger" Display="Dynamic" ErrorMessage="RequiredFieldValidator">First Name is Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">:Last Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtLastName" runat="server" Width="210px" ReadOnly="true" CssClass="txtBoxStyle">

                </asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" CssClass="text-danger" Display="Dynamic" ErrorMessage="RequiredFieldValidator">Last Name is Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">:Email</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtEmail" runat="server" Width="210px" ReadOnly="true" CssClass="txtBoxStyle" 
                    TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtEmail">Email Address Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControltoValidate="txtEmail">Must be a valid email address</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">:Phone</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtPhone" runat="server" Width="210px" ReadOnly="true" CssClass="txtBoxStyle" 
                    TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtPhone">Phone Number is Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                        ControlToValidate="txtPhone">Use this format: 999-999-9999</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">:Address</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtAddress" runat="server" Width="210px" ReadOnly="true" CssClass="txtBoxStyle">

                </asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvStreetAddress" runat="server" Text="Address is Required"
                        CssClass="text-danger" Display="Dynamic" 
                        ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">:City</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtCity" runat="server" Width="210px" ReadOnly="true" CssClass="txtBoxStyle">

                </asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" Text="City is Required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">:State</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtState" runat="server" Width="210px" ReadOnly="true" CssClass="txtBoxStyle">

                </asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" Text="State is Required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtState"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" dir="rtl">:Zipcode</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtZipcode" runat="server" Width="210px" ReadOnly="true" CssClass="txtBoxStyle">

                </asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvZipcode" runat="server" Text="Zip Code is Required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtZipcode"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revZipcode" runat="server" Text="Use this format: 99999 or 99999-9999" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtZipcode" 
                        ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">:Card Type</td>
            <td class="auto-style3"><asp:TextBox ID="txtCardType" runat="server" Width="210px" ReadOnly="true" CssClass="txtBoxStyle"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCardType" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtCardType">Card Type is Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" dir="rtl">:Card Number</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtCardNumber" runat="server" Width="210px" ReadOnly="true" CssClass="txtBoxStyle"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtCardNumber">Card Number is Required</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revCardNumber" runat="server" ControlToValidate="txtCardNumber" CssClass="text-danger" Display="Dynamic" ValidationExpression="\d{16}">Should be a 16 digit number</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">:Expiration</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtExpiration" runat="server" Width="210px" ReadOnly="true" CssClass="txtBoxStyle"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtExpiration" CssClass="text-danger" Display="Dynamic">Expiration Date is Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revDOB" runat="server" CssClass="text-danger"
                        Display="Dynamic" ValidationExpression="[01]?\d\/[0-3]\d/\d{4}"
                        ControlToValidate="txtExpiration">Use this format: mm/dd/yyyy</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">:Security Code</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtSecuityCode" runat="server" Width="210px" ReadOnly="true" CssClass="txtBoxStyle"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSecurityCode" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtSecuityCode">SecurityCode is required</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvCSV" runat="server" ControlToValidate="txtSecuityCode" CssClass="text-danger" Display="Dynamic" MaximumValue="999" MinimumValue="0" Type="Integer">Security Code is located on the back of your card and is a 3 digit number</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" dir="rtl">
                <asp:Button ID="btnUpdate" runat="server" Text="Update" Visable="false" OnClick="btnUpdate_Click"/>
            </td>
            <td>
                <asp:Button ID="btnUpdateInfo" runat="server" Text="Update Information" Visable="true" 
                    OnClick="btnUpdateInfo_Click" CausesValidation="false"/>
            </td>
        </tr>
    </table>  
    <br />
    <br />
    <h3>
        Previously viewed Items: 
    </h3>
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Image ID="ItemOneImg" runat="server" />
            </td>
            <td>
                <asp:Image ID="ItemTwoImg" runat="server" />
            </td>
            <td>
                <asp:Image ID="ItemThreeImg" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="ItemOneBtn" runat="server" OnClick="ItemOneBtn_Click" CssClass="textButton" 
                    ForeColor="#0033CC" CausesValidation="false"/>
            </td>
            <td class="auto-style4">
                <asp:Button ID="ItemTwoBtn" runat="server" OnClick="ItemTwoBtn_Click" CssClass="textButton"
                    ForeColor="#0033CC" CausesValidation="false"/>
            </td>
            <td class="auto-style4">
                <asp:Button ID="ItemThreeBtn" runat="server" OnClick="ItemThreeBtn_Click" CssClass="textButton"
                    ForeColor="#0033CC" CausesValidation="false"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="ItemOnePrice" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="ItemTwoPrice" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="ItemThreePrice" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="headPlaceholder">
    <style type="text/css">
        .auto-style1 
        {
            width: 287px;
        }
        .auto-style2 
        {
            width: 287px;
            height: 21px;
        }
        .auto-style3 
        {
            height: 21px;
        }
        .textButton 
        {
            background:none;
            border:none;
            margin:0;
            padding:0;
        }
    </style>
</asp:Content>