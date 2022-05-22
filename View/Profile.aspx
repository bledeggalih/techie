<%@ Page Title="Profile" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Techie.View.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
            height:300px;
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
        <div class="row">
            <div class="column">
                <div class="card">
                    <asp:Image ID="Image1" runat="server" style="height:20vh;margin-right:15px"/>
                    <h3><asp:Label ID="LblCurrentName" runat="server" /></h3>
                    <h4><asp:Label ID="LblCurrentEmail" runat="server" /> - <asp:Label ID="LblCurrentRole" runat="server"/></h4>
                    <h5><asp:Label ID="LblCurrentPhone" runat="server"/></h5>
                    <p><asp:Label ID="LblCurrentGender" runat="server"/></p>
                    <p><asp:Label ID="LblCurrentDBO" runat="server"/></p>
                    <p><asp:Label ID="LblCurrentAddress" runat="server"/></p>
                    <p></p>
                    <p></p>
                </div>
            </div>
            <div class="col-md-6">
                <table>
                    <tr>
                        <td>Name :</td>
                        <td><asp:Label ID="LblTableName" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Email :</td>
                        <td><asp:Label ID="LblTableEmail" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Phone :</td>
                        <td><asp:Label ID="LblTablePhone" runat="server" /></td>
                    </tr>
                    <tr>
                        <td>Address :</td>
                        <td><asp:Label ID="LblTableAddress" runat="server" /></td>
                    </tr>
                </table>
            </div>
        </div>
        
        <%--<div class="row">
            <div class="col-sm-3">
                <asp:Image ID="Image1" runat="server" style="height:20vh;margin-right:15px"/>
            </div>
            <div class="col-sm-6">
                <div class="row">
                    <div class="col-xs-6">
                    <div class="row">
                        <div class="col-xs-6">
                            Name
                        </div>
                        <div class="col-xs-6">
                            :<asp:Label ID="LblCurrentName" runat="server" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            Email
                        </div>
                        <div class="col-xs-6">
                            :<asp:Label ID="LblCurrentEmail" runat="server" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            Gender
                        </div>
                        <div class="col-xs-6">
                            :<asp:Label ID="LblCurrentGender" runat="server"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            Birth Date
                        </div>
                        <div class="col-xs-6">
                            :<asp:Label ID="LblCurrentDBO" runat="server"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            Phone Number
                        </div>
                        <div class="col-xs-6">
                            :<asp:Label ID="LblCurrentPhone" runat="server"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            Adress
                        </div>
                        <div class="col-xs-6">
                            :<asp:Label ID="LblCurrentAddress" runat="server"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            Role
                        </div>
                        <div class="col-xs-6">
                            :<asp:Label ID="LblCurrentRole" runat="server"/>
                        </div>
                    </div>
                </div>
                    <div class="col-xs-6">
                    </div>
                </div>
            </div>
        </div> --%>
        
    </div>
    <%--Change Password--%>
    <div style="text-align:left;margin-top:30px; margin-bottom:30px">
        <p style="font-size:2rem">Change Password</p>
        <%--Email--%>
        <div>
            <asp:Label ID="LblEmail" Text="Member Email" runat="server"></asp:Label><br />
            <asp:TextBox id="TxtEmail" runat="server" style="width:305px" AutoCompleteType="None" autocomplete="off"></asp:TextBox>
        </div>

        <%--Password--%>
                <div class="field">
                <asp:Label ID="LblPassworrd" runat="server" Text="Old Password:"></asp:Label><br />
                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" AutoCompleteType="None" autocomplete="off" style="width:305px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFValidatorOldPass" runat="server" ForeColor="Red" ErrorMessage="Please enter your old password!" ControlToValidate="TxtPassword"></asp:RequiredFieldValidator>
            </div>
        <%--New Password--%>
                <div class="field">
                <asp:Label ID="LblNewPassword" runat="server" Text="New Password:"></asp:Label><br />
                <asp:TextBox ID="TxtNewPassword" runat="server" TextMode="Password"  AutoCompleteType="None" autocomplete="off" style="width:305px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFValidatorNewPassword" ForeColor="Red" runat="server" ErrorMessage="New Pasword must be filled!" ControlToValidate="TxtNewPassword"></asp:RequiredFieldValidator>
            </div>
        <%--Confirm Password--%>
            <div class="field">
                <asp:Label ID="LblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label><br />
                <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"  AutoCompleteType="None" autocomplete="off" style="width:305px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFValidatorConfirmNewPassword" ForeColor="Red" runat="server" ErrorMessage="Confirm New Password must be filled!" ControlToValidate="TxtNewPassword"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CValidatorConfirmNewPassword" ForeColor="Red" runat="server" ErrorMessage="New Password and Confirm New Password must match!" ControlToValidate="TxtConfirmPassword" ControlToCompare="TxtNewPassword"></asp:CompareValidator>
            </div>
            <div>
                <asp:Button ID="BtnChangePassword" runat="server" Text="Change Password" CssClass="btn" OnClick="BtnChangePassword_Click"/> 
                <asp:Label ID="LblMessage"  runat="server"></asp:Label>
            </div>
        <%--Redirect--%>
        <div class="field" style="margin-bottom: 30px">
            <asp:Label ID="LblRedirect" Visible="false" Text="Redirecting to Profile in 3 seconds" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
