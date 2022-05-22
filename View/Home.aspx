<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Techie.Home" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .grid12-6{
  position:relative;
}
.grid12-6 .inner_box{
  position:absolute;
  background:rgba(255,255,255,0.7);
  top:50%;
  left:50%;
  transform:translate(-50%,-50%);
  padding:35px;
  text-align:center;
}
.grid12-6 .inner_box h2{
  font-family:arial;
  text-align:center;
  font-size:26px;
  font-weight:normal;
  color:black;
}
.grid12-6 .inner_box button{
  background:#aaa;
  color:#fff;
  text-transform:uppercase;
  font-weight:bold;
  font-size:16px;
  border:none;
  padding:10px 30px;
}

    </style>
    <div class="jumbotron">
        <div class="grid12-6">
            <img src="../Assets/img/banner/BannerRepairing.png" style="width:100%;"/>
            <div class="inner_box" style="float:left">
                <h1>Tech.ie</h1>
                <h2 class="lead" style="text-align:justify">We offer an unmatched level of 24/7 support, with Techie ready to help you online, on the phone, in your home, whenever, wherever you are.</h2>
                <asp:Button ID="PrimaryBtn" CssClass="btn btn-primary btn-lg" runat="server" Text="Learn more &raquo;" OnClick="PrimaryBtn_Click"/>
            </div>
        </div>
        
    </div>
    <div></div>
    <div class="row" style="text-align:center">
        <div>
            <h1 style="text-align:center">WHY SHOULD YOU CHOOSE REPARATIONS AT US?</h1>
        </div>
        <div class="col-md-4">
            <img src="../Assets/img/banner/BannerEasy.png" style="height:200px;width:200px"/>
            <h2>Easy To Claim</h2>
            <p>
                <asp:button ID="BtnEasy" runat="server" Text="Learn more &raquo;" CssClass="btn btn-default" OnClick="BtnEasy_Click"/>
            </p>
        </div>
        <div class="col-md-4">
            <img src="../Assets/img/banner/BannerGuarantee.png"  style="height:200px;width:200px"/>
            <h2>4 Month Warranty</h2>
            <p>
                <asp:button ID="BtnGuarantee" runat="server" Text="Learn more &raquo;" CssClass="btn btn-default" OnClick="BtnGuarantee_Click"/>
            </p>
        </div>
        <div class="col-md-4">
            <img src="../Assets/img/banner/BannerQuality.png"  style="height:200px;width:300px"/>
            <h2>Quality Product</h2>
            <p>
                <asp:button ID="BtnQuality" runat="server" Text="Learn more &raquo;" CssClass="btn btn-default" OnClick="BtnQuality_Click"/>
            </p>
        </div>
    </div>
    <%--Banner Product Showcase--%>
    <%--Banner 1--%>
        <div class="row" style="text-align:center">
            <div class="col-xs-6">
                <img src="../Assets/img/banner/BannerGamingProduct.png" style="width:100%;float:left;"/>
                <div class="text-block">
                    <h5>More 6+ our merchant products.</h5>
                </div>
            </div>
            <div class="col-xs-6" style="text-align:center;">
                <h1>We can handle the gaming product</h1><hr /><br />
                <h3>Is your gaming laptop overheating? Broken fan? RGB keyboard error? We can overcome those problems.</h3>
            </div>
        </div>
    <hr />
        <div class="row" style="text-align:center">
            <div class="col-xs-6">
                <h1>Products That We Guarantee For 4 Month</h1><hr /><br />
                <h3>Calm down, if after repairing your laptop is damaged again. We guarantee it all for 4 months</h3>
            </div>
            <div class="col-xs-6">
                <img src="../Assets/img/banner/BannerProduct.png" style="width:100%; float:right;"/>
                <div class="text-block">
                    <h5>More 10+ our merchant for Laptop/PC.</h5>
                </div>
            </div>
            
        </div>
        <hr />
        <div class="row" style="text-align:center">
            <div class="col-xs-6">
                <img src="../Assets/img/banner/BannerSparepart.png" style="width:100%; float:Left;"/>
                <div class="text-block">
                    <h5>More 20+ our good sparepart products.</h5>
                </div>
            </div>
            <div class="col=xs-6">
                <h1>We Use Good Quality Sparepart Products</h1><hr /><br />
                <h3>we always use the best parts for customer satisfaction and to support the strength of our products</h3>
            </div>
        </div>
    
        
    

</asp:Content>
