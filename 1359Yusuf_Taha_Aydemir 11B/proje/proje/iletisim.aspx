<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="proje.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    </style>
    <div class="row">
        <div class="col-md-4">
            <h3>Kurumsal</h3>
            <br />
            <br />
            <a href="hakkimizda.aspx" style="text-decoration: none; color: black; font-size: 18px">Hakkımızda</a> <span class="glyphicon glyphicon-menu-right"></span>
            <br />
            <br />
            <br />
            <a href="iletisim.aspx" style="text-decoration: none; color: black; font-size: 18px">İletişim <span class="glyphicon glyphicon-menu-right"></span></a>
        </div>
        <div class="col-md-8" style="padding-left: 20px;">

            <h2 class="text-center">İletişim Bilgileri</h2>

            <h3>Sorumlu Kişi</h3>
            <h5>Yusuf Taha AYDEMİR</h5>

            <br />

            <h3>Çağrı Merkezi</h3>
            (0216) 444 44 44
						<h5>Hafta içi ve hafta sonu saat 09:00 ile 23:30 arasında siz değerli müşterilerimize kaliteli ve kesintisiz destek vermektedir.</h5>

            <br />

            <h3>Mail Adresleri</h3>
            <h5>technolife@gmail.com  & tecnolifesikayet@gmail.com</h5>

            <br />

            <h3>Merkez Bina Adresi</h3>
            <h5>Armağanevler Mahallesi Sırt Sokak No 141 İstanbul/Ümraniye</h5>

            <br />

            <h3>Sosyal Medya Adresleri</h3>
            <h5>
                <button class="btn" style="border-radius: 100%; margin-bottom: 10px;"><i class="fab fa-twitter"></i></button>
                twitter/TechnoLife<br />
                <button class="btn" style="border-radius: 100%; margin-bottom: 10px;"><i class="fab fa-facebook-square"></i></button>
                facebook/TechnoLige<br />
                <button class="btn" style="border-radius: 100%; margin-bottom: 10px;"><i class="fab fa-instagram"></i></button>
                instagram/techno_life<br />
                <button class="btn" style="border-radius: 100%; margin-bottom: 10px;"><i class="fab fa-google"></i></button>
                google/technolife@gmail.com</h5>

            <br />
            <div class="text-center">
                <a href="sikayetform.aspx" class="butonlar"> Şikayetleriniz için</a>
            </div>
            <br />
            <br />
            <div class="text-center">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3010.5911542597482!2d29.107409314914573!3d41.01232102712581!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cac893647c00c9%3A0x7874c53dabc2d2ee!2zQXJtYcSfYW4gRXZsZXIgTWFoYWxsZXNpLCBTxLFydCBTay4gTm86MTQ4LCAzNDc2MCDDnG1yYW5peWUvxLBzdGFuYnVs!5e0!3m2!1str!2str!4v1556398967365!5m2!1str!2str" width="500" height="400"></iframe>
            </div>

        </div>
    </div>
</asp:Content>
