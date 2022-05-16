<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="proje.yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <asp:Repeater ID="tekrar" runat="server">
            <ItemTemplate>
                <div style="width: 100%; height: 100px; border: 1px solid #b3b3b3; margin-bottom: 2px;">
                    <div class="row">
                        <div class="col-md-6">
                            <table>
                        <tr>
                            <td>
                                <img src="img/user.png" class="img-responsive" style="height: 40px; width: 40px; margin-right: 15px;" />

                            </td>
                            <td>
                                <h4><%#Eval("kullad") %></h4>
                              
                            </td>
                             
                        </tr>
                       
                        <tr>
                            <td>

                                <td>
                                    <h4><%#Eval("yorum") %></h4>
                                    
                                </td>
                            </td>


                        </tr>
                       
                    </table>
                        </div>
                        <div class="col-md-6 text-right">
                            <a href="yorumsil.aspx?id=<%#Eval("yorumid") %>" style="color:#808080;padding-right:10px;line-height:100px;"><i class="fas fa-trash-alt"></i> Yorum Sil</a>
                        </div>
                    </div>
                </div>




            </ItemTemplate>
        </asp:Repeater>
       
    </div>
</asp:Content>
