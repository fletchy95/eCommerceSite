<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Team2FinalProject.ContactUs" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="row">
         <div class="col-xs-12 table-responsive">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Type</th>
                        <th>Number/Address</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>General</td><td>555-555-5555</td>
                    </tr>
                    <tr>
                        <td>Customer Service</td><td>1-800-777-7777</td>
                    </tr>
                    <tr>
                        <td>Mailing Address</td><td>123 Main Street, Smalltown, CT</td>
                    </tr>
                    <tr>
                        <td>Email Address</td><td>info@iconicmerchandise.com</td>
                    </tr>
                    <tr>
                        <td>Facebook</td><td>www.facebook.com/iconicmerchandise</td>
                    </tr>
                    <tr>
                        <td>Twitter</td><td>www.twitter.com/iconicmerchandise</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="col-xs-12">
            <h3>Questions, Concerns, Comments</h3>
            <h5>If there is something you think we could improve, please let us know and we'll respond as we can.</h5>
            <div class="form-group">
                <div class="col-sm-8">
                    <asp:TextBox ID="txtQCC" runat="server" Rows="5" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="rfvQCC" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtQCC">*</asp:RequiredFieldValidator>
            </div>

            <h3>Contact information</h3>

            <div class="form-group">
                <label class="control-label col-sm-3">First Name:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>  
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtFirstName">*</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Last Name:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtLastName">*</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3" style="height: 20px">Email Address:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControltoValidate="txtEmail">Must be a valid email address</asp:RegularExpressionValidator>
                </div>
            </div>           

            <div class="form-group">
                <label class="control-label col-sm-3">Phone Number:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtPhone">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                        ControlToValidate="txtPhone">Use this format: 999-999-9999</asp:RegularExpressionValidator>
                </div>
            </div>  

            <div class="form-group">
                <label class="control-label col-sm-3">Preferred method</label>
                <div class="col-sm-5">
                    <asp:DropDownList ID="ddlPreferred" runat="server" CssClass="form-control">
                        <asp:ListItem>Email</asp:ListItem>
                        <asp:ListItem>Telephone</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblSubmitMessage" runat="server" EnableViewState="False" CssClass="text-info col-sm-12"></asp:Label>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-12">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-basic" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-basic" CausesValidation="False" />
                </div>
            </div>     
        </div>
    </div>
</asp:Content>
