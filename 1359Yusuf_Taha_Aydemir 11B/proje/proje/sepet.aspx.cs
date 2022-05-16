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
    public partial class sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null || Session["kullaniciad"] == null)
            {
                durum2.Text = "Sepete görüntülemek için giriş yapmalısınız.";
                yon.InnerHtml = "<meta http-equiv='refresh' content='2;url=uyegiris.aspx'>";
            }
            else
            {
                OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                bag.Open();
                OleDbCommand komut = new OleDbCommand("select * from sepet where uyeid="+Session["uyeid"],bag);
                OleDbDataReader okuyucu = komut.ExecuteReader();
                DataTable dt = new DataTable();
                while (okuyucu.Read())
                {
                    OleDbDataAdapter adap1 = new OleDbDataAdapter("select * from urunler where urunid=" + okuyucu["urunid"], bag);
                    adap1.Fill(dt);
                    durum.Text ="Toplam fiyat: " + string.Format("{0:c}",dt.Compute("Sum(fiyat)", ""));
                    durum.Font.Bold = true;
                    durum2.Visible = false;
                    
                }
                tekrar.DataSource = dt;
                tekrar.DataBind();
                durum2.Text = "Sepetiniz Boş";
                bag.Close();
            }
        }
    }
}