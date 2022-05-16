<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="urunekle.aspx.cs" Inherits="proje.urunekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <table>
            <tr>
                <th>ÜRÜN ID</th>
                <td>
                    <asp:TextBox ID="txtuid" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>ÜRÜN ADI</th>
                <td>
                    <asp:TextBox ID="txtuad" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>ÜRÜN MODELİ</th>
                <td>
                    <asp:TextBox ID="txtmodel" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>ÜRÜN RENGİ</th>
                <td>
                    <asp:TextBox ID="txtrenk" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>KAPASİTE</th>
                <td>
                    <asp:TextBox ID="txtkapasite" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>ARKA KAMERA</th>
                <td>
                    <asp:TextBox ID="txtarkak" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>ÖN KAMERA</th>
                <td>
                    <asp:TextBox ID="txtonk" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>EKRAN BOYUT</th>
                <td>
                    <asp:TextBox ID="txtekranb" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>EKRAN KARTI</th>
                <td>
                    <asp:TextBox ID="txtekrankart" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>ÇÖZÜNÜRLÜK</th>
                <td>
                    <asp:TextBox ID="txtcozunurluk" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>RAM</th>
                <td>
                    <asp:TextBox ID="txtram" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>İŞLEMCİ</th>
                <td>
                    <asp:TextBox ID="txtislemci" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>FİYAT</th>
                <td>
                    <asp:TextBox ID="txtfiyat" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <th>RESİM YOLU</th>
                <td>
                    <asp:FileUpload ID="resim1" runat="server" /></td>
            </tr>

            <tr>
                <th>RESİM YOLU 2</th>
                <td>
                    <asp:FileUpload ID="resim2" runat="server" /></td>
            </tr>

            <tr>
                <th>RESİM YOLU 3</th>
                <td>
                    <asp:FileUpload ID="resim3" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2" class="text-left">
                    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Ürün Ekle" OnClick="Button1_Click" /></td>
            </tr>
        </table>
        <asp:Label ID="hata" runat="server" CssClass="text-danger" Text=""></asp:Label>
        <div class="row">
            <div class="col-md-4">
                <asp:Image ID="Image1" runat="server" />
            </div>

            <div class="col-md-4">
                <asp:Image ID="Image2" runat="server" />
            </div>

            <div class="col-md-4">
                <asp:Image ID="Image3" runat="server" />
            </div>
        </div>
        <div id="yon" runat="server">

        </div>
    </div>
</asp:Content>
