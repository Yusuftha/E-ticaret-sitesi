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
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
            baglanti.Open();
            OleDbDataAdapter adaptor = new OleDbDataAdapter("select * from urunler where urunid between 1 and 3", baglanti);
            OleDbDataAdapter adaptor2 = new OleDbDataAdapter("select * from urunler where kategori='3' and urunid between 22 and 24", baglanti);
            OleDbDataAdapter adaptor3 = new OleDbDataAdapter("select * from urunler where kategori='2' and urunid between 19 and 22", baglanti);
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            DataTable dt3 = new DataTable();
            adaptor.Fill(dt);
            adaptor2.Fill(dt2);
            adaptor3.Fill(dt3);
            tekrar3.DataSource = dt3;
            tekrar3.DataBind();
            tekrar2.DataSource = dt2;
            tekrar2.DataBind();
            tekrar.DataSource = dt;
            tekrar.DataBind();
            baglanti.Close();
        }
    }
}