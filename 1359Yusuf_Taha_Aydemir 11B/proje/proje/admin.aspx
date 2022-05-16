<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="proje.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h3 class="text-center" style="color:red">ADMİN PANELİ</h3>
    <br />
    <h4 class="text-center">
        <a href="admin.aspx" class="btn btn-default" >ÜRÜNLER SAYFASI</a>
        <a href="urunekle.aspx" class="btn btn-default" >ÜRÜN EKLE</a>
        <a href="uyeler.aspx" class="btn btn-default" >ÜYELER SAYFASI</a>
        <a href="sikayetler.aspx" class="btn btn-default" >ŞİKAYETLER</a>
        <a href="yorumlar.aspx" class="btn btn-default" >YORUMLAR</a>
    </h4>
    <table class="table">
        <tr>
            <th></th>
            <th>ÜRÜN ID</th>
            <th>ÜRÜN ADI</th>
            <th>ÜRÜN MODELİ</th>
            <th>RENK</th>
            <th>KAPASİTE</th>
            <th>ARKA KAMERA</th>
            <th>ÖN KAMERA</th>
            <th>EKRAN BOYUT</th>
            <th>ÇOZÜNÜRLÜK</th>
            <th>RAM</th>
            <th>İŞLEMCİ</th>
            <th>FİYAT</th>
            <th>RESİM YOLU</th>
            <th></th>
        </tr>
        <asp:Repeater ID="tekrar" runat="server">
            <ItemTemplate>
               <tr style="font-size:15px;">
                    <td><a href="urunsil.aspx?id=<%#Eval("urunid") %>" class="btn btn-default" ><span class="glyphicon glyphicon-remove"></span></a></td>
                    <td><%# Eval("urunid") %></td>
                    <td><%# Eval("urunadı") %></td>
                    <td><%# Eval("urunmodel") %></td>
                    <td><%# Eval("renk") %></td>
                    <td><%# Eval("kapasite") %></td>
                    <td><%# Eval("arkakamera") %></td>
                    <td><%# Eval("onkamera") %></td>
                    <td><%# Eval("ekranboyut") %></td>
                    <td><%# Eval("cozunurluk") %></td>
                    <td><%# Eval("ram") %></td>
                    <td><%# Eval("islemci") %></td>
                    <td><%# Eval("fiyat") %></td>
                    <td><%# Eval("urlfoto") %></td>
                   <td><a href="urunguncelle.aspx?id=<%#Eval("urunid") %>" class="btn btn-success" ><i class="fas fa-redo"></i></a></td>
               </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    </div>
</asp:Content>
