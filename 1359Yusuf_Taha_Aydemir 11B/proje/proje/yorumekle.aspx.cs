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
    public partial class yorumekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                String urunidsi2 = Request.QueryString["id"];
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                baglanti.Open();
                OleDbDataAdapter adap = new OleDbDataAdapter("select * from yorum where urunid="+urunidsi2, baglanti);
                DataTable dt = new DataTable();
                adap.Fill(dt);
                tekrar.DataSource = dt;
                tekrar.DataBind();
                baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                hata.Text = "Yorum eklemek için giriş yapmalısınız.";
                hata.CssClass = "text-danger";
                yon.InnerHtml = "<meta http-equiv='refresh' content='2;url=uyegiris.aspx'>";
            }
            else
            {
                String urunidsi2 = Request.QueryString["id"];
                OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                bag.Open();
                OleDbCommand komut = new OleDbCommand("select * from yorum where uyeid=" + Session["uyeid"] + " and urunid=" + urunidsi2, bag);
                OleDbDataReader okuyucu = komut.ExecuteReader();
                OleDbCommand komut2 = new OleDbCommand("insert into yorum(uyeid,urunid,kullad,yorum) values(@uyeid,@urunid,@kullad,@yorum)", bag);
                komut2.Parameters.AddWithValue("@uyeid", Session["uyeid"]);
                komut2.Parameters.AddWithValue("@urunid", urunidsi2);
                komut2.Parameters.AddWithValue("@kullad", txtkad.Text);
                komut2.Parameters.AddWithValue("@yorum", txtyrm.Text);
                komut2.ExecuteNonQuery();
                hata.Text = "Yorum Başarı İle Eklendi";
                hata.CssClass = "text-danger";
                
                bag.Close();
            }
        }
    }
}