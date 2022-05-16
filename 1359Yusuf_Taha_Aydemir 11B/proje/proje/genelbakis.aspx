<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="genelbakis.aspx.cs" Inherits="proje.genelbakis" %>

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
        <div class="row" style="width:95%;margin:0px auto;">
            <asp:Repeater id="tekrar" runat="server">
                <ItemTemplate>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="text-center"><%#Eval("urunadı") %></h3>
                        </div>

                        <div class="col-md-6">
                            <img src="img/<%#Eval("foto1") %>" alt="Alternate Text" style="width:300px;height:300px;" />
                        </div>
                   </div>

        <div class="row">
            <div class="col-md-6" >
                
                <img src="img/<%#Eval("foto2") %>" alt="Alternate Text" style="width:300px;height:300px;" />
            </div>

            <div class="col-md-6">
                <p style="text-align:justify;font-size:18px;color:#808080;padding-top:20px;">
                    <%#Eval("yazi1") %>
                </p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <p style="text-align:justify;font-size:18px;color:#808080;padding-top:20px">
                    <%#Eval("yazi2") %>
                </p>
                
            </div>

            <div class="col-md-6">
                
                <img src="img/<%#Eval("foto3") %>" alt="Alternate Text" style="width:300px;height:300px;" />
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <p style="text-align:justify;font-size:18px;color:#808080;padding-top:20px">
                    
                    <img src="img/genelfoto/<%#Eval("foto4") %>" alt="Alternate Text" />
                </p>
                
            </div>

            <div class="col-md-6">
                <p style="font-size:18px;color:#808080;padding-top:20px">
                     <%#Eval("yazi3") %>
                </p>
            </div>
        </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
