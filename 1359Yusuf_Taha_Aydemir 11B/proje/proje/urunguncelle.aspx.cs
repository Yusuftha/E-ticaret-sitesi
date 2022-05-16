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
    public partial class urunguncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                if (IsPostBack == false)
                {
                    OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                    baglanti.Open();
                    string geleid = Request.QueryString["id"];
                    OleDbCommand sorgu = new OleDbCommand("select * from urunler where urunid=" + geleid, baglanti);
                    OleDbDataReader okuyucu = sorgu.ExecuteReader();
                    if (okuyucu.Read())
                    {
                        txtuid.Text = okuyucu["urunid"].ToString();
                        txtuad.Text = okuyucu["urunadı"].ToString();
                        txtmodel.Text = okuyucu["urunmodel"].ToString();
                        txtrenk.Text = okuyucu["renk"].ToString();
                        txtkapasite.Text = okuyucu["kapasite"].ToString();
                        txtarkak.Text = okuyucu["arkakamera"].ToString();
                        txtonk.Text = okuyucu["onkamera"].ToString();
                        txtekranb.Text = okuyucu["ekranboyut"].ToString();
                        txtcozunurluk.Text = okuyucu["cozunurluk"].ToString();
                        txtram.Text = okuyucu["ram"].ToString();
                        txtislemci.Text = okuyucu["islemci"].ToString();
                        txtfiyat.Text = okuyucu["fiyat"].ToString();
                        txtryol.Text = okuyucu["urlfoto"].ToString();
                        txtryol2.Text = okuyucu["urlfoto2"].ToString();
                        txtryol3.Text = okuyucu["urlfoto3"].ToString();
                    }
                    baglanti.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtuad.Text == "" || txtmodel.Text == "" || txtrenk.Text == "" || txtkapasite.Text == "" || txtarkak.Text == "" || txtonk.Text == "" || txtekranb.Text == "" || txtcozunurluk.Text == "" || txtram.Text == "" || txtislemci.Text == "" || txtryol.Text == "" || txtryol2.Text == "" || txtryol3.Text == "")
            {
                hata.Text = "Alanlar boş kalamaz";
            }
            else
            {
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                baglanti.Open();
                string geleid = Request.QueryString["id"];
                OleDbCommand komut = new OleDbCommand("update urunler set urunadı=@urunadı,urunmodel=@urunmodel,renk=@renk,kapasite=@kapasite,arkakamera=@arkakamera,onkamera=@onkamera,ekranboyut=@ekranboyut,cozunurluk=@cozunurluk,ram=@ram,islemci=@islemci,fiyat=@fiyat,urlfoto=@urlfoto,urlfoto2=@urlfoto2,urlfoto3=@urlfoto3 where urunid=" + geleid, baglanti);
                komut.Parameters.AddWithValue("@urunadı", txtuad.Text);
                komut.Parameters.AddWithValue("@urunmodel", txtmodel.Text);
                komut.Parameters.AddWithValue("@renk", txtrenk.Text);
                komut.Parameters.AddWithValue("@kapasite", txtkapasite.Text);
                komut.Parameters.AddWithValue("@arkakamera", txtarkak.Text);
                komut.Parameters.AddWithValue("@onkamera", txtonk.Text);
                komut.Parameters.AddWithValue("@ekranboyut", txtekranb.Text);
                komut.Parameters.AddWithValue("@cozunurluk", txtcozunurluk.Text);
                komut.Parameters.AddWithValue("@ram", txtram.Text);
                komut.Parameters.AddWithValue("@islemci", txtislemci.Text);
                komut.Parameters.AddWithValue("@fiyat", txtfiyat.Text);
                komut.Parameters.AddWithValue("@urlfoto", txtryol.Text);
                komut.Parameters.AddWithValue("@urlfoto2", txtryol2.Text);
                komut.Parameters.AddWithValue("@urlfoto3", txtryol3.Text);
                komut.ExecuteNonQuery();
                baglanti.Close();
                Response.Redirect("admin.aspx");
            }
        }
    }
}