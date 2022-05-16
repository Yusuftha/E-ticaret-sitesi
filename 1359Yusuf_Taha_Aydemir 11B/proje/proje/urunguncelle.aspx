<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="urunguncelle.aspx.cs" Inherits="proje.urunguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <th>ÜRÜN ID</th>
            <td><asp:TextBox ID="txtuid" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

         <tr>
            <th>ÜRÜN ADI</th>
            <td><asp:TextBox ID="txtuad" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <th>ÜRÜN MODELİ</th>
            <td><asp:TextBox ID="txtmodel" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <th>ÜRÜN RENGİ</th>
            <td><asp:TextBox ID="txtrenk" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <th>KAPASİTE</th>
            <td><asp:TextBox ID="txtkapasite" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <th>ARKA KAMERA</th>
            <td><asp:TextBox ID="txtarkak" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <th>ÖN KAMERA</th>
            <td><asp:TextBox ID="txtonk" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <th>EKRAN BOYUT</th>
            <td><asp:TextBox ID="txtekranb" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

       

        <tr>
            <th>ÇÖZÜNÜRLÜK</th>
            <td><asp:TextBox ID="txtcozunurluk" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <th>RAM</th>
            <td><asp:TextBox ID="txtram" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <th>İŞLEMCİ</th>
            <td><asp:TextBox ID="txtislemci" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <th>FİYAT</th>
            <td><asp:TextBox ID="txtfiyat" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <th>RESİM YOLU</th>
            <td><asp:TextBox ID="txtryol" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

         <tr>
            <th>RESİM YOLU 2</th>
            <td><asp:TextBox ID="txtryol2" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <th>RESİM YOLU 3</th>
            <td><asp:TextBox ID="txtryol3" CssClass="form-control" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" class="text-left"><asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Güncelle" OnClick="Button1_Click" /></td>
        </tr>
    </table>
    <asp:Label ID="hata" runat="server" CssClass="text-danger" Text=""></asp:Label>
</asp:Content>
