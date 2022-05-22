<%@ Page Title="Login" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Techie.View.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1></h1>
    </div>
    <div class="row">
        <div class="col-md-6">
            <h2 style="text-align:center">Login into existing Tech.ie account!</h2>
            <div>
                <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label><br />
                <asp:TextBox ID="TxtEmail" runat="server"  AutoCompleteType="None" autocomplete="off" TextMode="Email"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="LblPassword" runat="server" Text="Password"></asp:Label><br />
                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" AutoCompleteType="None" autocomplete="off"></asp:TextBox>
            </div>
            <div>
                <asp:CheckBox ID="RememberMe" runat="server" Text="Remember Me" style="margin-bottom:20px"/></div>
            <div>
                <asp:Label ID="LblMessage" ForeColor="Red" runat="server"></asp:Label><br />
                <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="btn btn-default" OnClick="BtnLogin_Click" />
            </div>
            <%--<hr />
            or Login into existing Tech.ie store account ?
            <asp:Button ID="BtnLoginStorePage" runat="server" Text="Login to store account" CssClass="btn btn-default" OnClick="BtnLoginStorePage_Click" />
             --%>   
            </div>
        <div align="center" class="col-md-6">
            <h2>Doesn't have an account ?<br /></h2>
            <img src="../Assets/img/banner/bannerRegUser.jpg"  style="height:300px"/><br />
            <asp:Button ID="RegistBtn" runat="server" Text="Join Us!" CssClass="btn btn-default" OnClick="RegistBtn_Click" />
        </div>
        <%--<div align="center" class="col-md-4">
            <h2>Want to join us, and get a smooth income? <br /></h2>
            <img src="../Assets/img/banner/BannerRegStore.jpg"  style="height:300px"/><br />
            <asp:Button ID="StoreRegisterBtn" runat="server" Text="Open a Store!" CssClass="btn btn-default" OnClick="StoreRegisterBtn_Click" />
        </div>--%>
    </div>
</asp:Content>
