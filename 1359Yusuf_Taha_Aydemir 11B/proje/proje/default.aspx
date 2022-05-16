<%@ Page Title="Anasayfa" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="proje._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .modalbutton {
            background-color:black;
            border:none;
            height:35px;
            color:white;
            border-radius:10px 5px;
            transition-duration:200ms;
        }
            .modalbutton:hover {
                background-color:white;
                color:black;
                padding:10px;
            }
            .cerceve {
            border:1px solid #d9d9d9;
            border-collapse:collapse;
            padding:15px;
            height:455px;
            transition-duration: 250ms;
            
        }
            .cerceve:hover {
               border:2px solid #66ff66;
               box-shadow:2px 1px 1px 1px #d9d9d9;
               box-sizing:border-box;
               color:#66ff66;
               border-collapse:collapse;
            }
    </style>
    <div class="row">
        <div class="col-md-1">

        </div>
        <div class="col-md-10">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="img/carousel/reklam1.jpg" alt="ipad reklam" />
                    </div>
                    <div class="item">
                        <img src="img/carousel/reklam2.jpg" alt="Chicago" />
                    </div>             
                    <div class="item">
                        <img src="img/carousel/reklam6.jpg" alt="Chicago" />
                    </div>       
                    <div class="item">
                        <img src="img/carousel/reklam5.jpg" alt="Chicago" />
                    </div>
                    <div class="item">
                        <img src="img/carousel/reklam7.jpg" alt="Chicago" />
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="col-md-1">

        </div>
        
    </div>
    <br />
    <br />
    <h3>En Çok Satanlar</h3>
    <hr style="border-color: #cccccc;width:100%;" />
    <div class="row text-center">
         <asp:Repeater ID="tekrar" runat="server">
        <ItemTemplate>
            
                <div class="col-md-3 cerceve">
                    <a href="urunozel.aspx?id=<%# Eval("urunid") %>"><img src="img/<%# Eval("urlfoto") %>" class="img-responsive" style="width:250px;height:250px;margin:0px auto;" /></a>
                <p style="height:40px;">
                    <h5 id="ad"><%# Eval("urunadı") %></h5>
                </p>
                    
                    <h3 style="color:black;margin-bottom:25px;"><%# Eval("fiyat","{0:C}") %></h3>
               </div>
            
        </ItemTemplate>
    </asp:Repeater>

        <asp:Repeater ID="tekrar2" runat="server">
        <ItemTemplate>
            
                <div class="col-md-3 cerceve">
                    <a href="urunozel.aspx?id=<%# Eval("urunid") %>"><img src="img/<%# Eval("urlfoto") %>" class="img-responsive" style="width:250px;height:250px;margin:0px auto;" /></a>
                <p style="height:40px;">
                    <h5 id="ad"><%# Eval("urunadı") %></h5>
                </p>
                    
                    <h3 style="color:black;margin-bottom:25px;"><%# Eval("fiyat","{0:C}") %></h3>
               </div>
            
        </ItemTemplate>
    </asp:Repeater>

        <asp:Repeater ID="tekrar3" runat="server">
        <ItemTemplate>
            
                <div class="col-md-3 cerceve">
                    <a href="urunozel.aspx?id=<%# Eval("urunid") %>"><img src="img/<%# Eval("urlfoto") %>" class="img-responsive" style="width:250px;height:250px;margin:0px auto;" /></a>
                <p style="height:40px;">
                    <h5 id="ad"><%# Eval("urunadı") %></h5>
                </p>
                    
                    <h3 style="color:black;margin-bottom:25px;"><%# Eval("fiyat","{0:C}") %></h3>
               </div>
            
        </ItemTemplate>
    </asp:Repeater>
    </div>

    
         
   
</asp:Content>
