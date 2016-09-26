<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Bindning_sql_test1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FAFAD2;color: #284775;">ProductId:
                    <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                    <br />ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    <br />ProductBrandId:
                    <asp:Label ID="ProductBrandIdLabel" runat="server" Text='<%# Eval("ProductBrandId") %>' />
                    <br />ProductPrice:
                    <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Eval("ProductPrice") %>' />
                    <br />ProductDescription:
                    <asp:Label ID="ProductDescriptionLabel" runat="server" Text='<%# Eval("ProductDescription") %>' />
                    <br />ProductSizeId:
                    <asp:Label ID="ProductSizeIdLabel" runat="server" Text='<%# Eval("ProductSizeId") %>' />
                    <br />ProductCategoryId:
                    <asp:Label ID="ProductCategoryIdLabel" runat="server" Text='<%# Eval("ProductCategoryId") %>' />
                    <br />ImgUrl:
                    <asp:Label ID="ImgUrlLabel" runat="server" Text='<%# Eval("ImgUrl") %>' />
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #FFCC66;color: #000080;">ProductId:
                    <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
                    <br />ProductName:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />ProductBrandId:
                    <asp:TextBox ID="ProductBrandIdTextBox" runat="server" Text='<%# Bind("ProductBrandId") %>' />
                    <br />ProductPrice:
                    <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                    <br />ProductDescription:
                    <asp:TextBox ID="ProductDescriptionTextBox" runat="server" Text='<%# Bind("ProductDescription") %>' />
                    <br />ProductSizeId:
                    <asp:TextBox ID="ProductSizeIdTextBox" runat="server" Text='<%# Bind("ProductSizeId") %>' />
                    <br />ProductCategoryId:
                    <asp:TextBox ID="ProductCategoryIdTextBox" runat="server" Text='<%# Bind("ProductCategoryId") %>' />
                    <br />ImgUrl:
                    <asp:TextBox ID="ImgUrlTextBox" runat="server" Text='<%# Bind("ImgUrl") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">ProductName:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />ProductBrandId:
                    <asp:TextBox ID="ProductBrandIdTextBox" runat="server" Text='<%# Bind("ProductBrandId") %>' />
                    <br />ProductPrice:
                    <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                    <br />ProductDescription:
                    <asp:TextBox ID="ProductDescriptionTextBox" runat="server" Text='<%# Bind("ProductDescription") %>' />
                    <br />ProductSizeId:
                    <asp:TextBox ID="ProductSizeIdTextBox" runat="server" Text='<%# Bind("ProductSizeId") %>' />
                    <br />ProductCategoryId:
                    <asp:TextBox ID="ProductCategoryIdTextBox" runat="server" Text='<%# Bind("ProductCategoryId") %>' />
                    <br />ImgUrl:
                    <asp:TextBox ID="ImgUrlTextBox" runat="server" Text='<%# Bind("ImgUrl") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #FFFBD6;color: #333333;">ImgUrl:
                    <asp:Label ID="ImgUrlLabel" runat="server" Text='<%# Eval("ImgUrl") %>' />
                    <br />
                    ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                    <br />
                    ProductBrandId:
                    <asp:Label ID="ProductBrandIdLabel" runat="server" Text='<%# Eval("ProductBrandId") %>'></asp:Label>
                    <br />
                    ProductPrice:
                    <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                    <br />
                    ProductDescription:
                    <asp:Label ID="ProductDescriptionLabel" runat="server" Text='<%# Eval("ProductDescription") %>'></asp:Label>
                    <br />
                    ProductSizeId:
                    <asp:Label ID="ProductSizeIdLabel" runat="server" Text='<%# Eval("ProductSizeId") %>'></asp:Label>
                    <br />
                    ProductCategoryId:
                    <asp:Label ID="ProductCategoryIdLabel" runat="server" Text='<%# Eval("ProductCategoryId") %>'></asp:Label>
                    <br />
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">ProductId:
                    <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                    <br />ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    <br />ProductBrandId:
                    <asp:Label ID="ProductBrandIdLabel" runat="server" Text='<%# Eval("ProductBrandId") %>' />
                    <br />ProductPrice:
                    <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Eval("ProductPrice") %>' />
                    <br />ProductDescription:
                    <asp:Label ID="ProductDescriptionLabel" runat="server" Text='<%# Eval("ProductDescription") %>' />
                    <br />ProductSizeId:
                    <asp:Label ID="ProductSizeIdLabel" runat="server" Text='<%# Eval("ProductSizeId") %>' />
                    <br />ProductCategoryId:
                    <asp:Label ID="ProductCategoryIdLabel" runat="server" Text='<%# Eval("ProductCategoryId") %>' />
                    <br />ImgUrl:
                    <asp:Label ID="ImgUrlLabel" runat="server" Text='<%# Eval("ImgUrl") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CasualShoesDBConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [Product] ([ProductName], [ProductBrandId], [ProductPrice], [ProductDescription], [ProductSizeId], [ProductCategoryId], [ImgUrl]) VALUES (@ProductName, @ProductBrandId, @ProductPrice, @ProductDescription, @ProductSizeId, @ProductCategoryId, @ImgUrl)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [ProductBrandId] = @ProductBrandId, [ProductPrice] = @ProductPrice, [ProductDescription] = @ProductDescription, [ProductSizeId] = @ProductSizeId, [ProductCategoryId] = @ProductCategoryId, [ImgUrl] = @ImgUrl WHERE [ProductId] = @ProductId">
            <DeleteParameters>
                <asp:Parameter Name="ProductId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductBrandId" Type="Int32" />
                <asp:Parameter Name="ProductPrice" Type="Decimal" />
                <asp:Parameter Name="ProductDescription" Type="String" />
                <asp:Parameter Name="ProductSizeId" Type="Int32" />
                <asp:Parameter Name="ProductCategoryId" Type="Int32" />
                <asp:Parameter Name="ImgUrl" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductBrandId" Type="Int32" />
                <asp:Parameter Name="ProductPrice" Type="Decimal" />
                <asp:Parameter Name="ProductDescription" Type="String" />
                <asp:Parameter Name="ProductSizeId" Type="Int32" />
                <asp:Parameter Name="ProductCategoryId" Type="Int32" />
                <asp:Parameter Name="ImgUrl" Type="String" />
                <asp:Parameter Name="ProductId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
