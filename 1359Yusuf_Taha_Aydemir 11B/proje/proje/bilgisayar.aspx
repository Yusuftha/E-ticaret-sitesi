<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="bilgisayar.aspx.cs" Inherits="proje.bilgisayar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #dizustucerceve {
            border: 1px solid #d9d9d9;
            transition: 250ms;
            text-decoration: none;
            color: black;
        }

            #dizustucerceve:hover {
                border: 1px solid #999999;
                padding: 10px;
            }

        #masaustucerceve {
            border: 1px solid #d9d9d9;
            transition: 250ms;
            text-decoration: none;
            color: black;
        }

            #masaustucerceve:hover {
                border: 1px solid #999999;
                padding: 10px;
            }
    </style>
    <div class="row text-center" style="margin: 0px auto;">
        <a href="dizustu.aspx">
            <div class="col-md-6" id="dizustucerceve">
                <h3>Diz Üstü Bilgisayar</h3>
                <img src="img/49.JPG" class="img-responsive" style="width: 250px; height: 250px; margin: 0px auto;" />
            </div>
        </a>

        <a href="masaustu.aspx">
            <div class="col-md-6" id="masaustucerceve">
                <h3>Masa Üstü (OEM) Bilgisayar</h3>
                <img src="img/2567.jpg" class="img-responsive" style="width: 250px; height: 250px; margin: 0px auto;" />
            </div>
        </a>
    </div>
    <br />
    <br />

</asp:Content>
