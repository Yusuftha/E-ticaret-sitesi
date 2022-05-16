<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="masaustu.aspx.cs" Inherits="proje.masaustu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <style>
        .cerceve {
            border:1px solid #d9d9d9;
            border-collapse:collapse;
            padding:15px;
            height:455px;
            transition-duration: 250ms;
            
        }
            .cerceve:hover {
               border:2px solid #66ff66;
               box-sizing:border-box;
               color:#66ff66;
               border-collapse:collapse;
               box-shadow:2px 1px 1px 1px #d9d9d9;
            }
        #sepetbuton {
            width:100px;
            height:25px;
            background-color:#595959;
            color:white;
            border-radius:8px;
            line-height:25px;
            text-decoration:none;
            margin:0px auto;
            display:none;
            position:relative;
            transition-duration: 250ms;
        }
        .sepetbtn {
            display:block;
            width:100px;
            height:25px;
            background-color:#595959;
            color:white;
            border-radius:8px;
            line-height:25px;
            text-decoration:none;
            margin:0px auto;
        }
            .sepetbtn:hover {
                background-color:#66ff66;
            }
    </style>

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
    </div><script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <style>
        .cerceve {
            border:1px solid #d9d9d9;
            border-collapse:collapse;
            padding:15px;
            height:455px;
            transition-duration: 250ms;
            
        }
            .cerceve:hover {
               border:2px solid #66ff66;
               box-sizing:border-box;
               color:#66ff66;
               border-collapse:collapse;
               box-shadow:2px 1px 1px 1px #d9d9d9;
            }
        #sepetbuton {
            width:100px;
            height:25px;
            background-color:#595959;
            color:white;
            border-radius:8px;
            line-height:25px;
            text-decoration:none;
            margin:0px auto;
            display:none;
            position:relative;
            transition-duration: 250ms;
        }
        .sepetbtn {
            display:block;
            width:100px;
            height:25px;
            background-color:#595959;
            color:white;
            border-radius:8px;
            line-height:25px;
            text-decoration:none;
            margin:0px auto;
        }
            .sepetbtn:hover {
                background-color:#66ff66;
            }
    </style>

    <div class="row text-center">
        <asp:Repeater ID="Repeater1" runat="server">
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
