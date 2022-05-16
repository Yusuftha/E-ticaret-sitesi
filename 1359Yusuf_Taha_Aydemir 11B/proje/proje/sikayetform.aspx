<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="sikayetform.aspx.cs" Inherits="proje.sikayetform" %>

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
        .inputlar {
            border-color:black;
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
        <div class="col-md-8" style="margin:0px auto;">
            <h3 class="text-center">Şikayet Formu</h3>
            <p class="text-center">
                Aşağıdaki formu doldurarak sorularınızı bize iletebilirsiniz.<br />
                En kısa sürede e-mailiniz üzerinden size yanıt verilecektir.<br />
                <br />
            </p>

            <div class="form-group">
                
                <asp:Label ID="Label1" runat="server" CssClass="col-md-3 control-label labellar" Text="Ad:"></asp:Label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtad" runat="server" CssClass="form-control inputlar"></asp:TextBox>
                </div>
                <div class="col-md-4">
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-3 control-label labellar" Text="Soyad:"></asp:Label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtsad" runat="server" CssClass="form-control inputlar"></asp:TextBox>
                </div>
                <div class="col-md-4">
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-3 control-label labellar" Text="E-mail:"></asp:Label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtmail" runat="server" CssClass="form-control inputlar"></asp:TextBox>
                </div>
                <div class="col-md-4">
                </div>
            </div>

            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-3 control-label labellar" Text="Şehir:"></asp:Label>
                <div class="col-md-5">
                    <select id="txtsehir" runat="server" class="form-control inputlar">
                        <option value="0">Şehir Seçiniz</option>
                        <option value="1">Adana</option>
                        <option value="2">Adıyaman</option>
                        <option value="3">Afyonkarahisar</option>
                        <option value="4">Ağrı</option>
                        <option value="5">Amasya</option>
                        <option value="6">Ankara</option>
                        <option value="7">Antalya</option>
                        <option value="8">Artvin</option>
                        <option value="9">Aydın</option>
                        <option value="10">Balıkesir</option>
                        <option value="11">Bilecik</option>
                        <option value="12">Bingöl</option>
                        <option value="13">Bitlis</option>
                        <option value="14">Bolu</option>
                        <option value="15">Burdur</option>
                        <option value="16">Bursa</option>
                        <option value="17">Çanakkale</option>
                        <option value="18">Çankırı</option>
                        <option value="19">Çorum</option>
                        <option value="20">Denizli</option>
                        <option value="21">Diyarbakır</option>
                        <option value="22">Edirne</option>
                        <option value="23">Elazığ</option>
                        <option value="24">Erzincan</option>
                        <option value="25">Erzurum</option>
                        <option value="26">Eskişehir</option>
                        <option value="27">Gaziantep</option>
                        <option value="28">Giresun</option>
                        <option value="29">Gümüşhane</option>
                        <option value="30">Hakkâri</option>
                        <option value="31">Hatay</option>
                        <option value="32">Isparta</option>
                        <option value="33">Mersin</option>
                        <option value="34">İstanbul</option>
                        <option value="35">İzmir</option>
                        <option value="36">Kars</option>
                        <option value="37">Kastamonu</option>
                        <option value="38">Kayseri</option>
                        <option value="39">Kırklareli</option>
                        <option value="40">Kırşehir</option>
                        <option value="41">Kocaeli</option>
                        <option value="42">Konya</option>
                        <option value="43">Kütahya</option>
                        <option value="44">Malatya</option>
                        <option value="45">Manisa</option>
                        <option value="46">Kahramanmaraş</option>
                        <option value="47">Mardin</option>
                        <option value="48">Muğla</option>
                        <option value="49">Muş</option>
                        <option value="50">Nevşehir</option>
                        <option value="51">Niğde</option>
                        <option value="52">Ordu</option>
                        <option value="53">Rize</option>
                        <option value="54">Sakarya</option>
                        <option value="55">Samsun</option>
                        <option value="56">Siirt</option>
                        <option value="57">Sinop</option>
                        <option value="58">Sivas</option>
                        <option value="59">Tekirdağ</option>
                        <option value="60">Tokat</option>
                        <option value="61">Trabzon</option>
                        <option value="62">Tunceli</option>
                        <option value="63">Şanlıurfa</option>
                        <option value="64">Uşak</option>
                        <option value="65">Van</option>
                        <option value="66">Yozgat</option>
                        <option value="67">Zonguldak</option>
                        <option value="68">Aksaray</option>
                        <option value="69">Bayburt</option>
                        <option value="70">Karaman</option>
                        <option value="71">Kırıkkale</option>
                        <option value="72">Batman</option>
                        <option value="73">Şırnak</option>
                        <option value="74">Bartın</option>
                        <option value="75">Ardahan</option>
                        <option value="76">Iğdır</option>
                        <option value="77">Yalova</option>
                        <option value="78">Karabük</option>
                        <option value="79">Kilis</option>
                        <option value="80">Osmaniye</option>
                        <option value="81">Düzce</option>

                    </select>
                </div>
                <div class="col-md-4">
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-3 control-label labellar" Text="Açık Adres:"></asp:Label>
                <div class="col-md-5">
                    <textarea ID="txtadres" runat="server" class="form-control inputlar" style="resize: none" cols="4" rows="5"></textarea>
                </div>
                <div class="col-md-4">
                </div>
            </div>

            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-3 control-label labellar" Text="Şikayetiniz:"></asp:Label>
                <div class="col-md-5">
                    <textarea ID="txtsikayet" runat="server" class="form-control inputlar" style="resize: none" cols="4" rows="5"></textarea>
                </div>
                <div class="col-md-4">
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-3 control-label labellar" Text="Ekran Fotoğrafları:"></asp:Label>
                <div class="col-md-5">
                    <asp:FileUpload ID="foto1" runat="server" /><br />
                    <asp:FileUpload ID="foto2" runat="server" /><br />
                    <asp:FileUpload ID="foto3" runat="server" />
                </div>
                <div class="col-md-4">
                </div>
            </div>
            
                <br />
            <div class="text-center">
                <asp:Button ID="Button1" Text="Gönder" CssClass="butonlar" runat="server" OnClick="Unnamed1_Click" />
            </div>
            
            <br />
            <div class="text-center">
                <asp:Label ID="hata" runat="server" Text=""></asp:Label>
            </div>
            <div id="yon" runat="server">

            </div>
            <asp:Image ID="Image1" runat="server" />
        </div>
    </div>


</asp:Content>
