<%@ Page Title="Service" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="Service.aspx.cs" Inherits="Techie.View.Service" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .TxtFillContent {
            width:99.71%;
        }
    </style>
    <div id="MustLogin" align="center" style="padding-top:10vh;padding-bottom:10vh" runat="server">
        <asp:Label ID="LblCantOpen" runat="server" Text="Ouch... You must be login to continue. Please Login" /><br />
        <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="btn" OnClick="BtnLogin_Click"/>
    </div>
    <div>
        <h1 style="text-align:center"> Reparation Services</h1><br />
        <div id="MenuReparation" class="row" runat="server">
            <div class="col-xs-6">
                <img src="../Assets/img/banner/BannerRepair.jpg" style="height:30vh; position:page; top:200px;"/><br /><br /><br />
                <h1 style="text-align:center">
                    We offer an unmatched level of 24/7 support, with Techie ready to help you online, on the phone, in your home, whenever, wherever you are.
                </h1>
            </div>
            <div class="col-xs-6">
                <h1>Hello, Welcome to tech.ie, let's settle your problem now!</h1>
                 
                <br />
                <asp:Label ID="LabelBrand" runat="server" Text="Brand"></asp:Label><br />
                <asp:TextBox ID="TxtBrand" runat="server" AutoCompleteType="None" autocomplete="off" CssClass="TxtFillContent" placeholder="Enter Brand of Your Device"></asp:TextBox>
                 <br />

                 <asp:Label ID="LabelType" runat="server" Text="Laptop Type"></asp:Label><br />
                 <asp:TextBox ID="TxtName" runat="server" AutoCompleteType="None" autocomplete="off" CssClass="TxtFillContent" placeholder="Enter Your Laptop Type"></asp:TextBox>

                <br />
                <asp:Label ID="LabelProblemInfo" runat="server" Text="Problem Info"></asp:Label><br />

                <asp:TextBox ID="TxtProblemInfo" runat="server" AutoCompleteType="None" autocomplete="off" CssClass="TxtFillContent" style="height:15vh;" TabIndex="13" placeholder="Enter Your Problem"></asp:TextBox>
                <br />


                <asp:Button ID="BtnSubmitReparation" runat="server" Text="Submit Reparation" CssClass="btn" OnClick="BtnSubmitReparation_Click" /><br />
                <asp:Label ID="SuccessMessage" runat="server" Text=" "></asp:Label>
            </div>

            <asp:GridView ID="GridView1" runat="server"></asp:GridView>

        </div>
    </div>
    
</asp:Content>
