<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="uyeol.aspx.cs" Inherits="proje.uyeol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Üye ol</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
        .labellar {
            font-size: 18px;
            text-align: left;
        }

        .inputlar {
            font-size: 18px;
            width: 100%;
            height: 35px;
            border-color:black;
            padding-left: 5px;
            outline-color: green;
        }

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

        .butonlar2 {
            padding: 10px;
            background-color: green;
            color: white;
            border: none;
            width: 100px;
            border-radius: 5px;
            transition-duration: 200ms;
        }

            .butonlar2:hover {
                background-color: white;
                color: green;
                padding: 15px;
            }
    </style>
</head>
<body style="background-color: #e6e6e6;">
    <form id="form1" runat="server" class="form-horizontal">
        <div class="container-fluid">
            <div class="img-responsive" style="width: 100%; margin-bottom: 50px;">
                <a href="default.aspx">
                    <img src="img/uyeolust.jpg" style="width: 100%;" /></a>
            </div>
            <div class="row">
                <div class="col-md-3">
                </div>

                <div class="col-md-6" style="background-color: white; padding: 25px;">

                    <h3 style="text-align: center;">Techno Life.com'a Üye Olun</h3>
                    <h5 style="text-align: center; color: #999999">Üye olmanız size kolaylık ve avantaj sağlayacaktır</h5>
                    <br />
                    <br />
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="control-label col-md-1" Text=""></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtkad" placeholder="Adınız:" BorderStyle="Solid" runat="server" CssClass="form-control inputlar" BorderColor="Black"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Ad alanı boş olamaz" ControlToValidate="txtkad" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="control-label col-md-1" Text=""></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtsad" placeholder="Soyadınız:" runat="server" CssClass="form-control inputlar"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Soyad alanı boş kalamaz. " ControlToValidate="txtsad" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" CssClass="control-label col-md-1" Text=""></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtmail" placeholder="E-posta:" runat="server" CssClass="form-control inputlar"></asp:TextBox>

                        </div>
                        <div class="col-md-4">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Yanlış e-mail formatı." ControlToValidate="txtmail" CssClass="alert alert-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" CssClass="control-label col-md-1" Text=""></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtsfr" placeholder="Sifreniz:" runat="server" CssClass="form-control inputlar" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" CssClass="control-label col-md-1" Text=""></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtsfr2" placeholder="Sifreniz(Tekrar):" runat="server" CssClass="form-control inputlar" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Şifreler uyuşmuyor." ControlToCompare="txtsfr" ControlToValidate="txtsfr2" CssClass="alert alert-danger"></asp:CompareValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" CssClass="control-label col-md-1" Text=""></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txttel" placeholder="Telefon:" runat="server" CssClass="form-control inputlar"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Telefon alanı boş kalamaz. " ControlToValidate="txttel" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        
                        <div class="col-md-5">
                            <asp:Label ID="Label7" runat="server" CssClass="control-label col-md-1" Text=""></asp:Label>
                            <div style="padding: 5px; text-align: center;width:235px;" class="col-md-offset-7" id="txtcins">
                                <label style="padding-right: 20px;">
                                    <input type="radio" runat="server" id="erkek" value="erk" name="optradio" />
                                    Erkek</label>
                                <label>
                                    <input type="radio" id="kadin" value="kdn" runat="server" name="optradio" />
                                    Kadın</label>
                            </div>

                        </div>
                        <div class="col-md-4">
                        </div>
                    </div>

                    <div class="form-group">
                       <asp:Label ID="Label8" runat="server" CssClass="control-label col-md-1" Text=""></asp:Label>
                        <div class="col-md-5">
                            <input type="date" runat="server" id="txtdtarih" name="tarih" value="dtarih" class="form-control inputlar" />
                        </div>
                        <div class="col-md-4">
                        </div>
                    </div>
                    <div>

                        <div class="text-center">
                            <input type="checkbox" id="sozlesme" runat="server" value="ok" /><a data-toggle="modal" data-target="#myModal"> Üyelik Sözleşmesini</a> okudum kabul ediyorum
                        </div>
                        <br />

                               
                                <div id="myModal" class="modal fade" role="dialog">
                                    <div class="modal-dialog">


                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">ÜYELİK SÖZLEŞMESİ</h4>
                                            </div>
                                            <div class="modal-body">
                                                <h3> SİTE KULLANIM ŞARTLARI</h3>
                                               
                                                    Lütfen sitemizi kullanmadan evvel bu ‘site kullanım şartları’nı dikkatlice okuyunuz.
                                                    <br />
                                                Bu alışveriş sitesini kullanan ve alışveriş yapan müşterilerimiz aşağıdaki şartları kabul etmiş varsayılmaktadır:br 
                                                    Sitemizdeki web sayfaları ve ona bağlı tüm sayfalar (‘site’) ……………………… adresindeki ……………………………….firmasının (Firma) malıdır ve onun tarafından işletilir.<br />
                                                Sizler (‘Kullanıcı’) sitede sunulan tüm hizmetleri kullanırken aşağıdaki şartlara tabi olduğunuzu, sitedeki hizmetten yararlanmakla ve kullanmaya devam etmekle;<br />
                                                Bağlı olduğunuz yasalara göre sözleşme imzalama hakkına, yetkisine ve hukuki ehliyetine sahip ve 18 yaşın üzerinde olduğunuzu, bu sözleşmeyi okuduğunuzu, anladığınızı ve sözleşmede yazan şartlarla bağlı olduğunuzu kabul etmiş sayılırsınız.
                                                    <br />

                                                İşbu sözleşme taraflara sözleşme konusu site ile ilgili hak ve yükümlülükler yükler ve taraflar işbu sözleşmeyi kabul ettiklerinde bahsi geçen hak ve yükümlülükleri eksiksiz, doğru, zamanında, işbu sözleşmede talep edilen şartlar dâhilinde yerine getireceklerini beyan ederler.<br />

                                                <h4>1. SORUMLULUKLAR</h4>
                                                    <br />
                                                a.Firma, fiyatlar ve sunulan ürün ve hizmetler üzerinde değişiklik yapma hakkını her zaman saklı tutar.
                                                    <br />
                                                b.Firma, üyenin sözleşme konusu hizmetlerden, teknik arızalar dışında yararlandırılacağını kabul ve taahhüt eder.<br />
                                                <br />
                                                c.Kullanıcı, sitenin kullanımında tersine mühendislik yapmayacağını ya da bunların kaynak kodunu bulmak veya elde etmek amacına yönelik herhangi bir başka işlemde bulunmayacağını aksi halde ve 3. Kişiler nezdinde doğacak zararlardan sorumlu olacağını, hakkında hukuki ve cezai işlem yapılacağını peşinen kabul eder.
                                                    <br />
                                                d.Kullanıcı, site içindeki faaliyetlerinde, sitenin herhangi bir bölümünde veya iletişimlerinde genel ahlaka ve adaba aykırı, kanuna aykırı, 3. Kişilerin haklarını zedeleyen, yanıltıcı, saldırgan, müstehcen, pornografik, kişilik haklarını zedeleyen, telif haklarına aykırı, yasa dışı faaliyetleri teşvik eden içerikler üretmeyeceğini, paylaşmayacağını kabul eder. Aksi halde oluşacak zarardan tamamen kendisi sorumludur ve bu durumda ‘Site’ yetkilileri, bu tür hesapları askıya alabilir, sona erdirebilir, yasal süreç başlatma hakkını saklı tutar. Bu sebeple yargı mercilerinden etkinlik veya kullanıcı hesapları ile ilgili bilgi talepleri gelirse paylaşma hakkını saklı tutar.<br />
                                                e.Sitenin üyelerinin birbirleri veya üçüncü şahıslarla olan ilişkileri kendi sorumluluğundadır. 

                                                   <h4> 2.  Fikri Mülkiyet Hakları</h4>
                                                    <br />

                                                2.1. İşbu Site’de yer alan ünvan, işletme adı, marka, patent, logo, tasarım, bilgi ve yöntem gibi tescilli veya tescilsiz tüm fikri mülkiyet hakları site işleteni ve sahibi firmaya veya belirtilen ilgilisine ait olup, ulusal ve uluslararası hukukun koruması altındadır. İşbu Site’nin ziyaret edilmesi veya bu Site’deki hizmetlerden yararlanılması söz konusu fikri mülkiyet hakları konusunda hiçbir hak vermez.<br />
                                                2.2. Site’de yer alan bilgiler hiçbir şekilde çoğaltılamaz, yayınlanamaz, kopyalanamaz, sunulamaz ve/veya aktarılamaz. Site’nin bütünü veya bir kısmı diğer bir internet sitesinde izinsiz olarak kullanılamaz.
                                                    <br />

                                                <h4>3. Gizli Bilgi</h4>

                                                    3.1. Firma, site üzerinden kullanıcıların ilettiği kişisel bilgileri 3. Kişilere açıklamayacaktır. Bu kişisel bilgiler; kişi adı-soyadı, adresi, telefon numarası, cep telefonu, e-posta adresi gibi Kullanıcı’yı tanımlamaya yönelik her türlü diğer bilgiyi içermekte olup, kısaca ‘Gizli Bilgiler’ olarak anılacaktır.<br />

                                                3.2. Kullanıcı, sadece tanıtım, reklam, kampanya, promosyon, duyuru vb. pazarlama faaliyetleri kapsamında kullanılması ile sınırlı olmak üzere, Site’nin sahibi olan firmanın kendisine ait iletişim, portföy durumu ve demografik bilgilerini iştirakleri ya da bağlı bulunduğu grup şirketleri ile paylaşmasına muvafakat ettiğini kabul ve beyan eder. Bu kişisel bilgiler firma bünyesinde müşteri profili belirlemek, müşteri profiline uygun promosyon ve kampanyalar sunmak ve istatistiksel çalışmalar yapmak amacıyla kullanılabilecektir.<br />

                                                3.3. Gizli Bilgiler, ancak resmi makamlarca usulü dairesinde bu bilgilerin talep edilmesi halinde ve yürürlükteki emredici mevzuat hükümleri gereğince resmi makamlara açıklama yapılmasının zorunlu olduğu durumlarda resmi makamlara açıklanabilecektir.<br />

                                                4. Garanti Vermeme: İŞBU SÖZLEŞME MADDESİ UYGULANABİLİR KANUNUN İZİN VERDİĞİ AZAMİ ÖLÇÜDE GEÇERLİ OLACAKTIR. FİRMA TARAFINDAN SUNULAN HİZMETLER "OLDUĞU GİBİ” VE "MÜMKÜN OLDUĞU” TEMELDE SUNULMAKTA VE PAZARLANABİLİRLİK, BELİRLİ BİR AMACA UYGUNLUK VEYA İHLAL ETMEME KONUSUNDA TÜM ZIMNİ GARANTİLER DE DÂHİL OLMAK ÜZERE HİZMETLER VEYA UYGULAMA İLE İLGİLİ OLARAK (BUNLARDA YER ALAN TÜM BİLGİLER DÂHİL) SARİH VEYA ZIMNİ, KANUNİ VEYA BAŞKA BİR NİTELİKTE HİÇBİR GARANTİDE BULUNMAMAKTADIR.
                                                    <br />

                                                <h4>5. Kayıt ve Güvenlik</h4>

                                                    Kullanıcı, doğru, eksiksiz ve güncel kayıt bilgilerini vermek zorundadır. Aksi halde bu Sözleşme ihlal edilmiş sayılacak ve Kullanıcı bilgilendirilmeksizin hesap kapatılabilecektir.<br />
                                                Kullanıcı, site ve üçüncü taraf sitelerdeki şifre ve hesap güvenliğinden kendisi sorumludur. Aksi halde oluşacak veri kayıplarından ve güvenlik ihlallerinden veya donanım ve cihazların zarar görmesinden Firma sorumlu tutulamaz.<br />

                                                <h4>6. Mücbir Sebep</h4>


                                                    Tarafların kontrolünde olmayan; tabii afetler, yangın, patlamalar, iç savaşlar, savaşlar, ayaklanmalar, halk hareketleri, seferberlik ilanı, grev, lokavt ve salgın hastalıklar, altyapı ve internet arızaları, elektrik kesintisi gibi sebeplerden (aşağıda birlikte "Mücbir Sebep” olarak anılacaktır.) dolayı sözleşmeden doğan yükümlülükler taraflarca ifa edilemez hale gelirse, taraflar bundan sorumlu değildir. Bu sürede Taraflar’ın işbu Sözleşme’den doğan hak ve yükümlülükleri askıya alınır.
                                                    <br />

                                                <h4>7. Sözleşmenin Bütünlüğü ve Uygulanabilirlik</h4>
                                                <br />

                                                İşbu sözleşme şartlarından biri, kısmen veya tamamen geçersiz hale gelirse, sözleşmenin geri kalanı geçerliliğini korumaya devam eder.<br />

                                                <h4> 8. Sözleşmede Yapılacak Değişiklikler</h4>
                                                <br />

                                                Firma, dilediği zaman sitede sunulan hizmetleri ve işbu sözleşme şartlarını kısmen veya tamamen değiştirebilir. Değişiklikler sitede yayınlandığı tarihten itibaren geçerli olacaktır. Değişiklikleri takip etmek Kullanıcı’nın sorumluluğundadır. Kullanıcı, sunulan hizmetlerden yararlanmaya devam etmekle bu değişiklikleri de kabul etmiş sayılır.<br />

                                                <h4>9. Tebligat</h4>
                                                <br />
                                                İşbu Sözleşme ile ilgili taraflara gönderilecek olan tüm bildirimler, Firma’nın bilinen e.posta adresi ve kullanıcının üyelik formunda belirttiği e.posta adresi vasıtasıyla yapılacaktır. Kullanıcı, üye olurken belirttiği adresin geçerli tebligat adresi olduğunu, değişmesi durumunda 5 gün içinde yazılı olarak diğer tarafa bildireceğini, aksi halde bu adrese yapılacak tebligatların geçerli sayılacağını kabul eder.<br />

                                                <h4>10. Delil Sözleşmesi</h4>
                                                <br />
                                                Taraflar arasında işbu sözleşme ile ilgili işlemler için çıkabilecek her türlü uyuşmazlıklarda Taraflar’ın defter, kayıt ve belgeleri ile ve bilgisayar kayıtları ve faks kayıtları 6100 sayılı Hukuk Muhakemeleri Kanunu uyarınca delil olarak kabul edilecek olup, kullanıcı bu kayıtlara itiraz etmeyeceğini kabul eder.<br />

                                                <h4>10. Delil Sözleşmesi</h4>
                                                <br />
                                                İşbu Sözleşme’nin uygulanmasından veya yorumlanmasından doğacak her türlü uyuşmazlığın çözümünde İstanbul (Merkez) Adliyesi Mahkemeleri ve İcra Daireleri yetkilidir.
                                                
                                            </div>

                                        </div>

                                    </div>
                                </div>

                    </div>
                <asp:Button Text="Üye Kaydımı Tamamla" ID="kayıtbuton" CssClass="col-md-offset-3 butonlar" runat="server" OnClick="kayıtbuton_Click" /><br />
                <br />

                <div class="row">
                    <div class="col-md-4">
                        <h4 class="text-right">Zaten üye misin?</h4>
                    </div>
                    <div class="col-md-8">
                        <asp:Button Text="Giriş Yap" ID="Button1" CssClass="col-md-offset-3 butonlar2" runat="server" />
                    </div>
                </div>
                <br />

                <div class="text-center">
                    <asp:Label ID="hata" runat="server" Text=""></asp:Label>
                    
                </div>
                <div class="text-center" id="yon" runat="server">

                </div>    
            </div>

            <div class="col-md-3">
            </div>
        </div>
        </div>
    </form>
</body>
</html>
