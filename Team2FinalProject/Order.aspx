<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Team2FinalProject.Order" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="row"><%-- row 1: drop-down list --%>
        <div class="form-group">
            <div class="col-sm-8">
                <label class="col-sm-5">Please select a product:</label>
                <div class="col-sm-6">
                    <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="Name" 
                        DataValueField="ProductID" CssClass="form-control" OnSelectedIndexChanged="ddlProducts_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString='<%$ ConnectionStrings:IMConnection %>' 
                        SelectCommand="SELECT [ProductID], [Name], [ShortDescription], 
                        [LongDescription], [ImageFile], [UnitPrice] FROM [Products] 
                        ORDER BY [Name]">
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div><%-- end of row 1 --%>

    <div class="row"><%-- row 2: FormView control --%>
        <asp:FormView ID="FormView1" runat="server" 
            DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <div class="col-sm-12"><%-- info column --%>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <h4><asp:Label Text='<%# Eval("Name") %>' runat="server" /></h4>
                        </div></div>
                    <div class="col-sm-12"><%-- product image column --%>
                    <asp:Image ID="imgProduct" runat="server" 
                        ImageUrl='<%# Eval("ImageFile", "Images/Products/{0}") %>' />
                </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label Text='<%# Eval("ShortDescription") %>' runat="server" />
                        </div></div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label Text='<%# Eval("LongDescription") %>' runat="server" />
                        </div></div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label ID="lblUnitPrice" ClientIDMode="Static" 
                                Text='<%# Eval("UnitPrice", "{0:c} each") %>' runat="server" />
                        </div></div>
                </div>
                
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource2" 
            ConnectionString='<%$ ConnectionStrings:IMConnection %>' 
            SelectCommand="SELECT [ProductID], [Name], [ShortDescription], 
                [LongDescription], [ImageFile], [UnitPrice] 
                FROM [Products] 
            WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlProducts" Name="ProductID" 
                    PropertyName="SelectedValue" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div><%-- end of row 2 --%>

    <div class="row"><%-- row 3: quantity, buttons --%>
        <div class="col-sm-12">
            <div class="form-group">
                <label class="col-sm-1">Quantity:</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtQuantity" runat="server" 
                        CssClass="form-control"></asp:TextBox></div>
                <div class="col-sm-8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger"
                        runat="server" ControlToValidate="txtQuantity" Display="Dynamic" 
                        ErrorMessage="Quantity is a required field."></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-danger" 
                        ControlToValidate="txtQuantity" Display="Dynamic" 
                        ErrorMessage="Quantity must range from 1 to 500."
                        MaximumValue="500" MinimumValue="1" Type="Integer"></asp:RangeValidator></div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" 
                        onclick="btnAdd_Click" CssClass="btn" />
                    <asp:Button ID="btnCart" runat="server" Text="Go to Cart" 
                        PostBackUrl="~/Cart" CausesValidation="False" CssClass="btn" />
                </div>
            </div>
        </div>
    </div><%-- end of row 3 --%>

</asp:Content>