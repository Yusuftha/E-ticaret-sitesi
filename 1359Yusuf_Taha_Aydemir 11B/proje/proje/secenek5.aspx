<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="secenek5.aspx.cs" Inherits="proje.secenek5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="row text-center">
        <div class="col-md-1" style="font-size:12px;border:1px solid #d9d9d9;">
            <h4>Fiyat Aralığı</h4>
            <a href="secenek1.aspx" style="color:black;text-decoration:none;">500TL-900TL</a>
            <a href="secenek2.aspx" style="color:black;text-decoration:none;">1000TL-1999TL</a>
            <a href="secenek3.aspx" style="color:black;text-decoration:none;">2000TL-2999TL</a>
            <a href="secenek4.aspx" style="color:black;text-decoration:none;">3000TL-3999TL</a>
            <a href="secenek5.aspx" style="color:black;text-decoration:none;">4000TL-4999TL</a>
            <a href="secenek6.aspx" style="color:black;text-decoration:none;">10000TL +</a>
            <h4>Sırala</h4>
            <a href="secenek7.aspx" style="color:black;text-decoration:none;">Artan Fiyat</a>
            <a href="secenek8.aspx" style="color:black;text-decoration:none;">Azalan Fiyat</a>
        </div>

        <div class="col-md-11">
            <h3 class="text-center"><span class="glyphicon glyphicon-search"></span> Aramanızla Eşleşen Sonuç Yok</h3>
        </div>
    </div>
</asp:Content>
