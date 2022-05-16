<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="sikayetler.aspx.cs" Inherits="proje.sikayetler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table">
        <tr>
            <th>Ad</th>
            <th>Soyad</th>
            <th>Email</th>
            <th>Sehir</th>
            <th>Açık Adres</th>
            <th>Şikayet</th>
            <th>Ekran Fotoğrafı1</th>
            <th>Ekran Fotoğrafı2</th>
            <th>Ekran Fotoğrafı3</th>
        </tr>
        <asp:Repeater ID="tekrar" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ad") %></td>
                    <td><%# Eval("soyad") %></td>
                    <td><%# Eval("email") %></td>
                    <td><%# Eval("sehir") %></td>
                    <td><%# Eval("acıkadres") %></td>
                    <td><%# Eval("sikayet") %></td>
                    <td>
                        <img src="img/sikayetfoto/<%#Eval("ekranfoto1") %>" style="width: 120px; height: 120px;" /></td>
                    <td>
                        <img src="img/sikayetfoto/<%#Eval("ekranfoto2") %>" style="width: 120px; height: 120px;" /></td>
                    <td>
                        <img src="img/sikayetfoto/<%#Eval("ekranfoto3") %>" style="width: 120px; height: 120px;" /></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
