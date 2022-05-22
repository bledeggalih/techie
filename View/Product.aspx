<%@ Page Title="Product" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Techie.View.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >
    <style>
        * {
            box-sizing:border-box;
        }
        a {
            color:black;
            text-decoration:none;
            text-decoration-color:black;
        }
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 300px;
            margin: auto;
            text-align: center;
            font-family: arial;
        }

        .price {
          color: grey;
          font-size: 22px;
        }

        .card button {
          border: none;
          outline: 0;
          padding: 12px;
          color: white;
          background-color: #000;
          text-align: center;
          cursor: pointer;
          width: 100%;
          font-size: 18px;
        }

        .card button:hover {
          opacity: 0.7;
        }
        .column {
          float: left;
          width: 25%;
          padding: 0 10px;
          padding-bottom:10px;
        }
        .row {margin: 0 -5px;}
        .row:after {
          content: "";
          display: table;
          clear: both;
        }
        @media screen and (max-width: 600px) {
          .column {
            width: 100%;
            display: block;
            margin-bottom: 20px;
          }
        }
    </style>
    <div>
        <h1>Our Best Products</h1>
    </div>
    <div id="MenuAddProduct" class="ui item" style="margin-top:30px;margin-bottom:30px" runat="server">
        <h3>Add New Product</h3>
        <asp:Button ID="BtnAddProduct" CausesValidation="false" runat="server" Text="Add Product" CssClass="btn" OnClick="BtnAddProduct_Click"/>
    </div>
    <%--<asp:ListView ID="ListViewProduct" runat="server"  DataKeyNames="ProductId">
         <ItemTemplate>
             <div>
                 <table>
                     <tr>
                        <td>
                            <img src='<%#string.Format("~/Image_Data/Product/{0}",Eval("ProductPicture"))%>' runat="server" style="width:200px; height:200px;margin-right:15px"/>
                        </td>
                         <td style="text-align:left; width:100%">
                            <pre>Model Number  : <%#Eval("ProductId")%></pre>
                            <pre>Name          : <%#Eval("ProductName")%></pre>
                            <pre>Price         : <%#Eval("ProductPrice")%></pre>
                            <pre>Stock         : <%#Eval("ProductStock")%></pre>     
                        </td>
                     </tr>
                 </table>
             </div>
             <hr />
         </ItemTemplate>
     </asp:ListView>--%>
    <div class="row">
        <asp:ListView ID="ListViewProduct" runat="server"  DataKeyNames="ProductId">
        <ItemTemplate>
            <div class="column">
                <div class="card">
                    <img src='<%#string.Format("~/Image_Data/Product/{0}",Eval("ProductPicture"))%>' runat="server" style="width:200px; height:200px;margin-right:15px"/>
                    <h3><%#Eval("ProductName")%></h3>
                    <p id="viewProdId"><%#Eval("ProductId")%></p>
                    <p class="price">Rp.<%#Eval("ProductPrice")%>,-</p>
                    <p>Some text about the products</p>
                    <p><button>Add to Cart</button></p>
                </div>
            </div>
        </ItemTemplate>
    </asp:ListView></div>
    

    <div id="MenuModifyProduct" style="margin-top:30px;margin-bottom:30px" runat="server">
        <table>
            <tr><td><asp:Label ID="LblProductId" Text="Product Id/Model Number" runat="server"></asp:Label></td></tr>
            <tr><td><asp:TextBox ID="TxtProductId" runat="server" Style="width:295px"  AutoCompleteType="None" autocomplete="off"></asp:TextBox></td></tr>
            <asp:RequiredFieldValidator ID="RFValidatorProductId" runat="server" ErrorMessage="Please select product by it's id/model number!" ControlToValidate="TxtProductId"></asp:RequiredFieldValidator>
            <tr><td>
                <asp:Button ID="BtnUpdateProduct" runat="server" Text="Update Product" CssClass="btn" OnClick="BtnUpdateProduct_Click"/>
                <asp:Button ID="BtnDeleteProduct" runat="server" Text="Delete Product" CssClass="btn" OnClick="BtnDeleteProduct_Click"/></td></tr>
        </table>
    </div>
</asp:Content>
