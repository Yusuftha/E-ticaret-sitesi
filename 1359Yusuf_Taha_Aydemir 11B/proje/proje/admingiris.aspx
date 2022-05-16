<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="admingiris.aspx.cs" Inherits="proje.admingiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" CssClass="control-label col-md-4" Text="Admin kullanıcı adı:"></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txtaad" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>

     <div class="form-group">
        <asp:Label ID="Label2" runat="server" CssClass="control-label col-md-4" Text="Admin Şifre:"></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txtasfr" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
        </div>
    </div>
    <div class="text-center">
        <asp:Label ID="hata" runat="server" Text=""></asp:Label>
    </div>
    <div id="yon" runat="server">

    </div>
    <div class="text-center">
        <asp:Button ID="admingir" runat="server" CssClass="btn btn-default" Text="Giris" OnClick="admingir_Click" />
    </div>
</asp:Content>
