<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="uyeler.aspx.cs" Inherits="proje.uyeler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <table class="table">
            <tr>
                <th>Uyeid</th>
                <th>Ad</th>
                <th>Soyad</th>
                <th>Mail</th>
                <th>Şifre</th>
                <th>Telefon</th>
                <th>Doğum Tarihi</th>
                <th>Sil</th>
            </tr>
            <asp:Repeater ID="tekrar" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("uyeid") %></td>
                        <td><%#Eval("ad") %></td>
                        <td><%#Eval("soyad") %></td>
                        <td><%#Eval("mail") %></td>
                        <td><%#Eval("sifre") %></td>
                        <td><%#Eval("telefon") %></td>
                        <td><%#Eval("dtarih") %></td>
                        <td><a href="uyesil.aspx?id=<%#Eval("uyeid") %>"><i class="fas fa-trash-alt" style="color:#808080"></i></a></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
       
    </div>
</asp:Content>
