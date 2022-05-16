<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yorumekle.aspx.cs" Inherits="proje.yorumekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity:"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
        .inputlar {
            font-size: 18px;
            width: 250px;
            height: 35px;
            border-color: black;
            padding-left: 5px;
            outline-color: green;
            margin-bottom: 5px;
        }

        .butonlar {
            padding: 10px;
            background-color: black;
            color: white;
            border: none;
            width: 150px;
            border-radius: 5px;
            transition-duration: 200ms;
            margin-top: 40px;
        }

            .butonlar:hover {
                background-color: white;
                color: black;
                padding: 15px;
            }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-center">
            <table class="auto-style1" id="yorumtablo" style="margin:0px auto;">
                <tr>
                    <td class="auto-style2">Kullanıcı Adı:</td>
                    <td>
                        <asp:TextBox ID="txtkad" CssClass="form-control inputlar" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Yorum:</td>
                    <td>
                        <asp:TextBox ID="txtyrm" runat="server" Height="79px" CssClass="form-control inputlar" TextMode="MultiLine" Width="245px"></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="hata" runat="server"></asp:Label>
                    </td>
                   
                </tr>
            </table>
            <div id="yon" runat="server">

            </div>
            <a href="yorumekle.aspx?id=<%#Eval("urunid") %>"><asp:Button ID="Button1" runat="server" CssClass="butonlar" OnClick="Button1_Click" Text="Yorum Ekle" /></a>
              
        </div>
         <h3>Yorumlar</h3>
        <asp:Repeater ID="tekrar" runat="server">
            <ItemTemplate>
                <div style="width:100%;height:100px;border:1px solid #b3b3b3;margin-bottom:2px;">
                    <table>
                     <tr>
                        <td><img src="img/user.png" class="img-responsive" style="height:40px;width:40px;margin-right:15px;" /></td>
                         <td><h4><%#Eval("kullad") %></h4></td>
                    </tr>
                    <tr>
                        <td>
                             <td><h4><%#Eval("yorum") %></h4></td>
                        </td>
                        
                        
                    </tr>
                   
                </table>
                </div>                  
                   
                         
                          
               
            </ItemTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
