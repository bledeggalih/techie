<%@ Page Title="About" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Techie.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
          width: 20%;
          padding: 0 5px;
          height: 300px;
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
        .pictureCreator{
            width:100px;
            border-radius:50%;
        }
    </style>
    
    <div class="row">
        <div class="col-md-4">
            <h1>About Us</h1>
            <p style="text-align:justify">Tech.ie is a web-based application that helps you deal with problems with software or computer hardware. Tech.ie, also has online shopping services but only in the area of computer software and hardware to make it easier for customers.</p>
            <div align="center">
                <img src="../Assets/img/NewLogo.png" style="width:250px;" />
                <h4>Tech.ie Brand Logo</h4>
            </div>
        </div>
        <div class="col-md-8">
            <h1>Team Creator</h1>
            <div class="row">
            <div class="column">
                <div class="card">
                    <img src="../Assets/img/creator_profile/Bledeg.jpg"/ class="pictureCreator" alt="Bledeg"">
                    <h4>Bledeg Galih</br>Jimbaran</h4>
                    <h5>2101658306</h5>
                    <h6>Front-End Programmer</h6>
                    <h6>bledeggalih@gmail.com</h6>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <img src="../Assets/img/creator_profile/Michael.jpg"/ class="pictureCreator"  alt="Michael">
                    <h4>Michael Riandy Setiawan</h4>
                    <h5>2101627080</h5>
                    <h6>Back-End Programmer</h6>
                    <h6>michaelrs199@gmail.com</h6>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <img src="../Assets/img/creator_profile/Niko.jpg"/ class="pictureCreator"  alt="Niko">
                    <h4>Nikodemus Stanley Kohar</h4>
                    <h5>2101665532</h5>
                    <h6>Back-End Programmer</h6>
                    <h6>nikodemus.stanley<br />@gmail.com</h6>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <img src="../Assets/img/creator_profile/Rizky.jpg"/ class="pictureCreator"  alt="Rizky">
                    <h4>Rizky Aditya Ramadhani</h4>
                    <h5>2101636072</h5>
                    <h6>Back-End Programmer</h6>
                    <h6>rizkyadityaramadhani98<br />@gmail.com</h6>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <img src="../Assets/img/creator_profile/Andes.jpg"/ class="pictureCreator"  alt="Thimoty">
                    <h4>Thimoty Rayandes Damanik</h4>
                    <h5>2101667235</h5>
                    <h6>Front-End Programmer</h6>
                    <h6>andesdamanik@gmail.com</h6>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
