using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace proje
{
    public partial class uyeol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kayıtbuton_Click(object sender, EventArgs e)
        {
            if (txtkad.Text == "" || txtmail.Text == "" || txtsad.Text == "" || txtsfr.Text == "" || txttel.Text == "" || txtdtarih.Value == "")
            {
                hata.Text = "Tüm Alanların Dolu Olduğundan Emin Olun.";
                hata.CssClass = "text-danger";
                hata.Font.Bold = true;
            }
            else
            {
                if (txtsfr.Text != txtsfr2.Text)
                {
                    hata.Text = "Şifreler Uyuşmuyor Kontrol Ediniz.";
                    hata.CssClass = "text-center";
                    hata.Font.Bold = true;
                }
                if (sozlesme.Checked == false)
                {
                    hata.Text = "Sözleşmeyi Kabul Ediniz.";
                    hata.CssClass = "text-center";
                    hata.Font.Bold = true;
                }
                else
                {
                    OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                    baglanti.Open();
                    OleDbCommand komutlar = new OleDbCommand("insert into uyeler(ad,soyad,mail,sifre,telefon,dtarih) values (@ad,@soyad,@mail,@sifre,@telefon,@dtarih)", baglanti);
                    komutlar.Parameters.AddWithValue("@ad", txtkad.Text);
                    komutlar.Parameters.AddWithValue("@soyad", txtsad.Text);
                    komutlar.Parameters.AddWithValue("@mail", txtmail.Text);
                    komutlar.Parameters.AddWithValue("@sifre", txtsfr.Text);
                    komutlar.Parameters.AddWithValue("@telefon", txttel.Text);
                    komutlar.Parameters.AddWithValue("@dtarih", txtdtarih.Value);
                    komutlar.ExecuteNonQuery();
                    baglanti.Close();
                    kayıtbuton.Enabled = false;
                    hata.Text = "Üye Kayıdınız tamamlandı.";
                    yon.InnerHtml = "<meta http-equiv='refresh' content='2;url=default.aspx'>";
                    hata.CssClass = "text-success";
                    hata.Font.Bold = true;

                }
            }
        }
    }
}