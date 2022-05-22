<%@ Page Title="My Store" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="MyStore.aspx.cs" Inherits="Techie.View.MyStore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>My Store</h1>
                 <table ID="tableProfile">
                     <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" style="width:200px; height:200px;margin-right:15px"/>
                        </td>
                         <td style="text-align:left; width:100%">
                              <pre>Store ID          : <asp:Label ID="LblCurrentStoreID" runat="server"/></pre>
                              <pre>Store Name        : <asp:Label ID="LblCurrentStoreName" runat="server"/></pre>
                              <pre>Store Phone Number: <asp:Label ID="LblCurrentStorePhone" runat="server"/></pre>
                              <pre>Store Adress      : <asp:Label ID="LblCurrentStoreAddress" runat="server"/></pre>
                              <pre>Store Grade       : <asp:Label ID="LblCurrentStoreGrade" runat="server"/></pre>             
                        </td>
                     </tr>
                 </table>
             </div>
    <h1>Edit Store</h1>
    <div class="row">
            <div class="col-md-4">
                <h2>Change Password</h2><hr />
                <%--Store Name--%>
                <asp:Label ID="LblStoreName" Text="Store Name" runat="server"></asp:Label><br />
                <asp:TextBox id="TxtStoreName" runat="server" style="width:305px" AutoCompleteType="None" autocomplete="off"></asp:TextBox>
                <br />
                <br />
                <%--Password--%>
                <asp:Label ID="LblPassword" runat="server" Text="Old Password:"></asp:Label><br />
                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" AutoCompleteType="None" autocomplete="off" style="width:305px"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RFValidatorOldPass" runat="server" ForeColor="Red" ErrorMessage="Please enter your old password!" ControlToValidate="TxtPassword"></asp:RequiredFieldValidator>--%>
                <br />
                <%--Confirm Password--%>
                <asp:Label ID="LblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label><br />
                <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"  AutoCompleteType="None" autocomplete="off" style="width:305px"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RFValidatorConfirmNewPassword" ForeColor="Red" runat="server" ErrorMessage="Confirm New Password must be filled!" ControlToValidate="TxtNewPassword"></asp:RequiredFieldValidator>--%>
                <asp:CompareValidator ID="CValidatorConfirmNewPassword" ForeColor="Red" runat="server" ErrorMessage="New Password and Confirm New Password must match!" ControlToValidate="TxtConfirmPassword" ControlToCompare="TxtNewPassword"></asp:CompareValidator>
                <br />
                <%--New Password--%>
                <asp:Label ID="LblNewPassword" runat="server" Text="New Password:"></asp:Label><br />
                <asp:TextBox ID="TxtNewPassword" runat="server" TextMode="Password"  AutoCompleteType="None" autocomplete="off" style="width:305px"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RFValidatorNewPassword" ForeColor="Red" runat="server" ErrorMessage="New Pasword must be filled!" ControlToValidate="TxtNewPassword"></asp:RequiredFieldValidator>--%>
                <br />
                <%--Button--%>         
                <asp:Button ID="BtnChangePassword" runat="server" Text="Change Password" CssClass="btn btn-default" /> 
                <asp:Label ID="LblMessage"  runat="server"></asp:Label>
            </div>
                <div class="col-md-4">
                    <h2>Upgrade Store Grade </h2><hr />
                    <%--StoreName--%>
                    <asp:Label ID="LabelUpgradeName" Text="Store Name" runat="server"></asp:Label><br />
                    <asp:TextBox id="TextUpgradeName" runat="server" style="width:305px" AutoCompleteType="None" autocomplete="off"></asp:TextBox>
                    <br /><br />
                    
                    <div class="col-md-4">
                        <%--Premium Lifetime--%>
                        <asp:Label ID="LabelUpgradeLifetime" runat="server" Text="Premium Lifetime"></asp:Label><br />
                        <asp:RadioButtonList ID="RadioUpgradeLifetime" runat="server" style="display:inline;">
                            <asp:ListItem Text="3 Month" Value="3" /><asp:ListItem Text="6 Month" Value="6" /><asp:ListItem Text="12 Month" Value="12" />
                        </asp:RadioButtonList>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator" ForeColor="Red" runat="server" ErrorMessage="Lifetime must be chosen!" ControlToValidate="RadioUpgradeLifetime"></asp:RequiredFieldValidator>--%>
                    </div>
                    <div class="col-md-4">
                        <%--Payment Method--%>
                        <asp:Label ID="LabelPaymentMethod" Text="Payment Method" runat="server"></asp:Label><br />
                        <asp:RadioButtonList ID="RadioPaymentMethod" runat="server" style="display:inline;">
                            <asp:ListItem Text="Debit Card" Value="Debit" /><asp:ListItem Text="Credit Card" Value="Credit" />
                        </asp:RadioButtonList>
                    </div>

                    <br /><br /><br /><br /><br /><br /><br />

                    <div class="row">
                        <div class="col-xs-6">
                            <asp:Label id="LblCardNumber" runat="server" Text="Card Number"></asp:Label><br />
                            <asp:TextBox id="TextBox1" runat="server" style="width:150px" AutoCompleteType="None" autocomplete="off" placeholder="1111 2222 3333 4444"></asp:TextBox>
                        </div>
                        <div class="col-xs-6">
                            <asp:Label ID="LabelCardCVV" Text="CVV" runat="server"></asp:Label><br />
                            <asp:TextBox id="TextCardCVV" runat="server" style="width:30px" AutoCompleteType="None" autocomplete="off" placeholder="xxx"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2" style="width=75px;">
                            <select id="expiry-month" autocomplete="cc-exp-month" data-encrypted-name="expiryMonth" style="width=100px">
                            <option id="OptionMonth" value="" default="default" selected="selected">Month</option>
                            <option value="1">01</option>
                            <option value="2">02</option>
                            <option value="3">03</option>
                            <option value="4">04</option>
                            <option value="5">05</option>
                            <option value="6">06</option>
                            <option value="7">07</option>
                            <option value="8">08</option>
                            <option value="9">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        </div>
                        <div class="col-md-2" style="width=75px;">
                            <select id="expiry-year" autocomplete="cc-exp-year" data-encrypted-name="expiryYear" style="width=100px">
                            <option id="OptionYear" value="" default="" selected="selected">Year</option>
                            <option value="2019">19</option>
                            <option value="2020">20</option>
                            <option value="2021">21</option>
                            <option value="2022">22</option>
                            <option value="2023">23</option>
                            <option value="2024">24</option>
                            <option value="2025">25</option>
                            <option value="2026">26</option>
                            <option value="2027">27</option>
                            <option value="2028">28</option>
                            <option value="2029">29</option>
                            <option value="2030">30</option>
                            <option value="2031">31</option>
                            <option value="2032">32</option>
                            <option value="2033">33</option>
                            <option value="2034">34</option>
                            <option value="2035">35</option>
                            <option value="2036">36</option>
                            <option value="2037">37</option>
                            <option value="2038">38</option>
                            <option value="2039">39</option>
                            <option value="2040">40</option>
                            <option value="2041">41</option>
                            <option value="2042">42</option>
                            <option value="2043">43</option>
                            <option value="2044">44</option>
                            <option value="2045">45</option>
                            <option value="2046">46</option>
                            <option value="2047">47</option>
                            <option value="2048">48</option>
                        </select>
                        </div>
                    </div>
                    <br />
                    <asp:Label ID="LblVerifPassword" runat="server" Text="Verified with your Password:"></asp:Label><br />
                    <asp:TextBox ID="TxtVerifPassword" runat="server" TextMode="Password" AutoCompleteType="None" autocomplete="off" style="width:305px"></asp:TextBox>
                        
                    
                        <%--Crad Info--%>
                    
                    <%--Crad CVV--%>
                    <br />
                        
                    
                    <br /><br />
                    <%--Button--%>         
                    <asp:Button ID="Button1" runat="server" Text="Upgrade Lifetime" CssClass="btn btn-default"  /> 
                    <asp:Label ID="Label5"  runat="server"></asp:Label>
                </div>
        <div class="col-md-4">
            <h2>Fiture 3</h2><hr />
            <p>LoremLoremLoremLoremLoremLoremLoremLoremLoremLorem
                LoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLorem
                LoremLoremLoremLoremLoremLoremLoremLoremLoremLorem
                LoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLorem
                LoremLoremLoremLoremLoremLoremLoremLoremLoremLorem
                LoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLorem
                LoremLoremLoremLoremLoremLoremLoremLoremLoremLorem
                LoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLorem
            </p>
        </div>
        </div>
    <div>
        <h1>My Own Products</h1>
         <asp:ListView ID="ListViewProduct" runat="server"  DataKeyNames="ProductId">
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
     </asp:ListView>
    </div>
</asp:Content>
