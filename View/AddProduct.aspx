<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Techie.View.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div>
        <h1>Add Product</h1>
    </div>
    <div>
        <div>
            <asp:Label ID="LblProductName" runat="server" Text="Product Name"></asp:Label><br />
            <asp:TextBox ID="TxtProductName" runat="server"  AutoCompleteType="None" autocomplete="off"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFValidatorProductName" ForeColor="Red" runat="server" ErrorMessage="Product Name must be filled!" ControlToValidate="TxtProductName"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="LblProductPrice" runat="server" Text="Product Price"></asp:Label><br />
            <asp:TextBox ID="TxtProductPrice" runat="server" AutoCompleteType="None" autocomplete="off"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFValidatorProductPrice" ForeColor="Red" runat="server" ErrorMessage="Product Price must be filled!" ControlToValidate="TxtProductPrice"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="LblProductStock" runat="server" Text="Product Stock"></asp:Label><br />
            <asp:TextBox ID="TxtProductStock" runat="server" AutoCompleteType="None" autocomplete="off"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFValidatorProductStock" ForeColor="Red" runat="server" ErrorMessage="Product Stock must be filled!" ControlToValidate="TxtProductStock"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidatorProductStock" runat="server" ForeColor="Red" ErrorMessage="Product Stock must greater than zero!" OnServerValidate="CustomValidatorProductStock_ServerValidate"></asp:CustomValidator>
        </div>
        <div>
            <asp:Label ID="LblProductPicture" runat="server" Text="Product Picture"></asp:Label><br />
            <asp:FileUpload ID="FileUploadProductPicture" runat="server" />
            <asp:RequiredFieldValidator ID="RFValidatorProductPicture" ForeColor="Red" runat="server" ErrorMessage="You must upload product's picture!" ControlToValidate="FileUploadProductPicture"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegexValidatorProductPicture" ForeColor="Red" runat="server" ErrorMessage="Image extension must be .jpg or .png!" ControlToValidate="FileUploadProductPicture" ValidationExpression="^.*\.(jpg|png)"></asp:RegularExpressionValidator>
        </div>
        <div style="margin-top: 15px">
            <asp:Button ID="BtnAddProduct" runat="server" Text="Add Product" CssClass="btn btn-default" OnClick="BtnAddProduct_Click"/>
            <asp:Label ID="LblMessage"  runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
