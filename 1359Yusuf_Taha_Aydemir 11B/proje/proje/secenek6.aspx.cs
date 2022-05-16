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
    public partial class secenek6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection baglanti2 = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
            baglanti2.Open();
            OleDbDataAdapter adaptor2 = new OleDbDataAdapter("select * from urunler where kategori='1' and fiyat>=10000", baglanti2);
            DataTable dt2 = new DataTable();
            adaptor2.Fill(dt2);
            tekrar.DataSource = dt2;
            tekrar.DataBind();
            baglanti2.Close();
        }
    }
}