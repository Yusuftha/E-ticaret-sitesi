<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="proje.sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .sepetbtn {
            display: block;
            width: 100px;
            height: 25px;
            background-color: #595959;
            color: white;
            border-radius: 8px;
            line-height: 25px;
            text-decoration: none;
            margin: 0px auto;
            text-align: center;
        }
    </style>
    <div class="row">
        <div class="col-md-8">
            <h3>Sepetim</h3>
            <asp:Repeater ID="tekrar" runat="server">
                <ItemTemplate>
                    
                    <div class="row" style="border: 2px solid #cccbcb;padding:10px;margin-bottom:2px;box-shadow:2px 3px 4px #808080">
                        

                        <hr style="border-color: #d9d9d9;" />
                        <div class="col-md-3">
                            <img src="img/<%# Eval("urlfoto") %>" class="img-responsive" style="width:100px;height:100px;" />
                        </div>

                        <div class="col-md-3">
                            <h5><%# Eval("urunadı") %></h5>
                        </div>

                        <div class="col-md-3 text-center">
                            <h4><%# Eval("fiyat","{0:C}") %></h4>
                        </div>

                        <div class="col-md-3">
                            <a href="urunozel.aspx?id=<%# Eval("urunid") %>" class="sepetbtn">Ürüne Git</a>
                            
                        </div>
                        <p class="text-right">
                            <a href="sepeturunsil.aspx?id=<%#Eval("urunid") %>" ><i class="fas fa-trash-alt text-right" style="color:#595959"></i></a>
                        </p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="tekrar2" runat="server">
                <ItemTemplate>
                    
                    <div class="row" style="border: 2px solid #cccbcb;padding:10px;margin-bottom:2px;box-shadow:2px 3px 4px #808080">
                        

                        <hr style="border-color: #d9d9d9;" />
                        <div class="col-md-3">
                            <img src="img/tablet/<%# Eval("urlfoto") %>" class="img-responsive" style="width:100px;height:100px;" />
                        </div>

                        <div class="col-md-3">
                            <h5><%# Eval("urunadı") %></h5>
                        </div>

                        <div class="col-md-3 text-center">
                            <h4><%# Eval("fiyat","{0:C}") %></h4>
                        </div>

                        <div class="col-md-3">
                            <a href="urunozel2.aspx?id=<%# Eval("urunid") %>" class="sepetbtn">Ürüne Git</a>
                            
                        </div>
                        <p class="text-right">
                            <a href="sepeturunsil.aspx?id=<%#Eval("urunid") %>" ><i class="fas fa-trash-alt text-right" style="color:#595959"></i></a>
                        </p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <h3 class="text-center"><asp:Label ID="durum2" CssClass="" runat="server" Text="" /></h3>
        </div>

        <div class="col-md-4">
            <div class="text-center" style="border:2px solid #cccbcb;width:220px;margin:0px auto;height:200px;margin-top:20px;">
                <h3>Sipariş Özeti</h3>
                <table class="table">
                    <tr style="color:#595959;">
                       <td style="font-size:20px;"><asp:Label ID="durum" CssClass="" runat="server" Text=""></asp:Label></td>
                    </tr>
                    
                </table>
             </div>
            <div id="yon" runat="server">

            </div>
        </div>
    </div>
    
</asp:Content>
