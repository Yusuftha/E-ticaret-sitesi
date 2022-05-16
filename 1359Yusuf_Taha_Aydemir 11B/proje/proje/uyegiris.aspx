<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyegiris.aspx.cs" Inherits="proje.uyegiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
    
    <style>
        .butonlar {
            padding: 10px;
            background-color: black;
            color: white;
            border: none;
            width: 250px;
            border-radius: 5px;
            transition-duration: 200ms;
        }

            .butonlar:hover {
                background-color: white;
                color: black;
                padding: 15px;
            }
        .inputlar {
            font-size: 18px;
            width: 100%;
            height: 35px;
            border-color:black;
            padding-left: 5px;
            outline-color: green;
        }
        .labellar {
            font-size: 18px;
            text-align: left;
        }
        .butonlar2 {
            padding: 10px;
            background-color: green;
            color: white;
            border: none;
            width: 150px;
            border-radius: 5px;
            transition-duration: 200ms;
        }

            .butonlar2:hover {
                background-color: white;
                color: green;
                padding: 15px;
            }
        .uyebuton {
            text-decoration:none;
            display:block;
            width:250px;
            background-color:black;
            color:white;
            height:40px;
            text-align:center;
            line-height:40px;
            border-radius:5px;
            transition-duration:200ms;
            
        }
            .uyebuton:hover {
                color:black;
                background-color:white;
                text-decoration:none;
                height:45px;
            }
    </style>
    
</head>
<body style="background-color: #e6e6e6;">
    <form id="form1" class="form-horizontal" runat="server">
        <div class="container-fluid">
            <div class="img-responsive" style="width: 100%; margin-bottom: 50px;">
                <a href="default.aspx"><img src="img/uyeolust.jpg" style="width: 100%;" /></a> 
            </div>
            <div class="discerceve" style="background-color:white;padding:10px;height:450px;">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="col-md-offset-1">Giriş Yap</h3>
                        <br />
                        <br />
                        <br />
                        <div class="form-group">
                             <asp:Label ID="Label2" runat="server" CssClass="control-label col-md-1" Text=""></asp:Label> 
                            <div class="col-md-6">
                               
                                <asp:TextBox ID="txtposta" placeholder="E-Posta" CssClass="form-control inputlar" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" CssClass="control-label col-md-1" Text=""></asp:Label>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtsifre" placeholder="Şifre" CssClass="form-control inputlar" runat="server" TextMode="Password"></asp:TextBox><br />
                                <a href="#"><i class="fas fa-eye col-md-offset-3"></i> Göster/Gizle</a>
                            </div>
                        </div>
                        <div class="checkbox col-md-offset-3">
                            <label><input type="checkbox" /> Beni Unutma</label>
                        </div>
                        <br />
                        <div class="text-center">
                            <asp:Button Text="Giriş Yap" ID="Button2" CssClass="butonlar2" runat="server" OnClick="Button2_Click" />
                        </div>
                        <br />
                        <br />
                        <div class="text-center">
                            <asp:Label ID="hata2" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h3 style="color:black">Üye Değil Misiniz?</h3>
                        <h5>Hemen üye olun, indirimli alışverişi kaçırmayın.</h5>
                        <div class="row">
                            <div class="col-md-2">
                                <img src="img/uyesol.JPG" class="img-responsive" />
                            </div>
                            <div class="col-md-6 text-left">
                                <h4 style="color:black">Avantajlı Alışveriş</h4>
                                <p style="color:gray;height:50px;">
                                    Satın aldığınız ürünler ile indirim kuponları kazanma fırsatı.
                                </p>
                                <h4 style="color:black">Kolay erişim</h4>
                                <p style="color:gray;height:50px;">
                                    İstediğiniz her teknolojik alet TechnoLife.com da.
                                </p>
                                <h4 style="color:black">Güvenilir Platform</h4>
                                <p style="color:gray;height:70px;">
                                    Güvenli alışveriş'in adresi.
                                </p>
                                <a href="uyeol.aspx" class="uyebuton">ÜYE OL</a>
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    
</body>
</html>
