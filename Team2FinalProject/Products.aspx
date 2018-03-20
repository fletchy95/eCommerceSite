<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Team2FinalProject.Products" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <style>
        .textButton 
        {
            background:none;
            border:none;
            margin:0;
            padding:0;
        }
    </style>
    <div class="row">
        <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src='/Images/Products/<%# Eval("ImageFile") %>' 
                            alt='<%# Eval("Name") %>'/>
                        <div class="caption">
                            <h3><%# Eval("Name") %></h3>
                            <p><b>Price: <%# Eval("UnitPrice", "{0:c}") %></b>
                            <br><br><%# Eval("LongDescription") %></p><br />
                            <asp:LinkButton ID="btnLink" runat="server" Text='<%# Eval("ProductID") %>' 
                                CommandName="ProductSend" CssClass="textButton" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <asp:SqlDataSource runat="server" ID="SqlDataSourceByCategory"
        ConnectionString='<%$ ConnectionStrings:IMConnection %>'
        SelectCommand="SELECT [ProductID], [Name], [LongDescription], 
        [UnitPrice], [ImageFile] FROM [Products] 
        WHERE ([CategoryID] = @CategoryID) ORDER BY [Name]">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="catID" 
                Name="CategoryID" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource runat="server" ID="SqlDataSourceAll"
        ConnectionString='<%$ ConnectionStrings:IMConnection %>'
        SelectCommand="SELECT [ProductID], [Name], [LongDescription], 
        [UnitPrice], [ImageFile] FROM [Products] ORDER BY [Name]">
    </asp:SqlDataSource>
    
</asp:Content>
