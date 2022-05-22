<%@ Page Title="Register" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Techie.View.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <section>
        <div>
            <div class="row">
                <div class="col-xs-6">
                    <img src="../Assets/img/banner/BannerRegPage.jpg" style="height:500px; position:relative; top:100px;"/>
                </div>
                <div class="col-xs-6">
                    <h3>Join Us!</h3>
                    <%--Name--%>
                    <br />
                    <asp:Label ID="LabelName" runat="server" Text="Name"></asp:Label><br />
                    <asp:TextBox ID="TxtName" runat="server" AutoCompleteType="None" autocomplete="off" placeholder="Enter Your Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" ForeColor="Red" runat="server" ErrorMessage="Username must be filled!" ControlToValidate="TxtName"></asp:RequiredFieldValidator>
        
                    <%--Email--%>
                    <br />
                    <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label><br />
                    <asp:TextBox ID="TxtEmail" runat="server" AutoCompleteType="None" autocomplete="off" TextMode="Email" placeholder="Enter Your Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" ForeColor="Red" runat="server" ErrorMessage="Email must be filled!" ControlToValidate="TxtEmail"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidatorEmail" ForeColor="Red" runat="server" ErrorMessage="Email already used!" OnServerValidate="CustomValidatorEmail_ServerValidate"></asp:CustomValidator>
                <br />
                    <asp:Label ID="LabelCity" runat="server" Text="City"></asp:Label><br />
                <asp:TextBox ID="TxtCity" runat="server" AutoCompleteType="None" autocomplete="off" CssClass="TxtFillContent" placeholder="Enter Your City"></asp:TextBox>
                <br />
                <asp:Label ID="LabelState" runat="server" Text="State"></asp:Label><br />
                <asp:TextBox ID="TxtState" runat="server" AutoCompleteType="None" autocomplete="off" CssClass="TxtFillContent" placeholder="Enter Your State"></asp:TextBox>
                <br />
                <asp:Label ID="LabelCountry" runat="server" Text="Country"></asp:Label><br />
                <asp:TextBox ID="TxtCountry" runat="server" AutoCompleteType="None" autocomplete="off" CssClass="TxtFillContent" placeholder="Enter Your Country"></asp:TextBox>
                <br />
                <asp:Label ID="LabelPostCode" runat="server" Text="Post Code"></asp:Label><br />
                <asp:TextBox ID="TxtPostCode" runat="server" AutoCompleteType="None" autocomplete="off" CssClass="TxtFillContent" placeholder="Enter Your Post Code"></asp:TextBox>
                <br />
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
                    <%--Gender--%>
                    <br />
                    <asp:Label ID="LblGender" runat="server" Text="Gender"></asp:Label><br />
                    <asp:RadioButtonList ID="RadioGender" runat="server" style="display:inline;">
                        <asp:ListItem Text="Male" Value="Male"/>
                        <asp:ListItem Text="Female" Value="Female"/>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RFValidatorGender" ForeColor="Red" runat="server" ErrorMessage="Gender must be chosen!" ControlToValidate="RadioGender"></asp:RequiredFieldValidator>
                    <%--Role--%>
                    <%--
                    <asp:Label ID="LblRole" runat="server" Text="Role" style="display:inline;"></asp:Label><br />
                    <asp:RadioButtonList ID="RadioRole" runat="server" style="display:inline;">
                        <asp:ListItem Text="Member" Value="Member" /><asp:ListItem Text="Admin" Value="Admin" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" ForeColor="Red" runat="server" ErrorMessage="Gender must be chosen!" ControlToValidate="RadioRole"></asp:RequiredFieldValidator>
                    --%>
                <%--DOB--%>
                    <br />
                    <asp:Label ID="LblDOB" runat="server" Text="Birth Date"></asp:Label><br />
                    <asp:Calendar ID="CalendarDOB" runat="server" OnSelectionChanged="CalendarDOB_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" style="display:inline;">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    <asp:TextBox ID="TxtDOB" runat="server" Style="display: none" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFValidatorDob" ForeColor="Red" runat="server" ErrorMessage="Birth Date must be filled!" ControlToValidate="TxtDOB"></asp:RequiredFieldValidator>
                    <br />
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
