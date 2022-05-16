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
    public partial class ozellik : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            String gelenid = Request.QueryString["id"];
            if (gelenid == null)
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                baglanti.Open();
                OleDbDataAdapter adaptor = new OleDbDataAdapter("select * from urunler where urunid="+gelenid, baglanti);
                DataTable dt = new DataTable();
                adaptor.Fill(dt);
                tekrar.DataSource = dt;
                tekrar.DataBind();
                baglanti.Close();
            }
        }
    }
}