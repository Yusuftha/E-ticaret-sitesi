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
    public partial class admingiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void admingir_Click(object sender, EventArgs e)
        {
            if (txtaad.Text == "" || txtasfr.Text == "")
            {
                hata.Text = "*Giriş yapabilmek için alanları doldurun";
                hata.CssClass = "text-danger";
                hata.Font.Bold = true;
            }
            else
            {
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                baglanti.Open();
                OleDbCommand komutlar = new OleDbCommand("select * from admin where kullanici=@kullanici and sifre=@sifre", baglanti);
                komutlar.Parameters.AddWithValue("@kullanici", txtaad.Text);
                komutlar.Parameters.AddWithValue("@sifre", txtasfr.Text);
                OleDbDataReader okuyucu = komutlar.ExecuteReader();
                if (okuyucu.Read())
                {
                    Session.Add("admin", okuyucu["kullanici"]);
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    hata.Text = "Üye Kaydı Bulunamadı.";
                    hata.CssClass = "text-danger";
                    hata.Font.Bold = true;
                }
            }
        }
    }
}