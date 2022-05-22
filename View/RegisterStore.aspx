<%@ Page Title="Registration Store" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="RegisterStore.aspx.cs" Inherits="Techie.View.RegisterStore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <div class="row">
                <div class="col-xs-6">
                    <img src="../Assets/img/banner/BannerRegStorePage.jpg" style="height:450px; position:relative; top:100px;"/>
                </div>
                <div class="col-xs-6">
                    <h3>Open a new store with us!</h3>
                    <%--Name--%>
                    <br />
                    <asp:Label ID="LabelName" runat="server" Text="Store Name"></asp:Label><br />
                    <asp:TextBox ID="TxtName" runat="server" AutoCompleteType="None" autocomplete="off" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" ForeColor="Red" runat="server" ErrorMessage="Username must be filled!" ControlToValidate="TxtName"></asp:RequiredFieldValidator>
        
                    <%--Email--%>
                    <br />
                    <asp:Label ID="LabelEmail" runat="server" Text="Store Email"></asp:Label><br />
                    <asp:TextBox ID="TxtEmail" runat="server" AutoCompleteType="None" autocomplete="off" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" ForeColor="Red" runat="server" ErrorMessage="Email must be filled!" ControlToValidate="TxtEmail"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidatorEmail" ForeColor="Red" runat="server" ErrorMessage="Email already used!" OnServerValidate="CustomValidatorEmail_ServerValidate"></asp:CustomValidator>
        
                    <%--Password--%>
                    <br />
                    <asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label><br />
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"  AutoCompleteType="None" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" ForeColor="Red" runat="server" ErrorMessage="Pasword must be filled!" ControlToValidate="TxtPassword"></asp:RequiredFieldValidator>
        
                    <%--Confirm Password--%>
                    <br />
                    <asp:Label ID="LabelConfirmPassword" runat="server" Text="Confirm Password"></asp:Label><br />
                    <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"  AutoCompleteType="None" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" ForeColor="Red" runat="server" ErrorMessage="Confirm Password must be filled!" ControlToValidate="TxtConfirmPassword"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorConfirmPassword" ForeColor="Red" runat="server" ErrorMessage="Password and Confirm Password must match!" ControlToValidate="TxtConfirmPassword" ControlToCompare="TxtPassword"></asp:CompareValidator>
                    
                <%--</div>
                <div>--%>
                    <%--Role--%>
                    <%--
                    <asp:Label ID="LblRole" runat="server" Text="Role" style="display:inline;"></asp:Label><br />
                    <asp:RadioButtonList ID="RadioRole" runat="server" style="display:inline;">
                        <asp:ListItem Text="Member" Value="Member" /><asp:ListItem Text="Admin" Value="Admin" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" ForeColor="Red" runat="server" ErrorMessage="Gender must be chosen!" ControlToValidate="RadioRole"></asp:RequiredFieldValidator>
                    --%>
                    <%--Profile Picture--%>
                    <br />
                    <asp:Label ID="LblProfilePicture" runat="server" Text="Profile Picture"></asp:Label><br />
                    <asp:FileUpload ID="FileUploadProfilePicture" runat="server" />
                    <asp:RequiredFieldValidator ID="RFValidatorProfilePicture" ForeColor="Red" runat="server" ErrorMessage="You must upload a profile picture!" ControlToValidate="FileUploadProfilePicture"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegexValidatorProfilePicture" ForeColor="Red" runat="server" ErrorMessage="Image extension must be .jpg or .png!" ControlToValidate="FileUploadProfilePicture" ValidationExpression="^.*\.(jpg|png)"></asp:RegularExpressionValidator>
                    <%--Phone Number--%>
                    <br />
                    <asp:Label ID="LblPhoneNumber" runat="server" Text="Phone Number"></asp:Label><br />
                    <asp:TextBox ID="TxtPhoneNumber" runat="server" AutoCompleteType="None" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFValidatorPhoneNumber" ForeColor="Red" runat="server" ErrorMessage="Phone Number must be filled!" ControlToValidate="TxtPhoneNumber"></asp:RequiredFieldValidator>
                    <%--Address--%>
                    <br />
                    <asp:Label ID="LblAddress" runat="server" Text="Address"></asp:Label><br />
                    <asp:TextBox ID="TxtAddress" runat="server" AutoCompleteType="None" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFValidatorAddress" ForeColor="Red" runat="server" ErrorMessage="Address must be filled!" ControlToValidate="TxtAddress"></asp:RequiredFieldValidator>            
                    <%--Button--%>
                    <div class="field" style="margin-top: 15px; margin-bottom: 10px; ">
                        <asp:Button ID="BtnRegister" runat="server" Text="Register" CssClass="btn btn-primary btn-lg" style="align-content:center;" OnClick="BtnRegister_Click" />
                        <asp:Label ID="LblMessage"  runat="server"></asp:Label>
                    </div>
                </div>
            </div>

        
    <div>
        </div>
        <%--Redirect--%>
        <div class="field" style="margin-bottom: 30px">
            <asp:Label ID="LblRedirect" Visible="false" Text="Redirecting to Home in 3 seconds" runat="server"></asp:Label>
        </div></div>
        </section>
</asp:Content>
