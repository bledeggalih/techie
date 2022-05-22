<%@ Page Title="Reparation" Language="C#" MasterPageFile="~/View/Site.Master" AutoEventWireup="true" CodeBehind="Reparation.aspx.cs" Inherits="Techie.View.Reparation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        *a {
            text-decoration:none;
        }
        .box {
            position: relative;
            width:calc(400px - 30px);
            height:calc(400px - 30px);
            float: left;
            margin:15px;
            background-color:white;
            box-sizing:border-box;
            overflow:hidden;
            border-radius:15px;
        }
        .optionDevice {
            margin-left:0;
            margin-right:0;
            margin-top:0;
            margin-bottom:10px;
            padding-left:20px;
            background-color:#fff;
            display:block;
            text-align:center;
            box-shadow:0 0 5px 1px rgba(0,,0,0,.12);
            box-sizing:border-box;
            padding:12px 20px;
        }
        .figure {
            background: #fff;
            /*-webkit-box-shadow: 0 1px 5px 0 rgba(0,0,0,.15)*/;
            box-shadow: 0 1px 5px 0 rgba(0,0,0,.15);
            margin-bottom: 15px;
            padding-top: 20px;
            text-align: center;
            min-width: 200px;
            /*-webkit-transition: all .3s ease-in-out;*/
            transition: all .3s ease-in-out;
            margin:0;
            display:block;
            box-sizing: border-box;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 40px;
            margin-inline-end: 40px;
            box-sizing: border-box;

        }
        .deviceLink {
            background-color: inherit;
            border-top: 1px solid rgba(0,0,0,.12);
            color: #000;
            font-size: 13px;
            font-weight: 700;
            height: auto;
            /*margin-top: 20px;*/
            position: relative;
            bottom: auto;
            text-transform: uppercase;
            padding: 20px 0;
            margin-top:0;
            display:block;
            text-align:center;
            box-sizing:border-box;
        }
        .chooseStore {
            position: relative;
            min-height: 1px;
            padding-left: 10px;
            padding-right: 10px;
            display: block;
        }
    </style>    
    <div>
        <div>
            <div class="row">
                <div class="chooseStore col-xs-12 col-sm-5 col-md-4">
                    <div>
                    <h3>Select a store : <a href="#" style="float:right">Search</a></h3>
                </div>
                <div class="mapouter">
                    <div class="gmap_canvas">
                        <iframe id="gmap_canvas" frameborder="0" marginheight="0" marginwidth="0" scrolling="no" src="https://maps.google.com/maps?q=bina%20nusantara%20alam%20sutera&t=k&z=13&ie=UTF8&iwloc=&output=embed"></iframe>
                            <style>
                                .mapouter{position:relative;text-align:right;height:300px;width:300px;
                                    top: 0px;
                                    left: 21px;
                                }.gmap_canvas {overflow:hidden;background:none!important;height:300px;width:300px;}
                                #gmap_canvas {
                                    height: 300px;
                                    width: 300px;
                                }
                            </style>
                        </div>
                    </div>
                 </div>
                <div class="col-xs-12 col-sm-7 col-md-8">
                    <div class="optionDevice">
                        <h4>Choose Your Device
                        </h4>
                    </div>
                    <div class="figure col-xs-6 col-md-4">
                        <a href="Service.aspx">
                            <img src="../Assets/img/icon/smartphone.png"/>
                            <div class="deviceLink">
                                Cell Phone
                            </div>
                        </a>
                    </div>
                    <div class="figure col-xs-6 col-md-4">
                        <a href="Service.aspx">
                            <img src="../Assets/img/icon/tablet.png"/>
                            <div class="deviceLink">
                                Tablet
                            </div>
                        </a>
                    </div>
                    <div class="figure col-xs-6 col-md-4">
                        <a href="Service.aspx">
                            <img src="../Assets/img/icon/monitor.png"/>
                            <div class="deviceLink">
                                Computer
                            </div>
                        </a>
                    </div>
                    <div class="figure col-xs-6 col-md-4">
                        <a href="Service.aspx">
                            <img src="../Assets/img/icon/controller.png"/>
                            <div class="deviceLink">
                                Game Console
                            </div>
                        </a>
                    </div>
                    <div class="figure col-xs-6 col-md-4">
                        <a href="Service.aspx">
                            <img src="../Assets/img/icon/power-button.png"/>
                            <div class="deviceLink">
                                Other
                            </div>
                        </a>
                    </div>

                    <div></div>
                </div>
                </div>
                
            </div>
    </div>

</asp:Content>
