<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="urunozel.aspx.cs" Inherits="proje.urunozel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .sepetbtn {
            background-color: black;
            color: white;
            text-align: center;
            text-decoration: none;
            display: block;
            border-radius: 5px;
            width: 200px;
            font-size: 20px;
            height: 50px;
            line-height: 50px;
            transition-duration: 200ms;
        }

            .sepetbtn:hover {
                background-color: white;
                color: black;
                height: 55px;
                line-height: 55px;
                text-decoration: none;
            }
        .cerceve {
            height:250px;
            border:1px solid #808080;
            width:80px;
        }
    </style>
    <div class="container">
        <asp:Repeater ID="tekrar" runat="server">
        <ItemTemplate>
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-2 text-center" style="border:1px solid #d9d9d9;padding:10px;">
                            <a href="img/<%# Eval("urlfoto") %>" class="img-responsive" target="resimcerceve"><img src="img/<%# Eval("urlfoto") %>" class="img-responsive" style="width:70px;height:70px; margin: 0px auto;margin-bottom:15px;" /></a>
                            <a href="img/<%# Eval("urlfoto2") %>" class="img-responsive" target="resimcerceve"><img src="img/<%# Eval("urlfoto2") %>" class="img-responsive" style="width:70px;height:70px;margin: 0px auto;margin-bottom:15px;" /></a>
                            <a href="img/<%# Eval("urlfoto3") %>" class="img-responsive" target="resimcerceve"><img src="img/<%# Eval("urlfoto3") %>" class="img-responsive" style="width:70px;height:70px;margin: 0px auto;margin-bottom:15px;" /></a>
                        </div>
                        <div class="col-md-6 text-center">
                            <iframe name="resimcerceve" src="img/<%# Eval("urlfoto") %>" style="width:500px;height:500px;border:1px solid #d9d9d9;padding:20px;"></iframe>
                        </div>        
                    </div>
                          
                 </div>

                <div class="col-md-6" style="border:1px solid #d9d9d9;height:500px;background-color:#F5F5F5;margin:0px auto;">
                    <h5 class="text-left" style="color:#808080;"><%#Eval("urunmodel") %></h5>
                    <h4 class="text-left"><%#Eval("urunadı") %></h4>
                    <h5  class="text-left" style="color:#808080;margin-bottom:50px;">Aynı gün kargo</h5>
                    <h2 class="text-danger" style="margin-bottom:50px;"><%#Eval("fiyat","{0:C}") %></h2>
                    
                    <a href="sepeteekle.aspx?id=<%# Eval("urunid") %>" class="sepetbtn"><span class="glyphicon glyphicon-shopping-cart"></span> Sepete Ekle</a>
                    <div class="row text-center" style="line-height:400px;">
                         <i class="fas fa-lock" style="margin-right:5px;"></i>
						Güvenli Alışveriş

						<i class="fas fa-check-square" style="margin-right:5px;margin-left:10px;"></i>
						Her zaman ulaşabilirlik

						<i class="fas fa-headset" style="margin-right:5px;margin-left:10px;"></i>
						Canli Destek Hattı
                    </div>
                </div>
            </div>
            <div style="width:100%;height:70px;background-color:black;line-height:70px;" class="text-center">
                <div class="row">
                    <div class="col-md-4">
                        <a href="genelbakis.aspx?id=<%# Eval("urunid") %>" style="color:white;text-decoration:none;" target="altcerceve">Genel Bakış</a>
                    </div>

                    <div class="col-md-4">
                        <a href="ozellik.aspx?id=<%# Eval("urunid") %>" style="color:white;text-decoration:none;" target="altcerceve">Ürün Özellikleri</a>
                    </div>

                    <div class="col-md-4">
                        <a href="yorumekle.aspx?id=<%# Eval("urunid") %>" style="color:white;text-decoration:none;" target="altcerceve">Yorumlar</a>
                    </div>
                                       
                </div>
            </div>
            <div style="width:100%;border:1px solid #cccccc;height:1900px;">
                <h4 class="text-center"></h4>
                <div>
                    <iframe src="genelbakis.aspx?id=<%# Eval("urunid") %>" name="altcerceve" style="border:none;width:100%;height:1900px">
                    
                    </iframe>
                </div>
            </div>
                
                
        </ItemTemplate>
    </asp:Repeater>
    </div>
    
</asp:Content>
