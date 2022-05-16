<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ozellik.aspx.cs" Inherits="proje.ozellik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity:"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Repeater ID="tekrar" runat="server">
            <ItemTemplate>
                <table class="table" style="margin-bottom:25px;">
                    <tr style="background-color:#f2f2f2">
                        <td colspan="2" style="text-align:center;color:black;font-size:17px;">Teknik Özellikler</td>
                    </tr>

                    <tr>
                        <td>Şebeke Frekansı</td>
                        <td class="text-right">LTE(4)</td>
                    </tr>

                    <tr>
                        <td>Mobil Veri Hızı</td>
                        <td class="text-right">4.5G Uyumlu</td>
                    </tr>
                </table>

                <table class="table" style="margin-bottom:25px;">
                    <tr style="background-color:#f2f2f2">
                        <td colspan="2" style="text-align:center;color:black;font-size:17px;">Bellek</td>
                    </tr>

                    <tr>
                        <td>Dahili Hafıza</td>
                        <td class="text-right"><%#Eval("kapasite") %></td>
                    </tr>

                    <tr>
                        <td>RAM</td>
                        <td class="text-right"><%#Eval("ram") %></td>
                    </tr>
                </table>

                <table class="table" style="margin-bottom:25px;">
                    <tr style="background-color:#f2f2f2">
                        <td colspan="2" style="text-align:center;color:black;font-size:17px;">Kamera Özellikleri</td>
                    </tr>

                    <tr>
                        <td>Ön Kamera</td>
                        <td class="text-right"><%#Eval("onkamera") %></td>
                    </tr>

                    <tr>
                        <td>Arka Kamera</td>
                        <td class="text-right"><%#Eval("arkakamera") %></td>
                    </tr>
                </table>

                <table class="table" style="margin-bottom:25px;">
                    <tr style="background-color:#f2f2f2">
                        <td colspan="2" style="text-align:center;color:black;font-size:17px;">Ekran Özellikleri</td>
                    </tr>

                    <tr>
                        <td>Ekran Boyutu</td>
                        <td class="text-right"><%#Eval("ekranboyut") %></td>
                    </tr>

                    <tr>
                        <td>Çözünürlük</td>
                        <td class="text-right"><%#Eval("cozunurluk") %></td>
                    </tr>
                </table>

                <table class="table" style="margin-bottom:25px;">
                    <tr style="background-color:#f2f2f2">
                        <td colspan="2" style="text-align:center;color:black;font-size:17px;">İşlemci Özellikleri</td>
                    </tr>

                    <tr>
                        <td>İşlemci</td>
                        <td class="text-right"><%#Eval("islemci") %></td>
                    </tr>
                </table>

            </ItemTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
