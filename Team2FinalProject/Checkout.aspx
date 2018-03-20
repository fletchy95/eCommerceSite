<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Team2FinalProject.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
     <div class="row">
         <div class="col-xs-12 table-responsive">
             <h2>Please enter your Shipping and Payment Information</h2>
             <p><br /></p>
         </div>

        <div class="col-xs-12">

                   
            <h3>Shipping Information</h3>
            <div class="form-group">
                <label class="control-label col-sm-3">First Name:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtFirstName">First Name is required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Last Name:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtLastName">Last Name is Required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3" style="height: 20px">Email Address:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtEmail">Email Address Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControltoValidate="txtEmail">Must be a valid email address</asp:RegularExpressionValidator>
                </div>
            </div>    
            <div class="form-group">
                <label class="control-label col-sm-3">Address:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvStreetAddress" runat="server" 
                        ErrorMessage="Billing address" Text="Address is Required"
                        CssClass="text-danger" Display="Dynamic" 
                        ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">City:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" 
                        ErrorMessage="Billing city" Text="City is Required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">State:</label>
                <div class="col-sm-5">
                    <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" 
                        AppendDataBoundItems="True">
                        <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                        <asp:ListItem>AL</asp:ListItem>
                        <asp:ListItem>AK</asp:ListItem>
                        <asp:ListItem>AZ</asp:ListItem>
                        <asp:ListItem>AR</asp:ListItem>
                        <asp:ListItem>CA</asp:ListItem>
                        <asp:ListItem>CO</asp:ListItem>
                        <asp:ListItem>CT</asp:ListItem>
                        <asp:ListItem>DE</asp:ListItem>
                        <asp:ListItem>FL</asp:ListItem>
                        <asp:ListItem>GA</asp:ListItem>
                        <asp:ListItem>HI</asp:ListItem>
                        <asp:ListItem>ID</asp:ListItem>
                        <asp:ListItem>IL</asp:ListItem>
                        <asp:ListItem>IN</asp:ListItem>
                        <asp:ListItem>IA</asp:ListItem>
                        <asp:ListItem>KS</asp:ListItem>
                        <asp:ListItem>KY</asp:ListItem>
                        <asp:ListItem>LA</asp:ListItem>
                        <asp:ListItem>ME</asp:ListItem>
                        <asp:ListItem>MD</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>MI</asp:ListItem>
                        <asp:ListItem>MN</asp:ListItem>
                        <asp:ListItem>MS</asp:ListItem>
                        <asp:ListItem>MO</asp:ListItem>
                        <asp:ListItem>MT</asp:ListItem>
                        <asp:ListItem>NE</asp:ListItem>
                        <asp:ListItem>NV</asp:ListItem>
                        <asp:ListItem>NH</asp:ListItem>
                        <asp:ListItem>NJ</asp:ListItem>
                        <asp:ListItem>NM</asp:ListItem>
                        <asp:ListItem>NY</asp:ListItem>
                        <asp:ListItem>NC</asp:ListItem>
                        <asp:ListItem>ND</asp:ListItem>
                        <asp:ListItem>OH</asp:ListItem>
                        <asp:ListItem>OK</asp:ListItem>
                        <asp:ListItem>OR</asp:ListItem>
                        <asp:ListItem>PA</asp:ListItem>
                        <asp:ListItem>RI</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>SD</asp:ListItem>
                        <asp:ListItem>TN</asp:ListItem>
                        <asp:ListItem>TX</asp:ListItem>
                        <asp:ListItem>UT</asp:ListItem>
                        <asp:ListItem>VT</asp:ListItem>
                        <asp:ListItem>VA</asp:ListItem>
                        <asp:ListItem>WA</asp:ListItem>
                        <asp:ListItem>WV</asp:ListItem>
                        <asp:ListItem>WI</asp:ListItem>
                        <asp:ListItem>WY</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" 
                        ErrorMessage="Billing state" Text="State is Required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="ddlState"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Zip code:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvZip" runat="server" 
                        ErrorMessage="Billing zip code" Text="Zip Code is Required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtZip"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revZip" runat="server"
                        ErrorMessage="Billing zip code" Text="Use this format: 99999 or 99999-9999" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtZip" 
                        ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                </div>
            </div>  

           
            <div class="form-group">
                <label class="control-label col-sm-3">Phone Number:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtPhone">Phone Number is Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                        ControlToValidate="txtPhone">Use this format: 999-999-9999</asp:RegularExpressionValidator>
                </div>
            </div>

            <h2>Billing Information</h2>

            <div class="form-group">
                <label class="control-label col-sm-3">First Name:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtFirstNameBilling" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvFirstNameBilling" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtFirstNameBilling">First Name is required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Last Name:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtLastNameBilling" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvLastNameBilling" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtLastNameBilling">Last Name is Required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3" style="height: 20px">Email Address:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtEmailBilling" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvEmailBilling" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtEmailBilling">Email Address Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmailBilling" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControltoValidate="txtEmailBilling">Must be a valid email address</asp:RegularExpressionValidator>
                </div>
            </div>    
            <div class="form-group">
                <label class="control-label col-sm-3">Address:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtAddressBilling" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvAddressBilling" runat="server" 
                        ErrorMessage="Billing address" Text="Address is Required"
                        CssClass="text-danger" Display="Dynamic" 
                        ControlToValidate="txtAddressBilling"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">City:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtCityBilling" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvCityBilling" runat="server" 
                        ErrorMessage="Billing city" Text="City is Required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtCityBilling"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">State:</label>
                <div class="col-sm-5">
                    <asp:DropDownList ID="ddlStateBilling" runat="server" CssClass="form-control" 
                        AppendDataBoundItems="True">
                        <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                        <asp:ListItem>AL</asp:ListItem>
                        <asp:ListItem>AK</asp:ListItem>
                        <asp:ListItem>AZ</asp:ListItem>
                        <asp:ListItem>AR</asp:ListItem>
                        <asp:ListItem>CA</asp:ListItem>
                        <asp:ListItem>CO</asp:ListItem>
                        <asp:ListItem>CT</asp:ListItem>
                        <asp:ListItem>DE</asp:ListItem>
                        <asp:ListItem>FL</asp:ListItem>
                        <asp:ListItem>GA</asp:ListItem>
                        <asp:ListItem>HI</asp:ListItem>
                        <asp:ListItem>ID</asp:ListItem>
                        <asp:ListItem>IL</asp:ListItem>
                        <asp:ListItem>IN</asp:ListItem>
                        <asp:ListItem>IA</asp:ListItem>
                        <asp:ListItem>KS</asp:ListItem>
                        <asp:ListItem>KY</asp:ListItem>
                        <asp:ListItem>LA</asp:ListItem>
                        <asp:ListItem>ME</asp:ListItem>
                        <asp:ListItem>MD</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>MI</asp:ListItem>
                        <asp:ListItem>MN</asp:ListItem>
                        <asp:ListItem>MS</asp:ListItem>
                        <asp:ListItem>MO</asp:ListItem>
                        <asp:ListItem>MT</asp:ListItem>
                        <asp:ListItem>NE</asp:ListItem>
                        <asp:ListItem>NV</asp:ListItem>
                        <asp:ListItem>NH</asp:ListItem>
                        <asp:ListItem>NJ</asp:ListItem>
                        <asp:ListItem>NM</asp:ListItem>
                        <asp:ListItem>NY</asp:ListItem>
                        <asp:ListItem>NC</asp:ListItem>
                        <asp:ListItem>ND</asp:ListItem>
                        <asp:ListItem>OH</asp:ListItem>
                        <asp:ListItem>OK</asp:ListItem>
                        <asp:ListItem>OR</asp:ListItem>
                        <asp:ListItem>PA</asp:ListItem>
                        <asp:ListItem>RI</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>SD</asp:ListItem>
                        <asp:ListItem>TN</asp:ListItem>
                        <asp:ListItem>TX</asp:ListItem>
                        <asp:ListItem>UT</asp:ListItem>
                        <asp:ListItem>VT</asp:ListItem>
                        <asp:ListItem>VA</asp:ListItem>
                        <asp:ListItem>WA</asp:ListItem>
                        <asp:ListItem>WV</asp:ListItem>
                        <asp:ListItem>WI</asp:ListItem>
                        <asp:ListItem>WY</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvStateBilling" runat="server" 
                        ErrorMessage="Billing state" Text="State is Required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="ddlStateBilling"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Zip code:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtZipBilling" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvZipBilling" runat="server" 
                        ErrorMessage="Billing zip code" Text="Zip Code is Required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtZipBilling"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revZipBilling" runat="server"
                        ErrorMessage="Billing zip code" Text="Use this format: 99999 or 99999-9999" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtZipBilling" 
                        ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                </div>
            </div>  

           
            <div class="form-group">
                <label class="control-label col-sm-3">Phone Number:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtPhoneBilling" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvPhoneBilling" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtPhoneBilling">Phone Number is Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhoneBilling" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                        ControlToValidate="txtPhoneBilling">Use this format: 999-999-9999</asp:RegularExpressionValidator>
                </div>
            </div>


















             <h3>Payment Information</h3>

            <div class="form-group">
                <label class="control-label col-sm-3">Card Type:</label>
                <div class="col-sm-5">
                    <asp:DropDownList ID="ddlCardType" runat="server" AppendDataBoundItems="True" CssClass="form-control">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Mastercard</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                        <asp:ListItem>Paypal</asp:ListItem>
                    </asp:DropDownList>
                </div>
               <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvCardType" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="ddlCardType">Card Type is Required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Name on Card:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtNameOnCard" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvNameOnCard" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtNameOnCard">Name on Card is Required</asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Card Number</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtCardNumber">Card Number is Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revCardNumber" runat="server" ControlToValidate="txtCardNumber" CssClass="text-danger" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="\d{16}">Should be a 16 digit number</asp:RegularExpressionValidator>
                </div>
            </div>


            <div class="form-group">
                <label class="control-label col-sm-3">Expiration Date:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB" CssClass="text-danger" Display="Dynamic" ErrorMessage="RequiredFieldValidator">Expiration Date is Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revDOB" runat="server" 
                        ErrorMessage="Date of birth" CssClass="text-danger"
                        Display="Dynamic" ValidationExpression="[01]?\d\/[0-3]\d/\d{4}"
                        ControlToValidate="txtDOB">Use this format: mm/dd/yyyy</asp:RegularExpressionValidator>
                </div>
            </div>        

            <div class="form-group">
                <label class="control-label col-sm-3">CSV:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtCSV" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvCSV" runat="server" 
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="txtCSV">CSV is required</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvCSV" runat="server" ControlToValidate="txtCSV" CssClass="text-danger" Display="Dynamic" ErrorMessage="RangeValidator" MaximumValue="999" MinimumValue="0" Type="Integer">The CSV number is located on the back of your card and is a 3 digit number</asp:RangeValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lblSubmitMessage" runat="server" EnableViewState="False" CssClass="text-info col-sm-12"></asp:Label>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-12">
                    <asp:Button ID="btnCheckout" runat="server" Text="Checkout" CssClass="btn btn-basic" OnClick="btnCheckout_Click" />
                </div>
            </div>     
        </div>
    </div>
</asp:Content>
