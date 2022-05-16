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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                string gelenid2 = Request.QueryString["id"];
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                baglanti.Open();
                OleDbCommand komut = new OleDbCommand("delete from sepet where urunid="+gelenid2, baglanti);
                komut.ExecuteNonQuery();
                baglanti.Close();
                yon.InnerHtml = "<meta http-equiv='refresh' content='2;url=sepet.aspx'>";
           
        }
    }
}