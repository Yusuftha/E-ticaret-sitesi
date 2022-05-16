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
    public partial class yorumsil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                string gelenid = Request.QueryString["id"];
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                baglanti.Open();
                OleDbCommand komut = new OleDbCommand("delete from yorum where yorumid=" + gelenid, baglanti);
                komut.ExecuteNonQuery();
                baglanti.Close();
                yon.InnerHtml = "<meta http-equiv='refresh' content='2;url=yorumlar.aspx'>";
            }
        }
    }
}