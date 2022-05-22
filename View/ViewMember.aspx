<%@ Page Title="View Account" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="ViewMember.aspx.cs" Inherits="Techie.View.ViewMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        * {
            box-sizing: border-box;
        }
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 300px;
            margin: auto;
            text-align: center;
            font-family: arial;
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
        <h1>Tech.ie Member List</h1>
    </div>
    <div class="row">
        <asp:ListView ID="ListViewMember" runat="server"  DataKeyNames="UserId">
        <ItemTemplate>
            <div class="column">
                <div class="card">
                    <img src='<%#string.Format("~/Image_Data/User/{0}",Eval("UserProfilePicture"))%>' runat="server" style="width:200px; height:200px;margin-right:15px"/>
                    <h3><%#Eval("UserName")%></h3>
                    <h4><%#Eval("UserEmail")%> - <%#Eval("UserRole")%></h4>
                    <h5><%#Eval("UserPhoneNumber")%></h5>
                    <p><%#Eval("UserGender")%></p>
                    <p><%#Eval("UserBirthDate")%></p>
                    <p><%#Eval("UserAddress")%></p>
                    <p></p>
                    <p></p>
                    <%--<asp:Button ID="BtnPromoteMember" runat="server" Text="Promote to Admin" OnClick="BtnPromoteMember_Click"/>
                    <asp:Button ID="BtnSetSeller" runat="server" Text="Promote to Seller" OnClick="BtnSetSeller_Click"/>
                    <asp:Button ID="BtnDeleteMember" runat="server" Text="Delete Account" OnClick="BtnDeleteMember_Click"/>
                    <asp:Button ID="BtnDownMember" runat="server" Text="Downgrade Account" OnClick="BtnDownMember_Click"/>--%>
                </div>
            </div>
        </ItemTemplate>
    </asp:ListView></div>
     <%--<asp:ListView ID="ListViewMember" runat="server" DataKeyNames="UserId">
         <ItemTemplate>
             <div>
                 <table>
                     <tr>
                        <td>
                            <img src='<%#string.Format("~/Image_Data/User/{0}",Eval("UserProfilePicture"))%>' runat="server" style="width:200px; height:200px;margin-right:15px"/>
                        </td>
                         <td style="text-align:left; width:100%">
                              <pre>Name       : <%#Eval("UserName")%></pre>
                              <pre>Email      : <%#Eval("UserEmail")%></pre>
                              <pre>Gender     : <%#Eval("UserGender")%></pre>
                              <pre>BirthDate  : <%#Eval("UserBirthDate")%></pre>
                              <pre>PhoneNumber: <%#Eval("UserPhoneNumber")%></pre>
                              <pre>Adress     : <%#Eval("UserAddress")%></pre>
                              <pre>Role       : <%#Eval("UserRole")%></pre>             
                        </td>
                     </tr>

                 </table>
             </div>
             <hr />
         </ItemTemplate>
     </asp:ListView>--%>

    <div style="margin-top:30px;margin-bottom:30px">
        <table>
            <tr><td><asp:Label ID="LblEmail" Text="Member Email" runat="server"></asp:Label></td></tr>
            <tr><td><asp:TextBox id="TxtEmail" runat="server" style="width:305px" AutoCompleteType="None" autocomplete="off"></asp:TextBox></td></tr>
            <tr><td>
                <asp:Button ID="BtnPromoteMember" runat="server" Text="Promote to Admin" CssClass="btn" OnClick="BtnPromoteMember_Click"/>
                <asp:Button ID="BtnSetSeller" runat="server" Text="Promote to Seller" CssClass="btn" OnClick="BtnSetSeller_Click"/>
                
            </td></tr>
            <tr><td>
                <asp:Button ID="BtnDeleteMember" runat="server" Text="Delete Account" CssClass="btn" OnClick="BtnDeleteMember_Click"/>
                <asp:Button ID="BtnDownMember" runat="server" Text="Downgrade Account" CssClass="btn" OnClick="BtnDownMember_Click"/>

                </td></tr>
        </table>
    </div>
</asp:Content>
