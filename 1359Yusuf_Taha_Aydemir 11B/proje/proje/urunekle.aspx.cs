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
    public partial class urunekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (resim1.PostedFile.ContentType != "image/jpeg" || resim2.PostedFile.ContentType != "image/jpeg" || resim3.PostedFile.ContentType != "image/jpeg")
            {
                hata.Text = "Dosyalar image dosyası değil lütfen kontrol ediniz.";
            }
            else
            {
                resim1.SaveAs(Server.MapPath("img/")+resim1.FileName);
                resim2.SaveAs(Server.MapPath("img/") + resim2.FileName);
                resim3.SaveAs(Server.MapPath("img/") + resim3.FileName);
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                baglanti.Open();
                OleDbCommand komut = new OleDbCommand("insert into urunler (urunadı,urunmodel,renk,kapasite,arkakamera,onkamera,ekranboyut,ekrankarti,cozunurluk,ram,islemci,fiyat,urlfoto,urlfoto2,urlfoto3) values (@urunadı,@urunmodel,@renk,@kapasite,@arkakamera,@onkamera,@ekranboyut,@ekrankarti,@cozunurluk,@ram,@islemci,@fiyat,@urlfoto,@urlfoto2,@urlfoto3)",baglanti);
                komut.Parameters.AddWithValue("@urunadı", txtuad.Text);
                komut.Parameters.AddWithValue("@urunmodel", txtmodel.Text);
                komut.Parameters.AddWithValue("@renk", txtrenk.Text);
                komut.Parameters.AddWithValue("@kapasite", txtkapasite.Text);
                komut.Parameters.AddWithValue("@arkakamera", txtarkak.Text);
                komut.Parameters.AddWithValue("@onkamera", txtonk.Text);
                komut.Parameters.AddWithValue("@ekranboyut", txtekranb.Text);
                komut.Parameters.AddWithValue("@ekrankarti", txtekrankart.Text);
                komut.Parameters.AddWithValue("@cozunurluk", txtcozunurluk.Text);
                komut.Parameters.AddWithValue("@ram", txtram.Text);
                komut.Parameters.AddWithValue("@islemci", txtislemci.Text);
                komut.Parameters.AddWithValue("@fiyat", txtfiyat.Text);
                komut.Parameters.AddWithValue("@urlfoto", resim1.FileName);
                komut.Parameters.AddWithValue("@urlfoto2", resim2.FileName);
                komut.Parameters.AddWithValue("@urlfoto3", resim3.FileName);
                komut.ExecuteNonQuery();
                baglanti.Close();
                Image1.ImageUrl = "img/" + resim1.FileName;
                Image2.ImageUrl = "img/" + resim2.FileName;
                Image3.ImageUrl = "img/" + resim3.FileName;
                yon.InnerHtml = "<meta http-equiv='refresh' content='2;url=admin.aspx'>";
            }
        }
    }
}