<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Introduction.aspx.cs" Inherits="Techie.View.Introduction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Tech.ie</title>
    <%--internal css--%>
    <style>
       * {
    margin: 0;
    padding: 0;
}

html, body {
    height: 100%;
}

body {
    background-color: cornflowerblue;
    background-image: url(Assets/img/banner/BannerIntro.jpg);
    background-position: center;
    background-size: cover;
    background-blend-mode: soft-light;
}

.heading {
    width: 600px;
    height: 300px;
    margin: auto;
    position: absolute;
    top: 0px;
    bottom: 0px;
    right: 0px;
    left: 0px;
}

.title1 {
    display: block;
    text-align: center;
    color: white;
    font-size: 60pt;
    font-family: big john;
}

.title2 {
    display: block;
    margin-top: 15px;
    text-align: center;
    color: white;
    font-size: 14pt;
    font-family: serif;
}

.redirectHome {
    margin: 50px auto;
    display: block;
    width: 180px;
    height: 50px;
    border: 3px solid white;
    background-color: rgba(255,255,255,0);
    color: white;
    font-family: sans-serif;
    font-weight: bold;
    border-radius: 5px;
    transition: background-color 1000ms, color 1000ms;
}

    .redirectHome:hover {
        background-color: rgba(255,255,255,1);
        color: #222;
        cursor: pointer;
        transition: background-color 1000ms, color 1000ms;
    }
    </style>
    <%--<link rel="stylesheet" href="../Assets/css/Style.css" type="text/css"/>--%>
</head>
    
    
<body>
    <form id="form1" runat="server">
        <div>
            <div class="heading">
                <span class="title1">Tech.ie</span>
                <span class="title2">reparation make eazy</span>
                <button class="redirectHome">Try Tech.ie</button>
            </div>
        </div>
    </form>
</body>
</html>
