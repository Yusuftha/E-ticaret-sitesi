using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace proje
{
    public partial class sikayetform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(foto1.HasFile==false || foto2.HasFile==false || foto3.HasFile==false)
            {
                hata.Text = "En Az Üç Adet Ekran Fotoğrafı Seçiniz!";
                hata.CssClass = "text-danger";
            }
            else
            {
                if (foto1.PostedFile.ContentType != "image/jpeg")
                {
                    hata.Text = "Dosyaların resim dosyası olduğuna emin olun!";
                    hata.CssClass = "text-danger";
                }
                else
                {
                    foto1.SaveAs(Server.MapPath("img/sikayetfoto/") + foto1.FileName);
                    foto2.SaveAs(Server.MapPath("img/sikayetfoto/") + foto2.FileName);
                    foto3.SaveAs(Server.MapPath("img/sikayetfoto/") + foto3.FileName);
                    OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                    baglanti.Open();
                    OleDbCommand komutlar = new OleDbCommand("insert into sikayet(ad,soyad,email,sehir,acıkadres,sikayet,ekranfoto1,ekranfoto2,ekranfoto3) values (@ad,@soyad,@email,@sehir,@acıkadres,@sikayet,@ekranfoto1,@ekranfoto2,@ekranfoto3)", baglanti);
                    komutlar.Parameters.AddWithValue("@ad", txtad.Text);
                    komutlar.Parameters.AddWithValue("@soyad", txtsad.Text);
                    komutlar.Parameters.AddWithValue("@email", txtmail.Text);
                    komutlar.Parameters.AddWithValue("@sehir", txtsehir.Value);
                    komutlar.Parameters.AddWithValue("@acıkadres", txtadres.Value);
                    komutlar.Parameters.AddWithValue("@sikayet", txtsikayet.Value);
                    komutlar.Parameters.AddWithValue("@ekranfoto1", foto1.FileName);
                    komutlar.Parameters.AddWithValue("@ekranfoto2", foto2.FileName);
                    komutlar.Parameters.AddWithValue("@ekranfoto3", foto3.FileName);
                    
                    komutlar.ExecuteNonQuery();
                    baglanti.Close();

                    
                    yon.InnerHtml = "<meta http-equiv='refresh' content='2;url=sikayettamamla.aspx'>";
                    
                }
            }
           
        }

       
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (txtad.Text == "" || txtmail.Text == "" || txtsad.Text == "" || txtadres.Value == "" || txtsehir.Value == "" || txtsikayet.Value == "")
            {
                hata.Text = "Tüm Alanların Dolu Olduğundan Emin Olun.";
                hata.CssClass = "text-danger";
                hata.Font.Bold = true;
            }
            else
            {
                Response.Redirect("sikayettamamla.aspx");
                yon.InnerHtml = "<meta http-equiv='refresh' content='2;url=default.aspx'>";
            }
        }
    }
}