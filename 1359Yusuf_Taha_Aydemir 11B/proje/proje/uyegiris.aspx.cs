using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
namespace proje
{
    public partial class uyegiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (txtposta.Text == "" || txtsifre.Text == "")
            {
                hata2.Text = "*Giriş yapabilmek için alanları doldurun";
                hata2.CssClass = "text-danger";
                hata2.Font.Bold = true;
            }
            else
            {
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                baglanti.Open();
                OleDbCommand komutlar = new OleDbCommand("select * from uyeler where mail=@mail or ad=@ad and sifre=@sifre", baglanti);
                komutlar.Parameters.AddWithValue("@mail", txtposta.Text);
                komutlar.Parameters.AddWithValue("@ad", txtposta.Text);
                komutlar.Parameters.AddWithValue("@sifre", txtsifre.Text);
                OleDbDataReader okuyucu = komutlar.ExecuteReader();
                if (okuyucu.Read())
                {
                    Session.Add("kullaniciad", okuyucu["ad"]);
                    Session.Add("kullanici", okuyucu["mail"]);
                    Session.Add("uyeid", okuyucu["uyeid"]);
                    Session.Timeout = 5;
                    Response.Redirect("default.aspx");
                }
                else
                {
                    hata2.Text = "Üye Kaydı Bulunamadı.";
                    hata2.CssClass = "text-danger";
                    hata2.Font.Bold = true;
                }
           }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
     }
 }
