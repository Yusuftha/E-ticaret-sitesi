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
    public partial class sepeteekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null || Session["kullaniciad"] == null)
            {
                durum.Text = "Sepete eklemek için giriş yapmalısınız.";
                durum.CssClass = "alert alert-danger";
                yon.InnerHtml = "<meta http-equiv='refresh' content='2;url=uyegiris.aspx'>";
            }
            else
            {
                String urunidsi = Request.QueryString["id"];
                OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                bag.Open();
                OleDbCommand komut = new OleDbCommand("select * from sepet where uyeid=" + Session["uyeid"] + " and urunid=" + urunidsi, bag);
                OleDbDataReader okuyucu = komut.ExecuteReader();
                if (okuyucu.Read())
                {
                    durum.Text = "Bu ürün sepete daha önce eklenmiştir.";
                    durum.CssClass = "alert alert-warning";
                    yon.InnerHtml = "<meta http-equiv='refresh' content='2;url=telefon.aspx'>";
                }
                else
                {
                    OleDbCommand komut2 = new OleDbCommand("insert into sepet values(@uyeid,@urunid)", bag);
                    komut2.Parameters.AddWithValue("@uyeid", Session["uyeid"]);
                    komut2.Parameters.AddWithValue("@urunid", urunidsi);
                    komut2.ExecuteNonQuery();
                    durum.Text = "Ürün sepetinize eklendi";
                    durum.CssClass="alert alert-success";
                    yon.InnerHtml = "<meta http-equiv='refresh' content='2;url=default.aspx'>";
                }
                bag.Close();
            }
            
        }
    }
}