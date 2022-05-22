<%@ Page Title="Contact" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Techie.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <%--Our Address--%>
    <h3>Our Location</h3>
    <address>
        BINUS University @Alam Sutera<br />
        Jl. Jalur Sutera Barat Kav. 21, Alam Sutera, Tangerang<br />
        <abbr title="Phone">Phone: 021 – 2977 9100</abbr>
    </address>
    <%--MapAddress--%>
    <div class="mapouter">
        <div class="gmap_canvas">
            <iframe id="gmap_canvas" frameborder="0" height="500" marginheight="0" marginwidth="0" scrolling="no" src="https://maps.google.com/maps?q=bina%20nusantara%20alam%20sutera&t=k&z=13&ie=UTF8&iwloc=&output=embed" width="500"></iframe>
            Werbung: <a href="https://www.jetzt-drucken-lassen.de">jetzt-drucken-lassen.de</a></div>
        <style>.mapouter{position:relative;text-align:right;height:500px;width:500px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:500px;}</style>
    </div>

    <address>
        <%--Mail Support--%>
        <br />
        <strong>Support:</strong>   <a href="#">mail</a><br />
        <strong>Marketing:</strong> <a href="#">mail</a>
    </address>
</asp:Content>
