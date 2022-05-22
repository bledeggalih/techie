<%@ Page Title="Store Login" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="LoginStore.aspx.cs" Inherits="Techie.View.StoreLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div></div>
    <div align="center" class="row">
        <div class="col-xs-6">
            <h3>Login into existing Tech.ie store account</h3>
            <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox ID="TxtEmail" runat="server"  AutoCompleteType="None" autocomplete="off" TextMode="Email"></asp:TextBox>
            
            <br />
            <asp:Label ID="LblPassword" runat="server" Text="Password"></asp:Label><br />
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" AutoCompleteType="None" autocomplete="off"></asp:TextBox>
           
            <br />
            <asp:CheckBox ID="RememberMe" runat="server" Text="Remember Me" style="margin-bottom:20px"/>
            <br />
            <asp:Label ID="LblMessage" ForeColor="Red" runat="server"></asp:Label><br />
            <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="btn btn-default" OnClick="BtnLogin_Click" />
            <hr />
            <h4>Dont have a store account?</h4>
            <asp:Button ID="BtnRegisterStore" runat="server" Text="Register" CssClass="btn btn-default" OnClick="BtnRegisterStore_Click" />
            
        </div>
        <div class="col-xs-6">

        </div>
    </div>
</asp:Content>
